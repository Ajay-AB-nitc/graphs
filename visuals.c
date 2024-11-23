#include "raylib.h"
#include "b_simple_undirected.c"
#include "math.h"

#define x_offset -16
#define y_offset -14
void draw_su_vertex(vertex* pvertex, int n);
void space_vertices_su_graph(su_graph * s);


int main(void)
{
  load_su_graph();
  InitWindow(1200, 720, "raylib [core] example - basic window");
  space_vertices_su_graph(&su_arr[0]);
  /*space_vertices_su_graph(&su_arr[2]);*/
  /*space_vertices_su_graph(&su_arr[3]);*/
  while (!WindowShouldClose())
  {
    BeginDrawing();
    ClearBackground(WHITE);

    draw_su_vertex(&su_arr[0].vertices[0],0);
    draw_su_vertex(&su_arr[0].vertices[1],1);
    draw_su_vertex(&su_arr[0].vertices[2],2);


    /*draw_su_vertex(&su_arr[2].vertices[0],0);*/
    /*draw_su_vertex(&su_arr[2].vertices[1],1);*/
    /*draw_su_vertex(&su_arr[2].vertices[2],2);*/
    /*draw_su_vertex(&su_arr[2].vertices[3],3);*/

    /*draw_su_vertex(&su_arr[3].vertices[0],0);*/
    /*draw_su_vertex(&su_arr[3].vertices[1],1);*/
    /*draw_su_vertex(&su_arr[3].vertices[2],2);*/
    /*draw_su_vertex(&su_arr[3].vertices[3],3);*/
    /*draw_su_vertex(&su_arr[3].vertices[4],4);*/
    /**/


    EndDrawing();
  }

  CloseWindow();
  return 0;
}


void draw_su_vertex(vertex* pvertex, int n)
{
  char charn[20];
  if (n < 10) sprintf(charn, "%d%d", 0, n); // converts n to a string literal
  else sprintf(charn, "%d", n);

  DrawCircle(pvertex->x, pvertex->y, 30.0f, BLUE);
  DrawText(charn ,pvertex->x + x_offset, pvertex->y + y_offset, 30, BLACK);


}


void space_vertices_su_graph(su_graph * s)
{
  int current_x = 0;
  int current_y = 0;
  double unit = 2 * M_PI / s->n_vertices;

  for (int i = 0; i < s->n_vertices; i++){
    s->vertices[i].x = 600 - (int)300*sin(unit * (i+1));
    s->vertices[i].y = 360 + (int)200*cos(unit * (i+1));
    printf("%d  %d %d\n", i,s->vertices[i].x, s->vertices[i].y);
  }
}

