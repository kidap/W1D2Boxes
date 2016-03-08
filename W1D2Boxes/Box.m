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
- (id) initWithDepth:(float) depth width:(float)width height:(float) height{

  self.depth = depth;
  self.width = width;
  self.height = height;

  return self;
}

// Get the volume of the Box
-(float) calculateVolume{
  return self.depth * self.width * self.height;
}


//Get how many boxes can fit in the Box instance
- (float) canFitHowManyofThisBox:(Box *) newBox{
  bool useVolume = true;
  
  //Use Volume
  if (useVolume){
    int howMuchVolumeCanFit = 0;
    
    howMuchVolumeCanFit = [self calculateVolume] / [newBox calculateVolume];
    
    return howMuchVolumeCanFit;
  
    
  //Use dimensions
  } else {
    int tmpDepth = 0;
    int tmpWidth = 0;
    int tmpHeight = 0;
  
    //Compare the depth, width and height to know how many of the smaller boxes would fit based on the dimensions
    tmpDepth = self.depth / newBox.depth;
    tmpWidth = self.width / newBox.width;
    tmpHeight = self.height / newBox.height;
  
    // Return the smallest number of boxes between the 3
    return  tmpDepth * tmpWidth * tmpHeight;
  }
}
@end
