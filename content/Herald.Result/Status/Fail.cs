namespace Herald.Result.Status
{
    public class Fail : IStatus
    {
        public string Message { get; }

        public Fail(string message)
        {
            Message = message;
        }
    }
}