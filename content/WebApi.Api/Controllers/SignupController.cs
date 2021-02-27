using System.Net;
using System.Threading.Tasks;

using Herald.Result;

using MediatR;

using Microsoft.AspNetCore.Mvc;

using WebApi.Application.Features.GetAddressByPostalCode;
using WebApi.Application.Signup;

namespace WebApi.Api.Controllers
{


    [Route("[controller]")]
    [ApiController]
    public class SignupController : ControllerBase
    {
        private readonly IMediator _mediator;

        public SignupController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpPost()]
        [ProducesResponseType((int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        public async Task<IActionResult> Post([FromBody] SignupCommand command)
        {
            return await _mediator.Send(command).ToActionResult();
        }


        [HttpGet()]
        [ProducesResponseType(typeof(GetAddressByPostalCodeResult), (int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        [ProducesResponseType((int)HttpStatusCode.NotFound)]
        public async Task<IActionResult> Get([FromQuery] GetAddressByPostalCodeCommand command)
        {
            return await _mediator.Send(command).ToActionResult();
        }
    }
}