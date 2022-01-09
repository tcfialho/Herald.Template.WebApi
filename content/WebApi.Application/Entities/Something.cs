using System;

namespace WebApi.Application.Entities
{
    public class Something
    {
        protected Something()
        {
        }

        public Something(string description, OtherThing otherThing)
        {
            Id = Guid.NewGuid();
            Description = description;
            OtherThing = otherThing;
        }

        public virtual Guid Id { get; protected set; }
        public virtual string Description { get; protected set; }
        public virtual OtherThing OtherThing { get; protected set; }
    }
}
