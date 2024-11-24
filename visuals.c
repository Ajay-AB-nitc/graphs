#include "raylib.h"
#include "b_simple_undirected.c"

#define x_offset -16
#define y_offset -14

void draw_su_vertex(vertex* pvertex, int n);
void draw_su_graph(su_graph *);
void draw_su_edge();
int is_hovered(vertex *, Vector2 mouse_pos, float radius);

int main(void)
{ int val = 0;
  int hovered_vertex = 0;
  int n_graphs = load_su_graph();
  InitWindow(1910, 1070, "raylib [core] example - basic window");
  int x_dist = 20;
  int y_dist = 20;

  while (!WindowShouldClose())
  {
    Vector2 mouse_pos = GetMousePosition();
    BeginDrawing();

    ClearBackground(WHITE);

   
    int inp = GetKeyPressed();
    if (inp != 0 && inp > 47 && inp < 58) val = inp - 48;
    if (inp == 68 && val < n_graphs -1) val++;
    if (inp == 65 && val > 0) val --;
    DrawText(su_arr[val].name, 10, 40, 60, BLACK);
    draw_su_graph(&su_arr[val]);


   for (int i = 0; i < su_arr[val].n_vertices; i++) {
    if(IsMouseButtonPressed(MOUSE_BUTTON_LEFT) && is_hovered(&su_arr[val].vertices[i], mouse_pos, 30.0))
    {
      /*printf("%d\n", is_hovered(&su_arr[val].vertices[0], mouse_pos));*/
      hovered_vertex = i; 
      x_dist = mouse_pos.x - su_arr[val].vertices[i].x;
      y_dist = mouse_pos.y - su_arr[val].vertices[i].y;
      /*printf("%s\n") */
    }

   }   
    if(IsMouseButtonDown(MOUSE_BUTTON_LEFT) && is_hovered(&su_arr[val].vertices[hovered_vertex], mouse_pos, 500.0)){
      su_arr[val].vertices[hovered_vertex].x = mouse_pos.x - x_dist;
      su_arr[val].vertices[hovered_vertex].y = mouse_pos.y - y_dist;

    }
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


int is_hovered(vertex * v, Vector2 mouse_pos, float radius)
{
  float distance = sqrt(pow((v->x - mouse_pos.x), 2) + pow((v->y - mouse_pos.y), 2)); 
  /*printf("%f ", distance);*/
  if (distance <= radius){return 1;}
  else   return 0;
  
}








