using System;

namespace WebApi.Domain.Entities
{
    public class User
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string EMail { get; set; }
        public string PasswordHash { get; set; }
        public PostalAddress PostalAddress { get; set; }
    }
}
