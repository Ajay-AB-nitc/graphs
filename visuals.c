#include "raylib.h"
#include "b_simple_undirected.c"

#define x_offset -16
#define y_offset -14
void draw_su_vertex(vertex* pvertex, int n);
void draw_su_graph(su_graph *);

int main(void)
{
  load_su_graph();
  InitWindow(1200, 720, "raylib [core] example - basic window");
  while (!WindowShouldClose())
  {
    BeginDrawing();
    ClearBackground(WHITE);
    draw_su_graph(&su_arr[3]);
  
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
  for (int i = 0; i < s->n_vertices; i++)
    draw_su_vertex(&s->vertices[i],i);
}





