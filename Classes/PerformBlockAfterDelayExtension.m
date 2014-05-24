//
//  PerformBlockAfterDelayExtension.m
//  Scrabble
//
//  Created by Martin Johansson on 2011-11-22.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PerformBlockAfterDelayExtension.h"


@implementation NSObject (PerformBlockAfterDelay)

- (void)performBlock:(void (^)(void))block 
          afterDelay:(NSTimeInterval)delay 
{
    block = [block copy];
    [self performSelector:@selector(fireBlockAfterDelay:) 
               withObject:block 
               afterDelay:delay];
}

- (void)fireBlockAfterDelay:(void (^)(void))block {
    block();
}

@end
