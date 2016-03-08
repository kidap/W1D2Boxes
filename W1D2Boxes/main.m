//
//  main.m
//  W1D2Boxes
//
//  Created by Karlo Pagtakhan on 03/08/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    //Create Box #1
    Box *largeBox = [[Box alloc] initWithDepth:3 width:3 height:3];
    
    //Create Box #2
    Box *smallerBox = [[Box alloc] initWithDepth:1 width:1 height:1];
    
    //Display the volume of Box #1
    NSLog(@"The volume of Box #1 is %.2f", [largeBox calculateVolume]);
    
    //Display the volume of Box #2
    NSLog(@"The volume of Box #1 is %.2f", [smallerBox calculateVolume]);
    
    //Check how many Box #2 can fit in Box #1
    float numberofBoxesThatCanFit = [largeBox canFitHowManyofThisBox:smallerBox];
    if (numberofBoxesThatCanFit > 0){
      NSLog(@"You can fit %.0f of Box #2 in Box #1", numberofBoxesThatCanFit);
    } else {
      NSLog(@"First box is smaller than the second box");
    }
    
  }
    return 0;
}
