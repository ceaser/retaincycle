//
//  Model.m
//  ReferenceToSelf
//
//  Created by Ceaser Larry on 7/31/14.
//
//

#import "Model.h"

// http://stackoverflow.com/questions/20030873/always-pass-weak-reference-of-self-into-block-in-arc

@implementation Model
- (void)noRetainCycle
{
    __weak Model *weakSelf = self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSLog(@"Self == %@", weakSelf);
        [weakSelf boolValue];
        [NSThread sleepForTimeInterval:5.0f];
    });
}

- (void)retainCycle
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        [NSThread sleepForTimeInterval:5.0f];
        // Model now has a retain count of 2
        [self boolValue];
        NSLog(@"Self == %@", self);
    });
}
@end
