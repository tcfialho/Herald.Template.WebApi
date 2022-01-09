using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

using Herald.Result;
using MediatR;

using WebApi.Application.Entities;

namespace WebApi.Application.Features.GetFromDataBase
{
    public partial class GetFromDataBaseCommand : IRequest<Result<IList<Something>>>
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string EMail { get; set; }
        [Required]
        public LoginAddress Address { get; set; }
    }
}