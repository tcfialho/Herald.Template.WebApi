using System.ComponentModel.DataAnnotations;

using Herald.Result;

using MediatR;

namespace WebApi.Application.Signup
{
    public partial class SignupCommand : IRequest<Result>
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string EMail { get; set; }
        [Required]
        public PostalAddress Address { get; set; }
    }
}