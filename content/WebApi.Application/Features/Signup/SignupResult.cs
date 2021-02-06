
using WebApi.Application.Features;

namespace WebApi.Application.Signup
{
    public class SignupResult : Result<object>
    {
        public SignupResult(object some) : base(some)
        {
        }
    }
}