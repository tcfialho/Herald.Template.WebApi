using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;
using Herald.Result.Mvc;

using MediatR;

using Microsoft.AspNetCore.Mvc;

#if (postgre || mysql || sqlserver)
using WebApi.Application.Entities;
using WebApi.Application.Features.GetFromDataBase;
#endif
#if (sqs || kafka || rabbitmq || azure)
using WebApi.Application.Features.SendToQueue;
#endif
#if (!noexternalapi)
using WebApi.Application.Features.GetAddressByPostalCode;
#endif

namespace WebApi.Api.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class WebApiController : ControllerBase
    {
        private readonly IMediator _mediator;

        public WebApiController(IMediator mediator)
        {
            _mediator = mediator;
        }

#if (postgre || mysql || sqlserver)
        [HttpGet()]
        [ProducesResponseType(typeof(IEnumerable<Something>), (int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        [ProducesResponseType((int)HttpStatusCode.NotFound)]
        public async Task<IActionResult> GetFromDataBase()
            => await _mediator.Send(new GetFromDataBaseCommand()).ToActionResult();

#endif
#if (sqs || kafka || rabbitmq || azure)
        [HttpPost()]
        [ProducesResponseType((int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        public async Task<IActionResult> SendToQueue([FromBody] SendToQueueCommand command) 
            => await _mediator.Send(command).ToActionResult();

#endif
#if (!noexternalapi)
        [HttpGet("{PostalCode}")]
        [ProducesResponseType(typeof(GetFromExternalApiResult), (int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        [ProducesResponseType((int)HttpStatusCode.NotFound)]
        public async Task<IActionResult> GetFromExternalApi([FromRoute] GetFromExternalApiCommand command) 
            => await _mediator.Send(command).ToActionResult();

#endif
    }
}