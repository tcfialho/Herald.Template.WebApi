using System.ComponentModel.DataAnnotations;

using Herald.Result;

using MediatR;

namespace WebApi.Application.Login
{
    public partial class LoginCommand : IRequest<Result>
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string EMail { get; set; }
        [Required]
        public LoginAddress Address { get; set; }
    }
}