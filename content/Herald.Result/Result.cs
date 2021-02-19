using Herald.Result.Status;

namespace Herald.Result
{
    public class Result<T> : IResult<T>
    {
        public T Value => ((Sucess<T>)Status).Value;

        public IStatus Status { get; }

        public Result()
        {
        }

        internal Result(IStatus status)
        {
            Status = status;
        }

        public static implicit operator Result<T>(Result result)
        {
            return new Result<T>(result.Status);
        }

        public static Result NotFound(string message = default)
        {
            return new Result(new NotFound(message));
        }

        public static Result Fail(string message = default)
        {
            return new Result(new Fail(message));
        }

        public static Result Sucess(string message = default)
        {
            return new Result(new Sucess(message));
        }

        public static Result<T> Sucess(T data = default)
        {
            return new Result<T>(new Sucess<T>(data));
        }
    }

    public class Result : IResult
    {
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

        public static Result Sucess(string message = default)
        {
            return new Result(new Sucess(message));
        }

        public static Result<T> Sucess<T>(T data = default)
        {
            return new Result<T>(new Sucess<T>(data));
        }
    }
}
