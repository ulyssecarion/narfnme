$_ = @_ = $$ / $$   #  a, b = 1, 1
$__ = $-_ = $_ - $_ #  0, 0
@__ = $_ + $_       #  2
$. = $_ + $_ + $_   #  3 for 10
@___ = @__ + @__    #  4 for 4e6
$. *= $.; $. += $_  # 10 for newline and 4e6

$___ = $. ** (@___ + @__) * @___ # 4e6

$- = -> {
  $_ += @_ # Add b to a.
  $__ += $_ % @__ == $-_ ? $_ : $-_
  @_ += $_ # Add a to b.
  $__ += @_ % @__ == $-_ ? @_ : $-_
  @_ < $___ ? $-[] : $_ # Repeat while < 4e6.
}

$-[] # Kick it off.
$> << $__ << ('' << $.) # Print.
