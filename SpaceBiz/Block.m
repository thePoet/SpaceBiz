#import "Block.h"

@implementation Block

@synthesize type;
@synthesize typeId;


-(id) init
{
	if( (self=[super init]) )
    {
        isBarrier = FALSE;
    }
    return self;
}

/*
 
 -(Coords) position
 {
 return position_;
 }
 
 -(void) setPosition:(Coords)position
 {
 position_ = position;
 }
 */

-(void) dealloc
{
    [type release];
    [super dealloc];
}

@end
