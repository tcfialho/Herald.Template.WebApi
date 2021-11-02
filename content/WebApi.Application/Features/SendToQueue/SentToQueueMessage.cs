using System;
using System.Collections.Generic;
using System.Text;

using Herald.MessageQueue;

using WebApi.Application.Entities;

namespace WebApi.Application.PutIntoQueue
{
    public class SentToQueueMessage : MessageBase
    {
        public Guid Id { get; set; }
        public string Description { get; set; }
    }
}
