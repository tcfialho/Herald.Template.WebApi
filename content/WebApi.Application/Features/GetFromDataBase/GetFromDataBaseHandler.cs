using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

using Herald.EntityFramework.Persistance;
using Herald.Result;

using MediatR;

using WebApi.Application.Entities;
using WebApi.Application.Infrastructure.Repositories;

namespace WebApi.Application.Login
{
    public class GetFromDataBaseHandler : IRequestHandler<GetFromDataBaseCommand, Result<IList<Something>>>
    {
        private readonly IUnitOfWork _uow;
        private readonly ISomethingRepository _somethingRepository;
        private readonly IOtherThingRepository _otherThingRepository;

        public GetFromDataBaseHandler(IUnitOfWork uow, ISomethingRepository somethingRepository, IOtherThingRepository otherThingRepository)
        {
            _uow = uow;
            _somethingRepository = somethingRepository;
            _otherThingRepository = otherThingRepository;
        }

        public async Task<Result<IList<Something>>> Handle(GetFromDataBaseCommand request, CancellationToken cancellationToken)
        {
            //var sss = await _somethingRepository.GetAll();
            //foreach (var item in sss)
            //{
            //    _somethingRepository.Delete(item);
            //}
            //await _somethingRepository.Insert(new Something("AAAA", new OtherThing("1111")));
            //await _somethingRepository.Insert(new Something("BBBB", new OtherThing("2222")));
            //await _uow.Commit();
            var somethings = await _somethingRepository.GetAll();

            return ResultStatus.Sucess(somethings);
        }
    }
}