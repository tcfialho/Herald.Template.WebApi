using System.ComponentModel.DataAnnotations;

using MediatR;

using WebApi.Application.Features;

namespace WebApi.Application.Signup
{
    public partial class SignupCommand : IRequest<Result<object>>
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string EMail { get; set; }
        [Required]
        public PostalAddress Address { get; set; }
    }
}