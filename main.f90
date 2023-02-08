program EulerMethod
implicit none
real, external::f
real::x,y,h,xg
integer::n,i
    print*, "Please insert the inital condition of x ie x0"
    read*, x
    Print*, "Please insert the inital condition of y ie y0"
    read*,y
    print*,"Please insert the width of the x (ie interval) or value of h"
    read*, h
    print*, "Please insert the value of x at which solution is to be found"
    read*, xg
    n =int((xg-x)/h+0.5)
    do i=1, n
    x=x+h
    y=y+h*f(x,y)
    print*,"The value of and it's corresponding y is ",x,y
end do
    !print*,"The value of and it's corresponding y is ",x,y
end

real function f(x)
    real::x,y
    f=x+2*y
end
