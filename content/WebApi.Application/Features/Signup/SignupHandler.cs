using System.Threading;
using System.Threading.Tasks;

using Herald.EntityFramework.Persistance;
using Herald.MessageQueue;
using Herald.Result;

using MediatR;

using WebApi.Application.Entities;
using WebApi.Application.Infrastructure.Repositories;
using WebApi.Application.Infrastructure.WebServices;

namespace WebApi.Application.Signup
{
    public class SignupHandler : IRequestHandler<SignupCommand, Result>
    {
        private readonly IMessageQueue _queue;

        public SignupHandler(IMessageQueue queue)
        {
            _queue = queue;
        }

        public async Task<Result> Handle(SignupCommand request, CancellationToken cancellationToken)
        {
            //await _queue.Send(new CreateAccountMessage(request.Account));

            return ResultStatus.Sucess();
        }
    }
}