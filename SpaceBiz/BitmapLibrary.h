//
//  BitmapLibrary.h
//  SpaceBiz
//
//  Created by Riku Erkkilä on 28.1.2013.
//
//

#import <Foundation/Foundation.h>
#import "Bitmap.h"

@interface BitmapLibrary : NSObject
{
    NSMutableDictionary* library;
}

-(Bitmap*)bitmap:(NSString*)name;
-(void)addBitmap:(Bitmap*)bitmap name:(NSString*)name;

@end
