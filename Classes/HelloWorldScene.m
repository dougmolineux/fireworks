//
//  HelloWorldLayer.m
//  physics
//
//  Created by doug on 7/29/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

// Import the interfaces
#import "HelloWorldScene.h"

// HelloWorld implementation
@implementation HelloWorld

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorld *layer = [HelloWorld node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init] )) {
		
		// enable touch
		self.isTouchEnabled = YES;
		
		// enable the accelerometer
		self.isAccelerometerEnabled = YES;
		
	}
	
	return self;
}

- (void)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	
	// perform task on each touch
	for( UITouch *touch in touches ) {
		
		// get the location of the touch and set it to location
		CGPoint location = [touch locationInView: [touch view]];
		location = [[CCDirector sharedDirector] convertToGL: location];
		
		// create the particles particle system
		CCParticleSystem *particles = [[CCParticleFireworks alloc] init]; 
		
		// assign the texture as the particle image located in resources
		particles.texture = [[CCTextureCache sharedTextureCache] addImage:@"particle.jpg"];
		
		// set the position of the particle system
		particles.position = ccp(location.x, location.y);
		
		// set the duration of the particle system
		particles.duration = 5;
		
		// remove on finish
		particles.autoRemoveOnFinish = YES;
		
		// add particles to self
		[self addChild:particles];
		
	}
	
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
