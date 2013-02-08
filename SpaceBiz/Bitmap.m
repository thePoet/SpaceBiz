//
//  Bitmap.m
//  SpaceBiz
//
//  Created by Riku Erkkilä on 23.1.2013.
//
//

#import "Bitmap.h"



@implementation Bitmap

-(id) init
{
	if( (self=[super init]) )
    {
        texture = nil;
        rect = CGRectNull;
    }
    return self;
}

-(void) loadFromFile:(NSString*)fileName
{
    texture = [[CCTextureCache sharedTextureCache] addImage:fileName];
}


-(Bitmap*)piece:(Coords)origin xSize:(int)xSize ySize:(int)ySize
{
    CGRect newRect = CGRectMake(origin.x, origin.y, xSize, ySize);
    

    Bitmap* newBitmap = [[Bitmap alloc] init];
    [newBitmap setTex:texture rect:newRect];
    
    return newBitmap;
}

-(void) setTex:(CCTexture2D*)textureIn rect:(CGRect)rectangleIn
{
    texture = textureIn;
    rect = rectangleIn;
}


-(CCTexture2D*)texture
{
    return texture;
}


-(CGRect)rect
{
    return rect;
}



@end
