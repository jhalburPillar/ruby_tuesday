# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#


def check_equilateral?(a,b,c)
  a == b && b == c && a == c
end

def check_isosceles?(a,b,c)
  (a == b || a == c) || (b == c || b == a)
end

def check_scalene?(a, b, c)
  a != b && b != c && a != c
end

def triangle(a, b, c)
  # WRITE THIS CODE

  sides = [a,b,c].sort
  c = sides.pop
  b = sides.pop
  a = sides.pop

  if (a < 1 || b < 1 || c < 1) || (a + b <= c)
    raise TriangleError
  end

  if (check_equilateral?(a,b,c))
    return :equilateral
  elsif (check_isosceles?(a,b,c))
    return :isosceles
  elsif (check_scalene?(a,b,c))
    return :scalene
  else
    raise TriangleError
  end
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
