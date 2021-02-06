namespace WebApi.Application.Infrastructure.WebServices
{
    public class CepRequest
    {
        public string Cep { get; set; }

        public CepRequest(string cep)
        {
            Cep = cep;
        }
    }
}
