namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public class GetFromOtherApiResult
    {
        public string Cep { get; }
        public string State { get; }
        public string City { get; }
        public string Neighborhood { get; }
        public string Street { get; }

        public GetFromOtherApiResult(string cep, string state, string city, string neighborhood, string street)
        {
            Cep = cep;
            State = state;
            City = city;
            Neighborhood = neighborhood;
            Street = street;
        }
    }
}