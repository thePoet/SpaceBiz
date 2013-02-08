//
//  Block.h
//  SpaceBiz
//
//  Created by Riku Erkkilä on 29.1.2013.
//
//

#import <Foundation/Foundation.h>
#import "Coords.h"
#import "Structure.h"

@class Structure;

@interface Block : NSObject
{
    NSString* type;
    int typeId;
    Boolean isBarrier;
    
}

//-(Coords) position;
//-(void) setPosition:(Coords)position;

@property (retain) NSString* type;
@property (assign) int typeId;

@end
