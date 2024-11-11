#include <stdio.h>
#include <string.h>

typedef struct {
  int n_vertices; 
  char vertices[100];
  char edges[200][2];
}s_graph ;  


int main(){

  s_graph wheel_4; 
  wheel_4.n_vertices = 4; 
  char wheel_4_v_init[] = {'a', 'b', 'c', 'd'};    
  char wheel_4_e_init[][2]={{'a','b'},{'b','c'},{'c','d'},{'d','e'}};
  
  memcpy(wheel_4.vertices, wheel_4_v_init, sizeof(wheel_4_v_init));
  memcpy(wheel_4.edges, wheel_4_e_init, sizeof(wheel_4_e_init));

  return 0;   
}
