#include "raylib.h"
#include "b_simple_undirected.c"

#define x_offset -16
#define y_offset -14

void draw_su_vertex(vertex* pvertex, int n);
void draw_su_graph(su_graph *);
void draw_su_edge(su_graph * s, edge * e, Color color);
int is_hovered(vertex *, Vector2 mouse_pos, float radius);
void highlight_vertex(vertex * v, int n,  Color color);
void highlight_edge(su_graph * s, edge * e, Color color);
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
    draw_su_edge(s, &s->edges[i], BLACK);
  
  for (int i = 0; i < s->n_vertices; i++)
    draw_su_vertex(&s->vertices[i],i);
}

void draw_su_edge(su_graph * s, edge * e, Color color)
{
  DrawLineEx((Vector2){s->vertices[e->start].x, s->vertices[e->start].y},
             (Vector2){s->vertices[e->end].x ,s->vertices[e->end].y}, 3.0, color);
}

int is_hovered(vertex * v, Vector2 mouse_pos, float radius)
{
  float distance = sqrt(pow((v->x - mouse_pos.x), 2) + pow((v->y - mouse_pos.y), 2)); 
  if (distance <= radius){return 1;}
  else   return 0;
  
}

void highlight_vertex(vertex * v,int n, Color color)
{
  DrawCircle(v->x, v->y, 37.0f, color);
  draw_su_vertex(v, n);
}

void highlight_neighbours(vertex * v, su_graph * s)
{
  for (int i = 0; i < v->degree; i++)
  {
    highlight_vertex(&s->vertices[v->neighbours[i]], v->neighbours[i], GRAY);
  }
}

void highlight_edge(su_graph * s, edge * e, Color color)
{
  draw_su_edge(s, e, RED);
  draw_su_vertex(&s->vertices[e->start], e->start);
  draw_su_vertex(&s->vertices[e->end], e->end);
}








/*void gui_read_su_graph(char * name, int n_vertices, int n_edges){*/
/*  su_graph s;*/
/*  s.name = name;*/
/*  s.n_vertices = n_vertices;*/
/*  s.n_edges = n_edges;*/
/*  use main function arggument to make a new graph*/
/**/
/*}*/


