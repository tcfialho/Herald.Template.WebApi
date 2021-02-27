using System.ComponentModel.DataAnnotations;

using Herald.Result;

using MediatR;

namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public partial class GetAddressByPostalCodeCommand : IRequest<ResultOf<GetAddressByPostalCodeResult>>
    {
        [Required]
        public string PostalCode { get; set; }
    }
}
