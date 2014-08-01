//
//  Model.h
//  ReferenceToSelf
//
//  Created by Ceaser Larry on 7/31/14.
//
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic, assign) BOOL boolValue;
- (void)retainCycle;
- (void)noRetainCycle;
@end
