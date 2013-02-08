//
//  GraphicsEngine.h
//  SpaceBiz
//
//  Created by Riku Erkkilä on 24.1.2013.
//
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Bitmap.h"

@interface GraphicsEngine : NSObject
{
    
}
+(void) start:(CCLayer*)layer;
+(void) drawBitmap:(Bitmap*)bitmap to:(Coords)position;
+(void) clearScreen;
+(void) drawText:(NSString*)text;
@end
