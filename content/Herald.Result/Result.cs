namespace Herald.Result
{
    public enum Status
    {
        Sucess,
        Fail,
        NotFound
    }

    public class Result<T> where T : class
    {
        public virtual Status Status { get; }

        protected T _value;

        public T GetValue()
        {
            return _value;
        }

        public bool HasValue()
        {
            return _value != default(T);
        }

        public static implicit operator Result<T>(Result o)
        {
            return new Result<T>();
        }
    }

    public class Result : Result<object>
    {

    }

    public class Sucess<T> : Result<T> where T : class
    {
        public override Status Status { get; } = Status.Sucess;

        public T Value => (T)_value;

        public Sucess(T data)
        {
            _value = data;
        }
    }

    public class Sucess : Result
    {
        public override Status Status { get; } = Status.Sucess;

        public object Value => _value;

        public Sucess(object data)
        {
            _value = data;
        }
    }

    public class Fail : Result
    {
        public override Status Status { get; } = Status.Fail;

        public string Message => (string)_value;

        public Fail(string message)
        {
            _value = message;
        }
    }

    public class NotFound : Result
    {
        public override Status Status { get; } = Status.NotFound;

        public string Message => (string)_value;

        public NotFound(string message)
        {
            _value = message;
        }
    }

    public class ResultStatus
    {
        public static Result NotFound(string message = default)
        {
            return new NotFound(message);
        }

        public static Result Fail(string message = default)
        {
            return new Fail(message);
        }

        public static Result Sucess()
        {
            return new Sucess(null);
        }

        public static Result<T> Sucess<T>(T data = default) where T : class
        {
            return new Sucess<T>(data);
        }
    }
}
