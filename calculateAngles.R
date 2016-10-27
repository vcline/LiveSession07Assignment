#Author:        Vishi CLine
#Date Created:  10/26/2016
#Description:   Calculates the angles of the right triangle in degrees.  
                

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
  angles=data.frame(degrees=c(degrees,180-(90+degrees),90))
  
  #return the dataframe
  angles
}