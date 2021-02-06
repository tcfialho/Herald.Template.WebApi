using System;

namespace WebApi.Application.Features
{
    /// <summary>
    /// Monad for a potential value that can be returned.
    /// </summary>
    /// <typeparam name="TValue">The value type being returned.</typeparam>
    public class Option<TValue>
    {
        /// <summary>
        /// Contained value.
        /// </summary>
        private readonly TValue _value;

        /// <summary>
        /// If the option actually has a value in it.
        /// </summary>
        private readonly bool _hasValue;

        public Option()
        {
            _value = default(TValue)!;
            _hasValue = false;
        }

        public Option(TValue value)
        {
            _value = value;
            _hasValue = true;
        }

        /// <summary>
        /// Match the option to a handler depending on if it has a value or not.
        /// </summary>
        /// <param name="some">The handler to invoke if there is a value.</param>
        /// <param name="none">The handler to invoke if no value.</param>
        /// <typeparam name="T">The return type.</typeparam>
        /// <returns>The value returned.</returns>
        public T Match<T>(Func<TValue, T> some, Func<T> none)
        {
            return _hasValue ? some(_value) : none();
        }

        /// <summary>
        /// Create a new option.
        /// </summary>
        /// <typeparam name="TVal">The type of value it holds.</typeparam>
        /// <returns>The newly created option.</returns>
        public static Option<TVal> None<TVal>()
        {
            return new Option<TVal>();
        }

        public static implicit operator Option<TValue>(TValue value)
        {
            return new Option<TValue>(value);
        }
    }
}