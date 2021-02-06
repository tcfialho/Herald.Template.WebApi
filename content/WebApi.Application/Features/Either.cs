using System;

namespace WebApi.Application.Features
{
    /// <summary>
    /// Either monad for working with two different values.
    /// </summary>
    /// <typeparam name="TL">The left side type.</typeparam>
    /// <typeparam name="TR">The right side type</typeparam>
    public class Either<TL, TR>
    {
        /// <summary>
        /// Value on the left.
        /// </summary>
        private readonly TL _left;

        /// <summary>
        /// Value on the right.
        /// </summary>
        private readonly TR _right;

        /// <summary>
        /// If the either holds a left value.
        /// </summary>
        private readonly bool _isLeft;

        /// <summary>
        /// Create a new left either.
        /// </summary>
        /// <param name="left">The left value.</param>
        public Either(TL left)
        {
            _left = left;
            _isLeft = true;
            _right = default!;
        }

        /// <summary>
        /// Create a new right either.
        /// </summary>
        /// <param name="right">The right value.</param>
        public Either(TR right)
        {
            _right = right;
            _isLeft = false;
            _left = default!;
        }

        /// <summary>
        /// Pattern match the stored value of the either.
        /// </summary>
        /// <param name="left">Handler for the left.</param>
        /// <param name="right">Handler for the right.</param>
        /// <typeparam name="T">Return value type.</typeparam>
        public T Match<T>(Func<TL, T> left, Func<TR, T> right)
        {
            return _isLeft ? left(_left) : right(_right);
        }

        public TL Left()
        {
            return _isLeft ? _left : throw new InvalidOperationException();
        }

        public TR Right()
        {
            return !_isLeft ? _right : throw new InvalidOperationException();
        }

        public static implicit operator Either<TL, TR>(TL left)
        {
            return new Either<TL, TR>(left);
        }

        public static implicit operator Either<TL, TR>(TR right)
        {
            return new Either<TL, TR>(right);
        }
    }
}