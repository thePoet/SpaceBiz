//  View.m
//  SpaceBiz
//
//  Created by Riku Erkkilä on 22.1.2013.
//
//
//

#import "View.h"

#import <Carbon/Carbon.h>
#import "GraphicsEngine.h"


// HelloWorldLayer implementation
@implementation View

//static CCLayer* layer;

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	CCLayer* layer = [View node];
    
	// add layer as a child to scene
	[scene addChild: layer];
    [GraphicsEngine start:layer];
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	if( (self=[super initWithColor:ccc4(255, 255, 255, 255)]) )
    {
        gameModel = [[GameModel alloc] init];

        self.isKeyboardEnabled = YES;
        self.isMouseEnabled = YES;
        
        bitmapLib = [[BitmapLibrary alloc] init];
        
        bitmapSheet = [[Bitmap alloc]init];
        [bitmapSheet loadFromFile:@"BuildingBlocks.png"];
        
        [self readBitmap:@"redCrate"   x:0   y:0];
        [self readBitmap:@"greenCrate" x:30  y:0];
        [self readBitmap:@"blueCrate"  x:60  y:0];
        [self readBitmap:@"pipe_ud"    x:90  y:0];
        [self readBitmap:@"pipe_rd"    x:120 y:0];
        [self readBitmap:@"pipe_ld"    x:150 y:0];

        [self schedule:@selector(gameLoop:) interval: 0.25f];
	}
	return self;
}

- (void) readBitmap:(NSString*)name x:(int)x y:(int)y
{
    [bitmapLib addBitmap: [bitmapSheet piece:makeCoords(x,y) xSize:30 ySize:30]
                    name: name ];
}

- (void) gameLoop: (ccTime) dT
{
       [gameModel update];
       [self drawWorld];
}


- (BOOL)ccKeyDown:(NSEvent*)keyDownEvent
{
    //  UInt16 keyCode = [keyDownEvent keyCode];
    //  [gameModel update:keyCode];
    //    [self drawWorld];

    return YES;
    
}

- (void)drawWorld
{
    [GraphicsEngine clearScreen];
    [GraphicsEngine drawBitmap:bitmapSheet to: makeCoords(500,600)];
    [GraphicsEngine drawBitmap: [bitmapLib bitmap:@"pipe_ld"] to:makeCoords(0, 20)];
}


/*

- (CGPoint) toScreenCords:(Coords)c
{
    CGSize size = [[CCDirector sharedDirector] winSizeInPixels];
    
    //    return ccp(23 + c.x*TILE_X_SIZE, -50 + size.height - c.y*TILE_Y_SIZE);
    return ccp(23 + c.x*TILE_X_SIZE, -23 + size.height - c.y*TILE_Y_SIZE);
}
*/

- (Coords) toCoords:(CGPoint)c
{
    CGSize size = [[CCDirector sharedDirector] winSize];
    
    int x = c.x;
    int y = size.height - c.y;
    
    return makeCoords(x, y);
}

/*
 - (BOOL)ccKeyUp:(NSEvent*)keyUpEvent
 {
 UInt16 keyCode = [keyUpEvent keyCode];
 
 return YES;
 
 }*/



- (BOOL)ccMouseDown:(NSEvent *)event
{
    CGPoint location = [[CCDirector sharedDirector] convertEventToGL:event];
    Coords c = [self toCoords:location];
    
    NSLog(@"Mouseclick: %i %i", c.x, c.y);
    return YES;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
    //   self.tileMap = nil;
    //   self.background = nil;
    
    
	[super dealloc];
}
@end
