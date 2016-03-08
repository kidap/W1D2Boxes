//
//  Box.m
//  W1D2Boxes
//
//  Created by Karlo Pagtakhan on 03/08/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Box.h"

@implementation Box


//Initialize properties
- (id) init:(float) length width:(float)width height:(float) height{

  self.length = length;
  self.width = width;
  self.height = height;

  return self;
}

// Get the volume of the Box
-(float) calculateVolume{
  return self.length * self.width * self.height;
}


//Get how many boxes can fit in the Box instance
- (float) canFitHowManyofThisBox:(Box *) newBox{
  
  int tmpLength = 0;
  int tmpWidth = 0;
  int tmpHeight = 0;
  
  //Compare the length, width and height to know how many of the smaller boxes would fit based on the dimensions
  tmpLength = self.length / newBox.length;
  tmpWidth = self.width / newBox.width;
  tmpHeight = self.height / newBox.height;
  
  // Return the smallest number of boxes between the 3
  return [self getSmallestNumberWithLength:tmpLength forWidth:tmpWidth forHeight:tmpHeight ];
}

// Returns the smallest number between 3 input numbers
- (int) getSmallestNumberWithLength:(int) inpLength forWidth:(int)inpWidth forHeight:(int)inpHeight{

  int lowestNummber = 0;
 
  if (inpLength < inpWidth){
    lowestNummber = inpLength;
  } else{
    lowestNummber = inpWidth;
  }
  
  if (lowestNummber < inpHeight){
    lowestNummber = lowestNummber;
  } else{
    lowestNummber = inpHeight;
  }

  return lowestNummber;
}

@end
