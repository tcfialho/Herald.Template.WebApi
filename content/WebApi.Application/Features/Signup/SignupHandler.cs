using System.Threading;
using System.Threading.Tasks;

using Herald.EntityFramework.Persistance;
using Herald.Result;

using MediatR;

using WebApi.Application.Entities;
using WebApi.Application.Infrastructure.Repositories;
using WebApi.Application.Infrastructure.WebServices;

namespace WebApi.Application.Signup
{
    public class SignupHandler : IRequestHandler<SignupCommand, Result>
    {
        private readonly IUnitOfWork _uow;
        private readonly ICepService _cepService;
        private readonly IUserRepository _userRepository;

        public SignupHandler(IUnitOfWork uow, ICepService cepService, IUserRepository userRepository)
        {
            _uow = uow;
            _cepService = cepService;
            _userRepository = userRepository;
        }

        public async Task<Result> Handle(SignupCommand request, CancellationToken cancellationToken)
        {
            var cepResponse = await _cepService.GetAddressByCep(new CepRequest(request.Address.PostalCode));

            var postalAddress = new PostalAddress(request.Address.PostalCode,
                request.Address.CountryName,
                request.Address.Number,
                request.Address.Complement,
                request.Address.StateCode,
                request.Address.City,
                request.Address.Neighborhood,
                request.Address.StreetName);

            var user = new User(request.Name, request.EMail, "", postalAddress);

            await _userRepository.Insert(user);

            await _uow.Commit();

            return ResultStatus.Sucess();
        }
    }
}