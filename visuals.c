#include "raylib.h"
#include "b_simple_undirected.c"

#define x_offset -16
#define y_offset -14

void draw_su_vertex(vertex* pvertex, int n);
void draw_su_graph(su_graph *);
void draw_su_edge();
int is_hovered(vertex *, Vector2 mouse_pos, float radius);
void highlight(vertex * v, int n,  Color color);
void highlight_neighbours(vertex * v, su_graph * s);


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

void highlight(vertex * v,int n, Color color)
{
  DrawCircle(v->x, v->y, 37.0f, color);
  draw_su_vertex(v, n);
}

void highlight_neighbours(vertex * v, su_graph * s)
{
  print_su_graph(s);
  for (int i = 0; i < v->degree; i++)
  {
    highlight(&s->vertices[v->neighbours[i]], v->neighbours[i], GRAY);
    /*printf("%d\n", v->neighbours[i]);*/
  }
  printf("degree :%d\n\n", v->degree );
}




