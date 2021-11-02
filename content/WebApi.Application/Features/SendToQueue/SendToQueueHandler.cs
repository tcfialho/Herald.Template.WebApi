using System.Threading;
using System.Threading.Tasks;

using Herald.MessageQueue;
using Herald.Result;

using Mapster;

using MediatR;

using WebApi.Application.Entities;

namespace WebApi.Application.PutIntoQueue
{
    public class SendToQueueHandler : IRequestHandler<SendToQueueCommand, Result>
    {
        private readonly IMessageQueue _queue;

        public SendToQueueHandler(IMessageQueue queue)
        {
            _queue = queue;
        }

        public async Task<Result> Handle(SendToQueueCommand request, CancellationToken cancellationToken)
        {
            await _queue.Send(request.Adapt<SentToQueueMessage>());

            return ResultStatus.Sucess();
        }
    }
}