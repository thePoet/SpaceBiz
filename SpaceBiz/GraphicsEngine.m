//
//  GraphicsEngine.m
//  SpaceBiz
//
//  Created by Riku Erkkilä on 24.1.2013.
//
//

#import "GraphicsEngine.h"
#import "Bitmap.h"

static CCLayer *ccLayer = nil;


@implementation GraphicsEngine






+(void) start:(CCLayer*)layer
{
    ccLayer = layer;

}

+(void) drawText:(NSString*) text
{
    // create and initialize a Label
    CCLabelTTF *label = [CCLabelTTF labelWithString:text fontName:@"Marker Felt" fontSize:64];
    
    // ask director for the window size
    CGSize size = [[CCDirector sharedDirector] winSize];
    
    // position the label on the center of the screen
    label.position =  ccp( size.width /2 , size.height/2 );
    
    // add the label as a child to this Layer
    [ccLayer addChild: label];
    
    
}

+(void) drawBitmap:(Bitmap*)bitmap to:(Coords)position
{
   
    CCTexture2D *tex = [bitmap texture];
    
    CCSprite* sprite;
    
    if ( CGRectIsNull([bitmap rect]) )
    {
       sprite = [CCSprite spriteWithTexture:tex];
    }
    else
    {
       sprite = [CCSprite spriteWithTexture:tex rect:[bitmap rect]];
    }
    
    [ccLayer addChild:sprite];
   
    CGSize winSize = [[CCDirector sharedDirector] winSize];
    CGPoint pos = ccp(position.x, winSize.height - position.y + [sprite contentSize].height) ;
    
    [sprite setPosition: pos ];
    
    
}






+(void) clearScreen
{
    [ccLayer removeAllChildrenWithCleanup:YES];
}
/*
+ (Coords) toCoords:(CGPoint)c
{
    CGSize size = [[CCDirector sharedDirector] winSize];
    
    int x = c.x;
    int y = size.height - c.y;
    
    return makeCoords(x, y);
}

+ (CGPoint) toCGPoint:(Coords)c
{
    CGSize size = [[CCDirector sharedDirector] winSize];
    
    int x = c.x;
    int y = size.height - c.y;
    
    return ccp(x, y);
}*/

@end
