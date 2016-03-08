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
    
    Box *largeBox = [[Box alloc] init:10 width:10 height:10];
    
    Box *smallerBox = [[Box alloc] init:2 width:2 height:2.6];
    
    NSLog(@"You can fit %.0f small boxes in the larger box", [largeBox canFitHowManyofThisBox:smallerBox]);
    
    
  }
    return 0;
}
