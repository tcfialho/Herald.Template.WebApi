using System;
using System.Threading.Tasks;

namespace WebApi.Application.Features
{
    public static class Result
    {
        public static Result<object> Sucess()
        {
            return new Result<object>(default);
        }

        public static Result<object> Fail(string failureMessage)
        {
            return new Result<object>(new Error(failureMessage));
        }

        public static Result<T> Sucess<T>(T some)
        {
            return new Result<T>(some);
        }

        public static Result<T> Fail<T>(string failureMessage)
        {
            return new Result<T>(new Error(failureMessage));
        }
    }

    public class Result<TSome>
    {
        public string GetMessages()
        {
            return _failureMessage?.Message;
        }

        public bool HasMessages()
        {
            return _failureMessage?.Message != null;
        }

        private readonly Error _failureMessage;

        private readonly Either<Error, Option<TSome>> _either;

        public T Match<T>(Func<TSome, T> some, Func<T> none, Func<Error, T> fail)
        {
            return _either.Match(
                left: x => fail(x),
                right: x => x.Match(
                some: x => some(x),
                none: () => none()
                )
            );
        }

        public Result(TSome some)
        {
            if (some == null)
            {
                _either = new Either<Error, Option<TSome>>(new Option<TSome>());
            }
            else
            {
                _either = new Either<Error, Option<TSome>>(some);
            }
        }

        public Result(Error error)
        {
            _failureMessage = error;
            _either = new Either<Error, Option<TSome>>(error);
        }

        public static Result<TSome> Sucess(TSome some)
        {
            return new Result<TSome>(some);
        }

        public static Result<TSome> Fail(string failureMessage)
        {
            return new Result<TSome>(new Error(failureMessage));
        }

        public static implicit operator Task<Result<TSome>>(Result<TSome> result)
        {
            return Task.FromResult(result);
        }
    }
}
