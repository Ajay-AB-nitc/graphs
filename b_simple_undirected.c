#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <dirent.h>
#include <math.h>

typedef struct vertex vertex;

struct vertex{
  //int name;
  int degree;
  int x;
  int y;
  vertex * neighbours[100];
};

/*typedef struct {*/
/*  vertex * start;*/
/*  vertex * end;*/
/*}edge;*/

typedef struct {
  int start;
  int end;
}edge;

typedef struct {
  char name[100];
  int n_vertices;
  int n_edges;
  vertex vertices[100];
  edge edges[1000];
}su_graph;


su_graph su_arr[100];


void read_su_graph(su_graph * s);
void print_su_graph(su_graph * s);
void write_su_graph(su_graph * s);
int load_su_graph();
int print_loaded_su_graph(int n);
void space_vertices_su_graph(su_graph * s);

/*int main()*/
/*{*/
/*  load_su_graph();*/
/*  print_su_graph(&su_arr[0]);*/
/*  print_su_graph(&su_arr[1]);*/
/*  print_su_graph(&su_arr[2]);*/
/*  print_su_graph(&su_arr[3]);*/
/*}*/





void read_su_graph(su_graph * s){
  vertex * vset = s -> vertices;
  /*edge * eset = s -> edges;*/
  
  printf("Enter the name of the graph: ");
  scanf("%s", &(s -> name));

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
    /*eset[i].start = &(vset[inp1]);*/
    /*eset[i].end = &(vset[inp2]);*/
    s -> edges[i].start = inp1;
    s -> edges[i].end = inp2;
    
    vset[inp1].neighbours[vset[inp1].degree];
    vset[inp2].neighbours[vset[inp2].degree];
     
    vset[inp1].degree++;
    vset[inp2].degree++;
  }

}




void print_su_graph(su_graph * s){ printf("\n%s\n", s->name); printf("No. of vertices: %d\n", s -> n_vertices); printf("No. of edges: %d\n", s -> n_edges);

  for (int i = 0 ;i < s -> n_vertices; i++){
    printf("degree of %d: %d\n", i , s -> vertices[i].degree);
  }
  

  for (int i = 0 ;i < s -> n_edges; i++){
    int start, end;    
    /*start = s-> edges[i].start - &(s->vertices[0]);*/
    /*end = s-> edges[i].end - &(s->vertices[0]);*/
    start = s -> edges[i].start;
    end = s -> edges[i].end;
    printf("edge %d: %d - %d\n", i, start, end);
    
    /*printf("edge %d: %d - %d\n", i , s -> edges[i].start->name,s -> edges[i].end->name);*/
  }

}


void write_su_graph(su_graph * s){
  char path[100] = "su_graphs/";
  strcat(path,s->name);
  
  FILE * fp = fopen(path,"wb");
  if (fp == NULL){
    printf("file wasn't opened");
    exit(1);
  }

  fwrite(s, sizeof(su_graph), 1, fp);
  fclose(fp);
}


int load_su_graph(){
  struct dirent * entry;
  DIR *dp = opendir("su_graphs");

  if (dp == NULL){
    printf("couldn't open directory\n");
    exit(1);
  }
  
  int i = 0;
  while ((entry = readdir(dp)) != NULL){

    char path[100] = "su_graphs/";
    char fname[100];
    strcpy(fname,entry->d_name);
    if (strcmp(entry->d_name, ".") == 0 ||
      strcmp(entry->d_name, "..") == 0)continue;
    
    strcat(path, fname); 
    
    FILE * fp = fopen(path, "rb");
    if (fp == NULL) {
        perror("Error opening file\n");
        exit(1);
    }
    fread(&su_arr[i++], sizeof(su_graph), 1, fp);
    fclose(fp);
  }
  closedir(dp);
  return i;
}


int print_loaded_su_graph(int n){
  char inp[100];
  scanf("%s", inp);
  for (int i = 0; i < n; i++){
    if (strcmp(inp,su_arr[i].name) == 0){
      print_su_graph(&su_arr[i]);
      return n;
    }
  }printf("Enter a valid graph name\n");
  print_loaded_su_graph(n);
}

void space_vertices_su_graph(su_graph * s)
{
  int current_x = 0;
  int current_y = 0;
  double unit = 2 * M_PI / s->n_vertices;

  for (int i = 0; i < s->n_vertices; i++){
    s->vertices[i].x = 600 - (int)300*sin(unit * (i+1));
    s->vertices[i].y = 360 + (int)200*cos(unit * (i+1));
  }
}

