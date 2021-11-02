using System.Collections.Generic;
using System.Net;
using System.Threading.Tasks;

using Herald.Result.Mvc;

using MediatR;

using Microsoft.AspNetCore.Mvc;

using WebApi.Application.Entities;
using WebApi.Application.Features.GetAddressByPostalCode;
using WebApi.Application.Login;
using WebApi.Application.PutIntoQueue;

namespace WebApi.Api.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ExampleController : ControllerBase
    {
        private readonly IMediator _mediator;

        public ExampleController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpPost()]
        [ProducesResponseType((int)HttpStatusCode.Created)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        public async Task<IActionResult> Post([FromBody] SendToQueueCommand command) 
            => await _mediator.Send(command).ToActionResult();

        [HttpGet("{PostalCode}")]
        [ProducesResponseType(typeof(GetFromOtherApiResult), (int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        [ProducesResponseType((int)HttpStatusCode.NotFound)]
        public async Task<IActionResult> Get([FromRoute] GetFromOtherApiCommand command) 
            => await _mediator.Send(command).ToActionResult();

        [HttpGet()]
        [ProducesResponseType(typeof(IEnumerable<Something>), (int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        [ProducesResponseType((int)HttpStatusCode.NotFound)]
        public async Task<IActionResult> Get()
            => await _mediator.Send(new GetFromDataBaseCommand()).ToActionResult();
    }
}