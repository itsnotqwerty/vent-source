package com.google.a.b.a;

import com.google.a.d.c;
import com.google.a.f;
import com.google.a.u;
import com.google.a.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class h
  extends u<Object>
{
  public static final v bhS = new v()
  {
    public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
    {
      if (paramAnonymousa.bkb == Object.class) {
        return new h(paramAnonymousf);
      }
      return null;
    }
  };
  private final f bil;
  
  h(f paramf)
  {
    this.bil = paramf;
  }
  
  public final Object a(com.google.a.d.a parama)
    throws IOException
  {
    Object localObject = parama.vv();
    switch (2.bim[localObject.ordinal()])
    {
    default: 
      throw new IllegalStateException();
    case 1: 
      localObject = new ArrayList();
      parama.beginArray();
      while (parama.hasNext()) {
        ((List)localObject).add(a(parama));
      }
      parama.endArray();
      return localObject;
    case 2: 
      localObject = new com.google.a.b.h();
      parama.beginObject();
      while (parama.hasNext()) {
        ((Map)localObject).put(parama.nextName(), a(parama));
      }
      parama.endObject();
      return localObject;
    case 3: 
      return parama.nextString();
    case 4: 
      return Double.valueOf(parama.nextDouble());
    case 5: 
      return Boolean.valueOf(parama.nextBoolean());
    }
    parama.nextNull();
    return null;
  }
  
  public final void a(c paramc, Object paramObject)
    throws IOException
  {
    if (paramObject == null)
    {
      paramc.vF();
      return;
    }
    u localu = this.bil.l(paramObject.getClass());
    if ((localu instanceof h))
    {
      paramc.vD();
      paramc.vE();
      return;
    }
    localu.a(paramc, paramObject);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */