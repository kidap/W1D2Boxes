//
//  Box.h
//  W1D2Boxes
//
//  Created by Karlo Pagtakhan on 03/08/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float depth;


- (id) initWithDepth:(float) depth width:(float)width height:(float) height;
- (float) calculateVolume;
- (float) canFitHowManyofThisBox:(Box *) ofThisBox;
@end
