using System.Threading;
using System.Threading.Tasks;

using Herald.Result;

using Mapster;

using MediatR;

using WebApi.Application.Infrastructure.WebServices;

namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public class GetFromOtherApiHandler : IRequestHandler<GetFromOtherApiCommand, Result<GetFromOtherApiResult>>
    {
        private readonly ICepService _cepService;

        public GetFromOtherApiHandler(ICepService cepService)
        {
            _cepService = cepService;
        }

        public async Task<Result<GetFromOtherApiResult>> Handle(GetFromOtherApiCommand request, CancellationToken cancellationToken)
        {
            var cepResponse = await _cepService.GetAddressByCep(new CepRequest(request.PostalCode));

            var result = cepResponse.Adapt<GetFromOtherApiResult>();

            return ResultStatus.Sucess(result);
        }
    }
}