using System;

namespace WebApi.Application.Entities
{
    public class User
    {
        protected User()
        {
        }

        public User(string name, string eMail, string passwordHash, PostalAddress postalAddress)
        {
            Id = Guid.NewGuid();
            Name = name;
            EMail = eMail;
            PasswordHash = passwordHash;
            PostalAddress = postalAddress;
        }

        public Guid Id { get; protected set; }
        public string Name { get; protected set; }
        public string EMail { get; protected set; }
        public string PasswordHash { get; protected set; }
        public virtual PostalAddress PostalAddress { get; protected set; }
    }
}
