

#ifndef COORDS_H_
#define COORDS_H_

struct Coords
{
    int x;
    int y;
    
};
typedef struct Coords Coords;


static Coords makeCoords(int x, int y)
{
    Coords c; c.x = x; c.y = y; return c;
}

static bool CoordsEqual(Coords c1, Coords c2)
{
    return c1.x == c2.x && c1.y == c2.y;
}


static Coords CoordsAdd(Coords c1, Coords c2)
{
    return makeCoords(c1.x + c2.x, c1.y + c2.y);
}


#endif