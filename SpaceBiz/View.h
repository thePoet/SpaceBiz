//
//  View.h
//  SpaceBiz
//
//  Created by Riku Erkkilä on 22.1.2013.
//
//

#import "cocos2d.h"
#import "GameModel.h"
#import "GraphicsEngine.h"
#import "BitmapLibrary.h"

static const int TILE_X_SIZE = 45;
static const int TILE_Y_SIZE = 45;
static const int TEXTURE_TILES_PER_ROW = 3;



@interface View : CCLayerColor
//@interface View : NSObject
{
    
     CCSpriteBatchNode* pieces;

    Bitmap* bitmapSheet;
    Bitmap* piece;
    BitmapLibrary* bitmapLib;
    

    

    
    
    // Block* protagonist;
    /*
    CCSpriteBatchNode* map;
    
    CCSprite* dungeonMap1;
    CCSprite* dungeonMap2;
    CCSprite* dungeonMap3;
    CCSprite* dungeonMap4;
    CCSprite* dungeonMap5;
    */
    //World* world;
    
    GameModel* gameModel;
    
}

//@property (nonatomic, retain) CCTMXTiledMap *tileMap;
//@property (nonatomic, retain) CCTMXLayer *background;

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end