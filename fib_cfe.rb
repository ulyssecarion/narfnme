# This program outputs the Fibonacci sequence for as long
# as it can using the closed-form expression of the series.

$_ = $$ / $$ #  1
@_ = $_ + $_ #  2
$- = $_ - @_ # -1
$__= @_ * @_ + $_ # 5
@__= $__ ** (@_ ** $-) # sqrt(5)

$___ = ($_ + @__) / @_ # golden ratio
@___ = ($_ / -$___)    # negative reciprocal

$. = $_ # Initialize counter.

@____ = -> {
  $- = ($___ ** $. - @___ ** $.) / @__  # Reuse for fib number.
  $> << $- - $- % $_<< ('' << @_ * $__) # Output as Float and newline.
  $. += $_ # Increment
  @____[]  # and go again.
}

@____[]
