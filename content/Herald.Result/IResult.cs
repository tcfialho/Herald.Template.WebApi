namespace Herald.Result
{
    public interface IResult
    {
        IStatus Status { get; }
    }

    public interface IResult<T> : IResult
    {
        T Value { get; }
    }
}
