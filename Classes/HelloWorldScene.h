//
//  HelloWorldLayer.h
//  physics
//
//  Created by doug on 7/29/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorld Layer
@interface HelloWorld : CCLayer
{
}

// returns a Scene that contains the HelloWorld as the only child
+(id) scene;
-(void)ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;

@end
