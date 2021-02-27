namespace Herald.Result.Status
{
    public class Sucess<T> : IStatus
    {
        public T Value { get; }

        public Sucess(T value)
        {
            Value = value;
        }
    }
}