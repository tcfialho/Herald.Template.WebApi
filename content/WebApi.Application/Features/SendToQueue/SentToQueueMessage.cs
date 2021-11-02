using System;

using Herald.MessageQueue;

namespace WebApi.Application.PutIntoQueue
{
    public class SentToQueueMessage : MessageBase
    {
        public Guid Id { get; set; }
        public string Description { get; set; }
    }
}
