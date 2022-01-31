using System.Collections.Generic;

using Herald.Result;

using MediatR;

using WebApi.Application.Entities;

namespace WebApi.Application.Features.GetFromDataBase
{
    public partial class GetFromDataBaseCommand : IRequest<Result<IList<Something>>>
    {
    }
}