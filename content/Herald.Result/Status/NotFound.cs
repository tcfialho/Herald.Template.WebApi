namespace Herald.Result.Status
{
    public class NotFound : IStatus
    {
        public string Message { get; }

        public NotFound(string message)
        {
            Message = message;
        }
    }
}