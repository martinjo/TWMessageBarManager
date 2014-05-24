//
//  PerformBlockAfterDelayExtension.h
//  Scrabble
//
//  Created by Martin Johansson on 2011-11-22.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSObject (PerformBlockAfterDelayExtension)

- (void)performBlock:(void (^)(void))block 
          afterDelay:(NSTimeInterval)delay;

@end
