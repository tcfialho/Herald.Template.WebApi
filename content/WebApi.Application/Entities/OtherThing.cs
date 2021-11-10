using System;

namespace WebApi.Application.Entities
{
    public class OtherThing
    {
        protected OtherThing()
        {
        }

        public OtherThing(string description)
        {
            Id = Guid.NewGuid();
            Description = description;
        }

        public virtual Guid Id { get; protected set; }
        public virtual string Description { get; protected set; }
    }
}
