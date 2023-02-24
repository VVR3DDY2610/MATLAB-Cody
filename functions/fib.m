function f = fib(n)

  f(1) = 1;  % We have to prime our code with the first two values of fib

  f(2) = 1;  % as we start the loop at f(3) = f(1) + f(2), not really cheating

             % and it makes f true for values of n=1 or 2 (robustness).

    for i = 2 : n-1

      f(i+1) = f(i-1) + f(i);  % For optimization sake, we should have prelocated

                               % f with f = zeros(n). For our sake, we care

                               % about size and not about speed so I

                               % didn't. We save each value of the fib to

                               % an indexed value within f to not only

                               % calculate the next number but to speed it

                               % up as well (eliminates repeat calculation)

    end

    f = f(n);

end
