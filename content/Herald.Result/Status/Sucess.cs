namespace Herald.Result.Status
{
    public class Sucess : IStatus
    {
        public string Message { get; }

        public Sucess(string message)
        {
            Message = message;
        }
    }

    public class Sucess<T> : IStatus
    {
        public T Value { get; }

        public Sucess(T value)
        {
            Value = value;
        }
    }
}