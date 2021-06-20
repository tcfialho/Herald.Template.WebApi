using System.Threading.Tasks;

using Microsoft.AspNetCore.Mvc;

namespace Herald.Result
{
    public static class HeraldToActionResultExtensions
    {
        public static async Task<IActionResult> ToActionResult(this Task<Result> taskResult)
        {
            var result = await taskResult;

            switch (result)
            {
                case NotFound notfound:
                    return new NotFoundObjectResult(notfound.Message);
                case Fail fail:
                    return new BadRequestObjectResult(fail.Message);
                case Sucess sucess when !sucess.HasValue():
                    return new OkResult();
            }

            return new OkObjectResult(result.GetValue());
        }

        public static async Task<IActionResult> ToActionResult<T>(this Task<Result<T>> taskResult) where T : class
        {
            var result = await taskResult;

            switch (result)
            {
                case NotFound notfound:
                    return new NotFoundObjectResult(notfound.Message);
                case Fail fail:
                    return new BadRequestObjectResult(fail.Message);
                case Sucess<T> sucess when !sucess.HasValue():
                    return new OkResult();
            }

            return new OkObjectResult(result.GetValue());
        }
    }
}
