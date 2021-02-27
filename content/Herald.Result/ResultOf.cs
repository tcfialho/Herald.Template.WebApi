using Herald.Result.Status;

namespace Herald.Result
{
    public class ResultOf<T>
    {
        public T Value => ((Sucess<T>)Status).Value;

        public IStatus Status { get; }

        public ResultOf()
        {
        }

        internal ResultOf(IStatus status)
        {
            Status = status;
        }

        public static ResultOf<T> NotFound(string message = default)
        {
            return new ResultOf<T>(new NotFound(message));
        }

        public static ResultOf<T> Fail(string message = default)
        {
            return new ResultOf<T>(new Fail(message));
        }

        public static ResultOf<T> Sucess()
        {
            return new ResultOf<T>(new Sucess<object>(default));
        }

        public static ResultOf<T> Sucess(T data = default)
        {
            return new ResultOf<T>(new Sucess<T>(data));
        }
    }
}
