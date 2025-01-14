#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "HW4_func.h"

vector ***inputVelocityField(char *vel, vector ***vField){
	int vectorSizeX, vectorSizeY, vectorSizeZ;
	FILE *velP;

	velP = fopen(vel, "r");
	fscanf(velP, "%d %d %d", &vectorSizeX, &vectorSizeY, &vectorSizeZ);

	vField = (vector ***)malloc(sizeof(vector **) * vectorSizeX);

	for(int i = 0; i < vectorSizeY; i++){
		vField[i] = (vector **)malloc(sizeof(vector *) * vectorSizeY);
		for(int j = 0; j < vectorSizeZ; j++){
			vField[i][j] = (vector *)malloc(sizeof(vector) * vectorSizeZ);
		}
	}

	for(int i = 0; i < vectorSizeZ; i++){
		for(int j = 0; j < vectorSizeY; j++){
			for(int k = 0; k < vectorSizeZ; k++){
				fscanf(velP, "%f", &vField[i][j][k].x);
				fscanf(velP, "%f", &vField[i][j][k].y);
				fscanf(velP, "%f", &vField[i][j][k].z);
			}
		}
	}
	
	fclose (velP);

	return vField;
}

vector *createParticleList(char *par, vector *pList){
	FILE *parP, *initPart;
	char *filename;
	int numParticles;

	parP = fopen(par, "r");

	fscanf(parP, "%d", &numParticles);

	pList = (vector *)malloc(sizeof(vector) * numParticles);

	for(int i = 0; i < numParticles; i++){
		fscanf(parP,"%f %f %f", &pList[i].x, &pList[i].y, &pList[i].z);
	}

	fclose(parP);

	return pList;
}

int countParticles(char*par){
	int numParticles;
	FILE *parP; 

	parP = fopen(par, "r");

	fscanf(parP, "%d", &numParticles);

	fclose(parP);
	return numParticles;
}

void particleMotion(int numTS, vector *pList, vector ***vField, char *file, int nPar){
	char outputName[50];
	FILE *output;

	for(int t = 1; t <= numTS; t++){
		if(t%10 == 0){
			sprintf(outputName, "%s_%.4d.dat", file, t);
			output = fopen(outputName, "w");
			 for(int i = 0; i < nPar; i++){
			 	pList[i] = positionUpdate(vField, pList[i]);
			 	fprintf(output, "%f %f %f\n", pList[i].x, pList[i].y, pList[i].z);
			 }
			fclose(output);
		}
		else{
			for(int i = 0; i < nPar; i++){
			 	pList[i] = positionUpdate(vField, pList[i]);
			 }
		}
	}
}

vector positionUpdate(vector ***vField, vector particle){
	vector result;

	result.x = particle.x + vField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].x;
	result.y = particle.y + vField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].y;
	result.z = particle.z + vField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].z;

	return result;
}
