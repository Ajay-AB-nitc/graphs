#include <stdio.h>
#include "simple_undirected.h"
#include "visuals.c"



int main(int argc, char * argv[])
{ 
  int val = 0;
  int selected_vertices[100] = {};
  int hovered_vertex = 0;
  int n_graphs = load_su_graph();
  InitWindow(1910, 1070, "raylib [core] example - basic window");
  int x_dist = 20;
  int y_dist = 20;
  SetTargetFPS(20);
  while (!WindowShouldClose())
  {
    Vector2 mouse_pos = GetMousePosition();
    BeginDrawing();

    ClearBackground(WHITE);

   
    int inp = GetKeyPressed();
    if (inp != 0 && inp > 47 && inp < 58) 
    {
      val = inp - 48;
      for (int i = 0; i < su_arr[val].n_vertices; i++) selected_vertices[i] = 0;
    }
    if (inp == 68 && val < n_graphs -1){
      val++;
      for (int i = 0; i < su_arr[val].n_vertices; i++) selected_vertices[i] = 0;
    }
    if (inp == 65 && val > 0) {
      val --;
      for (int i = 0; i < su_arr[val].n_vertices; i++) selected_vertices[i] = 0;
    }

    
    for (int i = 0; i < su_arr[val].n_vertices; i++) printf("%d ", selected_vertices[i]);
    printf("\n");

    DrawText(su_arr[val].name, 10, 40, 60, BLACK);
    draw_su_graph(&su_arr[val]);
    highlight_edge(&su_arr[val], &su_arr[val].edges[0], RED);

   for (int i = 0; i < su_arr[val].n_vertices; i++) {

    if (selected_vertices[i] == 1) highlight_vertex(&su_arr[val].vertices[i], i , RED);

    if (is_hovered(&su_arr[val].vertices[i], mouse_pos, 30.0)){
        highlight_vertex(&su_arr[val].vertices[i], i, BLACK);
        highlight_neighbours(&su_arr[val].vertices[i], &su_arr[val]);
      }

    if(IsMouseButtonPressed(MOUSE_BUTTON_LEFT) && is_hovered(&su_arr[val].vertices[i], mouse_pos, 30.0))
    {
      hovered_vertex = i; 
      x_dist = mouse_pos.x - su_arr[val].vertices[i].x;
      y_dist = mouse_pos.y - su_arr[val].vertices[i].y;
    }

    if (IsMouseButtonPressed(MOUSE_BUTTON_RIGHT) && is_hovered(&su_arr[val].vertices[i], mouse_pos, 30.0)){
        selected_vertices[i] = (selected_vertices[i] == 0) ? 1 : 0;
        printf("heres\n");
      }

   }   
    if(IsMouseButtonDown(MOUSE_BUTTON_LEFT) && is_hovered(&su_arr[val].vertices[hovered_vertex], mouse_pos, 500.0)){
      su_arr[val].vertices[hovered_vertex].x = mouse_pos.x - x_dist;
      su_arr[val].vertices[hovered_vertex].y = mouse_pos.y - y_dist;

    }
    EndDrawing();
  }

  CloseWindow();
  /*return 0;*/
}


