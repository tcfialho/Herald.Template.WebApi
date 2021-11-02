using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

using Herald.EntityFramework.Persistance;
using Herald.Result;

using Mapster;

using MediatR;

using WebApi.Application.Entities;
using WebApi.Application.Infrastructure.Repositories;
using WebApi.Application.Infrastructure.WebServices;

namespace WebApi.Application.Login
{
    public class GetFromDataBaseHandler : IRequestHandler<GetFromDataBaseCommand, Result<IList<Something>>>
    {
        private readonly IUnitOfWork _uow;
        private readonly ISomethingRepository _somethingRepository;

        public GetFromDataBaseHandler(IUnitOfWork uow, ISomethingRepository somethingRepository)
        {
            _uow = uow;
            _somethingRepository = somethingRepository;
        }

        public async Task<Result<IList<Something>>> Handle(GetFromDataBaseCommand request, CancellationToken cancellationToken)
        {
            var somethings = await _somethingRepository.GetAll();

            return ResultStatus.Sucess(somethings);
        }
    }
}