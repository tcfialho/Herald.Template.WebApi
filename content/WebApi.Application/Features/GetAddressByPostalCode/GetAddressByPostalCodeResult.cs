namespace WebApi.Application.Features.GetAddressByPostalCode
{
    public class GetAddressByPostalCodeResult
    {
        public string Cep { get; }
        public string State { get; }
        public string City { get; }
        public string Neighborhood { get; }
        public string Street { get; }

        public GetAddressByPostalCodeResult(string cep, string state, string city, string neighborhood, string street)
        {
            Cep = cep;
            State = state;
            City = city;
            Neighborhood = neighborhood;
            Street = street;
        }
    }
}