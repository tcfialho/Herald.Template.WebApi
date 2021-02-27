using System.Threading;
using System.Threading.Tasks;

using Herald.Result;

using Mapster;

using MediatR;

using WebApi.Application.Infrastructure.WebServices;

namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public class GetAddressByPostalCodeHandler : IRequestHandler<GetAddressByPostalCodeCommand, ResultOf<GetAddressByPostalCodeResult>>
    {
        private readonly ICepService _cepService;

        public GetAddressByPostalCodeHandler(ICepService cepService)
        {
            _cepService = cepService;
        }

        public async Task<ResultOf<GetAddressByPostalCodeResult>> Handle(GetAddressByPostalCodeCommand request, CancellationToken cancellationToken)
        {
            var cepResponse = await _cepService.GetAddressByCep(new CepRequest(request.PostalCode));

            var result = cepResponse.Adapt<GetAddressByPostalCodeResult>();

            return Result.Sucess(result);
        }
    }
}