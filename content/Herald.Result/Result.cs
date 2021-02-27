using Herald.Result.Status;

namespace Herald.Result
{
    public class Result
    {
        public object Value => ((Sucess<object>)Status).Value;

        public IStatus Status { get; }

        public Result()
        {
        }

        internal Result(IStatus status)
        {
            Status = status;
        }

        public static Result NotFound(string message = default)
        {
            return new Result(new NotFound(message));
        }

        public static Result Fail(string message = default)
        {
            return new Result(new Fail(message));
        }

        public static Result Sucess()
        {
            return new Result(new Sucess<object>(default));
        }

        public static Result Sucess<T>(T data = default)
        {
            return new Result(new Sucess<T>(data));
        }
    }
}
