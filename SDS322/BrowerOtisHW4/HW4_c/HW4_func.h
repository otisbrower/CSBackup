#ifndef __FUNC__
#define __FUNC__

#include <stdio.h>

typedef struct{
	float x, y, z;
}vector;

vector ***inputVelocityField(char *vel, vector ***vField);
vector *createParticleList(char *par, vector *pList);
int countParticles(char*par);
void particleMotion(int numTS, vector *plist, vector ***vField, char *file, int nPar);
vector positionUpdate(vector ***vField, vector particle);

#endif // __V_FIELD__
