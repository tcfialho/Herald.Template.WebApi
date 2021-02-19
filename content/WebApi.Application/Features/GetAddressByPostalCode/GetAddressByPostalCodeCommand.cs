using System.ComponentModel.DataAnnotations;

using Herald.Result;

using MediatR;

namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public partial class GetAddressByPostalCodeCommand : IRequest<Result<GetAddressByPostalCodeResult>>
    {
        [Required]
        public string PostalCode { get; set; }
    }
}
