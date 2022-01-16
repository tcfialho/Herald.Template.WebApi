using System;
using System.ComponentModel.DataAnnotations;

using Herald.MessageQueue;

namespace WebApi.Application.Features.SendToQueue
{
    public class SendToQueueMessage : MessageBase
    {
        public SendToQueueMessage()
        {
            Id = Guid.NewGuid();
        }

        public Guid Id { get; }
        public string Description { get; set; }
    }
}
