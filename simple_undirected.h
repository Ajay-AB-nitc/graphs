#include <stdio.h>
#include <string.h>

typedef struct {
  int n_vertices; 
  int n_edges;
  char vertices[100];
  char edges[200][2];
}s_graph ;  

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

  printf("Vertices: ");
  for (int i = 0; i < n_vertices; i++){
    printf("%c ", s->vertices[i]);
  }
  printf("\nEdges:\n");
  for (int i = 0; i < n_edges; i++){
    printf("%c %c\n", s->edges[i][0],s->edges[i][1]);
  }
}

