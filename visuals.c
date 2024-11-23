#include "raylib.h"
#include "b_simple_undirected.c"

#define x_offset -16
#define y_offset -14

void draw_su_vertex(vertex* pvertex, int n);
void draw_su_graph(su_graph *);
void draw_su_edge();


int main(void)
{
  load_su_graph();
  InitWindow(1910, 1070, "raylib [core] example - basic window");
  while (!WindowShouldClose())
  {
    BeginDrawing();

    ClearBackground(WHITE);
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[0]);*/
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[1]);*/
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[2]);*/
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[3]);*/
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[4]);*/
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[4]);*/
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[4]);*/
    /*draw_su_edge(&su_arr[3], &su_arr[3].edges[4]);*/

    draw_su_graph(&su_arr[1]);


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

void draw_su_graph(su_graph * s)
{
  space_vertices_su_graph(s);
  
  for (int i = 0; i < s->n_edges; i++)
    draw_su_edge(s, &s->edges[i]);
  
  for (int i = 0; i < s->n_vertices; i++)
    draw_su_vertex(&s->vertices[i],i);
}

void draw_su_edge(su_graph * s, edge * e)
{
  /*DrawLine(s->vertices[e->start].x, s->vertices[e->start].y,*/
           /*s->vertices[e->end].x,s->vertices[e->end].y, BLACK);*/
  DrawLineEx((Vector2){s->vertices[e->start].x, s->vertices[e->start].y},
             (Vector2){s->vertices[e->end].x ,s->vertices[e->end].y}, 3.0, BLACK);
  

}



