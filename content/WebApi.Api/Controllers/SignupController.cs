using System.Net;
using System.Threading.Tasks;

using Herald.Result.Status;

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
            var result = await _mediator.Send(command);

            switch (result.Status)
            {
                case NotFound notfound:
                    return NotFound(notfound.Message);
                case Fail fail:
                    return BadRequest(fail.Message);
            }

            return Ok(result.Value);
        }

        [HttpGet()]
        [ProducesResponseType((int)HttpStatusCode.OK)]
        [ProducesResponseType((int)HttpStatusCode.BadRequest)]
        [ProducesResponseType((int)HttpStatusCode.NotFound)]
        public async Task<IActionResult> Get([FromBody] GetAddressByPostalCodeCommand command)
        {
            var result = await _mediator.Send(command);

            switch (result.Status)
            {
                case NotFound notfound:
                    return NotFound(notfound.Message);
                case Fail fail:
                    return BadRequest(fail.Message);
            }

            return Ok(result.Value);
        }
    }
}