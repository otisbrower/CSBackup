#ifndef __GAME_OBJECT_CS105__
#define __GAME_OBJECT_CS105__

#include <ncurses.h>
#include <vector>

using std::vector;

static int boardX;
static int boardY;

class GameObject{
public:
	int coord_x;
	int coord_y;
	char shape;
	bool alive;
	GameObject(): coord_x(0), coord_y(0), shape(' '), alive(true){}
	static void addObject(GameObject* obj);
	static void deleteObject(GameObject* obj);
	virtual char getShape();
	virtual void setX(const int x);
	virtual int getX() const;
	virtual void setY(const int y);
	virtual int getY() const;
	virtual bool isCollision(vector<GameObject*> obj);
	static void gameBoard();
	static void setBoardSize(int, int);

	virtual ~GameObject(){}
};

#endif