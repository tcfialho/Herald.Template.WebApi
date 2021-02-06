using System.Net;
using System.Threading.Tasks;

using MediatR;

using Microsoft.AspNetCore.Mvc;

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

            if (result.HasMessages())
            {
                return BadRequest(result.GetMessages());
            }

            return Ok();
        }
    }
}