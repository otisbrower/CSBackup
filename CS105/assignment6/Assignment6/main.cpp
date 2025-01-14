/*
	Otis Brower
	EID: odb234
	Assignment 6
*/

#include <iostream>
#include <map>
#include <list>
#include <vector>
#include "Person.h"
#include "readgraph.h"
#include "Matcher.h"

using std::list;
using std::vector;

int main (int argc, char ** argv){
	vector<Person*> left;
	vector<Person*> right;
	readIn(left, right);

	for(int i = 1; i <= 2; ++i){
		vector<Person*>& group = i==1 ? left : right;
		cout << "Group: " << i << endl;
		for(vector<Person*>::iterator iter = group.begin(); iter != group.end(); ++iter){
			Person* p = *iter;
			cout << p->name << " : ";
			for(list<Rating*>::iterator iter = p->ratings.begin(); iter != p->ratings.end(); ++iter){
				cout << "(" << (*iter)->pperson->name << ":" << (*iter)->rating << ")";
			}
			cout << endl;
		}
	}

	//Send list of people to matcher
	Matcher* match;
	map<Person*, Person*> m = match->stableMatch(left, right);

	// Print results
	for(map<Person*, Person*>::const_iterator iter = m.begin(); iter != m.end(); ++iter){
		Person* p1 = iter->first;
		Person* p2 = iter->second;
		cout << p1->name << "  " << p2->name << endl;
	}

	return 0;
}