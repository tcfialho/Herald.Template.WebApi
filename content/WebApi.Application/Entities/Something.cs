using System;

namespace WebApi.Application.Entities
{
    public class Something
    {
        protected Something()
        {
        }

        public Something(string description, OtherThing postalAddress)
        {
            Id = Guid.NewGuid();
            Description = description;
        }

        public Guid Id { get; protected set; }
        public string Description { get; protected set; }
        public virtual OtherThing OtherThing { get; protected set; }
    }
}
