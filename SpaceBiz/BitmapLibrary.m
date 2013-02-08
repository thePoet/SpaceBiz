//
//  BitmapLibrary.m
//  SpaceBiz
//
//  Created by Riku Erkkilä on 28.1.2013.
//
//

#import "BitmapLibrary.h"

@implementation BitmapLibrary

-(id) init
{
	if( (self=[super init]) )
    {
        library = [[NSMutableDictionary alloc]init];
    }
    return self;
}

-(Bitmap*)bitmap:(NSString*)name
{
    return [library valueForKey:name];
}

-(void)addBitmap:(Bitmap*)bitmap name:(NSString*)name
{
    [library setObject:bitmap forKey:name];
}

@end

