#include <stdio.h>
#include <stdlib.h>
#include "b_simple_undirected.c"
#include "visuals.c"

// and remember to fix main.c
int main(int argc, char * argv[])// args ./a.out name n_v n_e
{ 
  InitWindow(1910, 1070, "Graphs");
  while (!WindowShouldClose())
  {
    su_graph s, temp_s;
    strcpy(s.name, argv[1]);
    s.n_vertices = atoi(argv[2]);
    s.n_edges = atoi(argv[3]);
    
    // making the complement temporary graph
    temp_s.n_vertices = s.n_vertices;
    temp_s.n_edges = s.n_vertices * (s.n_vertices - 1)  / 2;

    edge * temp_edge_pt = temp_s.edges;
    
    for (int i = 0; i < temp_s.n_vertices; i++)
    {
      temp_s.vertices[i].degree = temp_s.n_vertices - 1;
      temp_s.vertices[i].is_selected = 0;
      // neighbours are not added for this graph
    }

    for (int i = 0; i < s.n_vertices -1; i++)
    {
      for (int j = i + 1; j < s.n_vertices; j++)
      {
        temp_edge_pt->start = i;
        temp_edge_pt->end= j;
        temp_edge_pt->is_selected = 0;
        temp_edge_pt++;
      }
    }

    Vector2 mouse_pos = GetMousePosition();
    BeginDrawing();

    ClearBackground(WHITE);
    draw_su_graph(&temp_s);
    print_su_graph(&temp_s);
    space_vertices_su_graph(&temp_s);
    EndDrawing();
  }

  CloseWindow();
  /*return 0;*/
}


