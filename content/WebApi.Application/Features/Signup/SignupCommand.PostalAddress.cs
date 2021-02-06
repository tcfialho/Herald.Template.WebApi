using System.ComponentModel.DataAnnotations;

namespace WebApi.Application.Signup
{
    public partial class SignupCommand
    {
        public class PostalAddress
        {
            [Required]
            public string StreetName { get; set; }
            [Required]
            public string Number { get; set; }
            public string Complement { get; set; }
            [Required]
            public string Neighborhood { get; set; }
            [Required]
            public string City { get; set; }
            [Required]
            public string StateCode { get; set; }
            [Required]
            public string PostalCode { get; set; }
            [Required]
            public string CountryName { get; set; }
        }
    }
}