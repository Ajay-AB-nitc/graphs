#include <stdio.h>

typedef struct vertex vertex;

struct vertex{
  //int name;
  int degree;
  vertex * neighbours[100];
};

typedef struct {
  vertex * start;
  vertex * end;
}edge;

typedef struct {
  int n_vertices;
  int n_edges;
  vertex vertices[100];
  edge edges[1000];
}su_graph;



void read_su_graph(su_graph * s);
void print_su_graph(su_graph * s);

int main(){
  su_graph g1;
  read_su_graph(&g1);
  print_su_graph(&g1);
  return 0;
}






void read_su_graph(su_graph * s){
  vertex * vset = s -> vertices;
  edge * eset = s -> edges;

  int n_vertices;
  printf("Enter the number of vertices: ");
  scanf("%d", &n_vertices);

  
  int n_edges;
  printf("Enter the number of edges: ");
  scanf("%d", &n_edges);
  
  s -> n_vertices =   n_vertices;

  for (int i = 0; i < n_vertices; i++){
    s -> vertices[i].degree = 0;
    //s -> vertices[i].name= i;
  }
  
  s -> n_edges = n_edges;
  

  for (int i = 0; i < n_edges; i++){
    int inp1, inp2;
    printf("Enter the edge (start, end)\n");
    scanf(" %d %d", &inp1 , &inp2);
    eset[i].start = &(vset[inp1]);
    eset[i].end = &(vset[inp2]);
    
    
    vset[inp1].neighbours[vset[inp1].degree];
    vset[inp2].neighbours[vset[inp2].degree];
     
    vset[inp1].degree++;
    vset[inp2].degree++;
  }

}




void print_su_graph(su_graph * s){

  printf("No. of vertices: %d\n", s -> n_vertices);
  printf("No. of edges: %d\n", s -> n_edges);

  for (int i = 0 ;i < s -> n_vertices; i++){
    printf("degree of %d: %d\n", i , s -> vertices[i].degree);
  }
  

  for (int i = 0 ;i < s -> n_edges; i++){
    int start, end;    
    start = s-> edges[i].start - &(s->vertices[0]);
    end = s-> edges[i].end - &(s->vertices[0]);
    printf("edge %d: %d - %d\n", i, start, end);
    
    /*printf("edge %d: %d - %d\n", i , s -> edges[i].start->name,s -> edges[i].end->name);*/
  }

}



