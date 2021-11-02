﻿using System;

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

        public Guid Id { get; protected set; }
        public string Description { get; protected set; }
    }
}
