#include "function.h"
int main(int argc, char* argv[]){
int variable_a,variable_b,temp;
variable_a=75;
variable_b=32;
for(int i=0;i<4;i++){
if(variable_a<variable_b){
variable_b=variable_b-10;
}else{
variable_a=variable_a-10;
}
}
temp=max(variable_a,variable_b);
return 0;
}
