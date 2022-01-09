using System;
using System.ComponentModel.DataAnnotations;

using Herald.Result;

using MediatR;

namespace WebApi.Application.PutIntoQueue
{
    public partial class SendToQueueCommand : IRequest<Result>
    {
        [Required]
        public Guid Id { get; protected set; }

        [Required]
        public string Description { get; set; }
    }
}