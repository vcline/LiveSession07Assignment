#Author:        Vishi CLine
#Date Created:  10/26/2016

#############################################################################################
#Function:      calculateHypotenuse
#Description:   The following function, calculateHypotenuse, computes the hypotenuse of a 
#               right-angle triangle, given the other two sides.  In order to do this, we used 
#               the pythagorean theorem.  
#               The formula to calculate hypotenuse is: h=sqrt(side1^2+side2^2)
#############################################################################################

  calculateHypotenuse<-function(side1, side2)
  {
    hypotenuse=sqrt((side1^2)+(side2^2))
    round(hypotenuse,digits=1)
  }

  
#############################################################################################
#Function:      calculateAngles
#Description:   Calculates the angles of the right triangle in degrees.
#               The asin (inverse sine) function is used to retrieve the angle based on the 
#               oppositeside/hypotenuse ratio.
#               However, since this function in R returns the result in radians, we have to 
#               convert it to degrees using (radians*(180/pi)).
#############################################################################################
  
  calculateAngles<-function(side1, side2)
  {
    #Calculate the hypotenuse based on the adjacent and opposite sides parameters.
    hypotenuse=calculateHypotenuse(side1,side2)
    
    #figure out the opposite side of the 2 sides passed in.  It should be the shorter side.
    oppositeSide<-if (side1>side2) {side2} else {side1}
    
    #the ratio of oppositeSide and hypotenuse
    x<-(oppositeSide/hypotenuse)
    
    #inverse sine calculates the angle for opposite/hypotenuse ratio, result is in radians
    radians<-asin(x)
    
    #convert radians to degrees
    degrees<-round((radians*(180/pi)),digits=1)
    
    #calculate the three angles and store in a dataframe
    #Since we are working with a right triangle, the right triangle is 90 degrees.
    #Using the asin function we calculated the angle opposite to opposite/hypotenuse (degrees)
    #The third side is calculated by subtracting the sum of the other two sides (90+degrees) 
    #from 180, since all sides of triangle must add up to 180 degrees.
    angles=data.frame(degrees=c(degrees,180-(90+degrees),90))
    
    #return the dataframe
    angles
  }

#############################################################################################
  #Description:   Sample calls to the functions to calculate the hypotenuse and angles.
#############################################################################################
  
calculateHypotenuse(3,4)
calculateAngles(3,4)

calculateHypotenuse(1,1)
calculateAngles(1,1)

calculateHypotenuse(12,4)
calculateAngles(12,4)


