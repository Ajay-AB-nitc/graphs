#include <stdio.h>
#include <string.h>

typedef struct {
  int n_vertices; 
  int n_edges;
  char vertices[100];
  char edges[200][2];
}s_graph ;  


void read_s_graph(s_graph * s);
void print_s_graph(s_graph *s);

int main(){

  s_graph wheel_4; 
  wheel_4.n_vertices = 4; 
  char wheel_4_v_init[] = {'a', 'b', 'c', 'd'};    
  char wheel_4_e_init[][2]={{'a','b'},{'b','c'},{'c','d'},{'d','e'}};
  
  memcpy(wheel_4.vertices, wheel_4_v_init, sizeof(wheel_4_v_init));
  memcpy(wheel_4.edges, wheel_4_e_init, sizeof(wheel_4_e_init));

  s_graph wheel_5;
  read_s_graph(&wheel_5);
  print_s_graph(&wheel_5);
  
  return 0;   
}

void read_s_graph(s_graph * s){
  int num_vertices;
  printf("Enter the number of vertices: ");
  scanf("%d", &num_vertices);

  
  int num_edges;
  printf("Enter the number of edges: ");
  scanf("%d", &num_edges);

  s -> n_vertices =   num_vertices;
  for (int i = 0; i < num_vertices; i++){
    char inp;
    printf("Enter a vertex: ");
    scanf(" %c", &inp);
    s -> vertices[i] = inp;
  }
  
  s -> n_edges = num_edges;
  for (int i = 0; i < num_edges; i++){
    char inp1, inp2;
    printf("Enter the edge (start, end)\n");
    scanf(" %c %c", &inp1 , &inp2);
    s -> edges[i][0] = inp1;
    s -> edges[i][1] = inp2;
  }

}

void print_s_graph(s_graph *s){
  int n_vertices = s->n_vertices;
  int n_edges= s->n_edges;
  printf("No. of vertices: %d \n", n_vertices);
  printf("No. of edges: %d \n", n_edges);

  printf("Vertices:");
  for (int i = 0; i < n_vertices; i++){
    printf("%c ", s->vertices[i]);
  }
  printf("\nEdges:\n");
  for (int i = 0; i < n_edges; i++){
    printf("%c %c\n", s->edges[i][0],s->edges[i][1]);
  }
}

