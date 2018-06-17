package com.google.a.b.a;

import com.google.a.a.b;
import com.google.a.b.c;
import com.google.a.b.i;
import com.google.a.c.a;
import com.google.a.f;
import com.google.a.j;
import com.google.a.r;
import com.google.a.u;
import com.google.a.v;

public final class d
  implements v
{
  private final c bgt;
  
  public d(c paramc)
  {
    this.bgt = paramc;
  }
  
  static u<?> a(c paramc, f paramf, a<?> parama, b paramb)
  {
    Object localObject = paramc.b(a.t(paramb.value())).vo();
    if ((localObject instanceof u)) {}
    for (paramc = (u)localObject;; paramc = ((v)localObject).a(paramf, parama))
    {
      paramf = paramc;
      if (paramc != null)
      {
        paramf = paramc;
        if (paramb.vl()) {
          paramf = paramc.vi();
        }
      }
      return paramf;
      if (!(localObject instanceof v)) {
        break;
      }
    }
    if (((localObject instanceof r)) || ((localObject instanceof j)))
    {
      if ((localObject instanceof r))
      {
        paramc = (r)localObject;
        label112:
        if (!(localObject instanceof j)) {
          break label149;
        }
      }
      label149:
      for (localObject = (j)localObject;; localObject = null)
      {
        paramc = new l(paramc, (j)localObject, paramf, parama, null);
        break;
        paramc = null;
        break label112;
      }
    }
    throw new IllegalArgumentException("Invalid attempt to bind an instance of " + localObject.getClass().getName() + " as a @JsonAdapter for " + parama.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
  }
  
  public final <T> u<T> a(f paramf, a<T> parama)
  {
    b localb = (b)parama.bkb.getAnnotation(b.class);
    if (localb == null) {
      return null;
    }
    return a(this.bgt, paramf, parama, localb);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */