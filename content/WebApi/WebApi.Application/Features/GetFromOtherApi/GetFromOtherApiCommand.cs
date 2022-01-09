using System.ComponentModel.DataAnnotations;

using Herald.Result;

using MediatR;

namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public partial class GetFromOtherApiCommand : IRequest<Result<GetFromOtherApiResult>>
    {
        [Required]
        public string PostalCode { get; set; }
    }
}
