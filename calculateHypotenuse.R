#Author:        Vishi CLine
#Date Created:  10/26/2016
#Description:   The following function, calculateHypotenuse, computes the hypotenuse of a 
#                right-angle triangle, given the other two sides.  In order to do this, we used 
#                the pythagorean theorem.  
#                The formula to calculate hypotenuse is: h=sqrt(side1^2+side2^2)

calculateHypotenuse<-function(side1, side2)
                    {
                      hypotenuse=sqrt((side1^2)+(side2^2))
                      round(hypotenuse,digits=1)
                    }