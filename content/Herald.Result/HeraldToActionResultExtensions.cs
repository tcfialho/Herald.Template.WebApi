using System.Threading.Tasks;

using Herald.Result.Status;

using Microsoft.AspNetCore.Mvc;

namespace Herald.Result
{
    public static class HeraldToActionResultExtensions
    {
        public static async Task<IActionResult> ToActionResult(this Task<Result> taskResult)
        {
            var result = await taskResult;

            switch (result.Status)
            {
                case NotFound notfound:
                    return new NotFoundObjectResult(notfound.Message);
                case Fail fail:
                    return new BadRequestObjectResult(fail.Message);
            }

            if (result.Value == null)
            {
                return new OkResult();
            }

            return new OkObjectResult(result.Value);
        }

        public static async Task<IActionResult> ToActionResult<T>(this Task<ResultOf<T>> taskResult)
        {
            var result = await taskResult;

            switch (result.Status)
            {
                case NotFound notfound:
                    return new NotFoundObjectResult(notfound.Message);
                case Fail fail:
                    return new BadRequestObjectResult(fail.Message);
            }

            if (result.Value == null)
            {
                return new OkResult();
            }

            return new OkObjectResult(result.Value);
        }
    }
}
