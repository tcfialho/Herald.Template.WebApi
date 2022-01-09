using System.Threading;
using System.Threading.Tasks;

using Herald.Result;

using Mapster;

using MediatR;

using WebApi.Application.Infrastructure.WebServices;

namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public class GetFromExternalApiHandler : IRequestHandler<GetFromExternalApiCommand, Result<GetFromExternalApiResult>>
    {
        private readonly ICepService _cepService;

        public GetFromExternalApiHandler(ICepService cepService)
        {
            _cepService = cepService;
        }

        public async Task<Result<GetFromExternalApiResult>> Handle(GetFromExternalApiCommand request, CancellationToken cancellationToken)
        {
            var cepResponse = await _cepService.GetAddressByCep(new CepRequest(request.PostalCode));

            var result = cepResponse.Adapt<GetFromExternalApiResult>();

            return ResultStatus.Sucess(result);
        }
    }
}