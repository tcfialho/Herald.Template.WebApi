namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public class GetFromExternalApiResult
    {
        public string Cep { get; }
        public string State { get; }
        public string City { get; }
        public string Neighborhood { get; }
        public string Street { get; }

        public GetFromExternalApiResult(string cep, string state, string city, string neighborhood, string street)
        {
            Cep = cep;
            State = state;
            City = city;
            Neighborhood = neighborhood;
            Street = street;
        }
    }
}