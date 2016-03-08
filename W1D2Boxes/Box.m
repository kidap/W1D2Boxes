//
//  Box.m
//  W1D2Boxes
//
//  Created by Karlo Pagtakhan on 03/08/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Box.h"

@implementation Box

- (id) init:(float) length width:(float)width height:(float) height{

  self.length = length;
  self.width = width;
  self.height = height;

  return self;
}

-(float) calculateVolume{
  return self.length * self.width * self.height;
}


- (float) canFitHowManyofThisBox:(Box *) newBox{
  
  int tmpLength = 0;
  int tmpWidth = 0;
  int tmpHeight = 0;
  
  tmpLength = self.length / newBox.length;
  tmpWidth = self.width / newBox.width;
  tmpHeight = self.height / newBox.height;
  
  
  
  return [self getSmallestNumberWithLength:tmpLength forWidth:tmpWidth forHeight:tmpHeight ];
}

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
