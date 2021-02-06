using System;

namespace WebApi.Application.Entities
{
    public class PostalAddress
    {
        protected PostalAddress()
        {
        }

        public PostalAddress(string postalCode, string countryName, string number, string complement, string stateCode, string city, string neighborhood, string streetName)
        {
            Id = Guid.NewGuid();
            StreetName = streetName;
            Number = number;
            Complement = complement;
            Neighborhood = neighborhood;
            City = city;
            StateCode = stateCode;
            PostalCode = postalCode;
            CountryName = countryName;
        }

        public Guid Id { get; protected set; }
        public string StreetName { get; protected set; }
        public string Number { get; protected set; }
        public string Complement { get; protected set; }
        public string Neighborhood { get; protected set; }
        public string City { get; protected set; }
        public string StateCode { get; protected set; }
        public string PostalCode { get; protected set; }
        public string CountryName { get; protected set; }
    }
}
