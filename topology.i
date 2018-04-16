%module topology
%include "std_vector.i"
%include "std_string.i"
%include "std_map.i"
%include "std_set.i"
%include "std_pair.i"
%include "stl.i"

%{
#include "AMSC.h"
#include "MergeTree.h"
%}
%include "AMSC.h"
%include "MergeTree.h"

%template(AMSCFloat) AMSC<float>;
%template(AMSCDouble) AMSC<double>;

%template(MergeTreeFloat) MergeTree<float>;
%template(MergeTreeDouble) MergeTree<double>;

namespace std
{
  %template(vectorFloat)     vector<float>;
  %template(vectorDouble)    vector<double>;
  %template(vectorString)    vector<string>;
  %template(vectorInt)       vector<int>;
  %template(setInt)          set<int>;
  %template(mapPartition)    map< string, vector<int> >;
  %template(mapManifolds)    map< int, vector<int> >;
  %template(mapIntFloat)     map< int, float >;
  %template(setIntPair)      set< pair<int,int> >;
  %template(mapIntSetInt)    map< int, set<int> >;
  %template(mapIntPairVectorInt)    map< pair<int,int> , vector<int> >;
  %template(mapArcsFloat)  map<pair<int,int>, pair<float,float> >;
  %template(mapArcsDouble) map<pair<int,int>, pair<double,double> >;
}