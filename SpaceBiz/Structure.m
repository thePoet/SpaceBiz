//
//  Structure.m
//  SpaceBiz
//
//  Created by Riku Erkkilä on 29.1.2013.
//
//

#import "Structure.h"

@implementation Structure

-(id) init
{
	if( (self=[super init]) )
    {
        blocks = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}


- (Block*) block:(Coords) location
{
    NSString* key = [self toKey:location];
    Block* block = [blocks valueForKey:key];
    return block;
}


- (void) removeBlockFrom:(Coords)location
{
//    NSMutableArray* pile = [self blocksFrom:location];
//    [pile removeObjectAtIndex:num];
}


- (void) addBlock:(Block*)block To:(Coords)location
{
    // pitäis poistaa vanha palikka ensin
    NSString* key = [self toKey:location];
    [blocks setObject:block forKey:key];
}


- (NSString*) toKey:(Coords)location
{
    return [NSString stringWithFormat:@"%d", 1000 * location.x + location.y];
}



- (Coords) toPosition:(NSString*) key
{
    int k = [key intValue];
    int x = k/1000;
    int y = k-1000*x;
    return makeCoords(x,y);
}


-(void) dealloc
{
    [blocks release]; //ei taida riittää
    [super dealloc];
}

@end
