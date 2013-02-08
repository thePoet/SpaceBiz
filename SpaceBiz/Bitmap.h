//
//  Bitmap.h
//  SpaceBiz
//
//  Created by Riku Erkkilä on 23.1.2013.
//
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Coords.h"

@interface Bitmap : NSObject
{
//    CCSprite *sprite;
    CCTexture2D *texture;
    CGRect rect;
    
}

-(void)loadFromFile:(NSString*)fileName;

//-(CCSprite*)sprite;
-(CCTexture2D*)texture;
-(CGRect)rect;
-(Bitmap*)piece:(Coords)origin xSize:(int)xSize ySize:(int)ySize;

@end
