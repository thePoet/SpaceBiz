//
//  Structure.h
//  SpaceBiz
//
//  Created by Riku Erkkilä on 29.1.2013.
//
//

#import <Foundation/Foundation.h>

//
//  World.h
//  PenAndPaperRPG
//
//  Created by Riku Erkkilä on 7.11.2012.
//
//



#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Block.h"
#import "Coords.h"

@class Block;

@interface Structure : NSObject
{
    NSMutableDictionary* blocks;
}


- (void) addBlock:(Block*)block To:(Coords)location;
- (Block*) block:(Coords) location;
- (void) removeBlockFrom:(Coords)location;

//- (Coords) getPositionFor:(Block*)block;
//- (BOOL) removeBlock:(Block*)block;
//- (void) moveBlock:(Block*)block To:(Coords)position;

@end

