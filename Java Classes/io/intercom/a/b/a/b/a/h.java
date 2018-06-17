package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.b.g;
import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class h
  extends r<Object>
{
  public static final s cRW = new s()
  {
    public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
    {
      if (paramAnonymousa.bkb == Object.class) {
        return new h(paramAnonymouse);
      }
      return null;
    }
  };
  private final e gson;
  
  h(e parame)
  {
    this.gson = parame;
  }
  
  public final Object a(io.intercom.a.b.a.d.a parama)
    throws IOException
  {
    Object localObject = parama.Kh();
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
      localObject = new g();
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
      paramc.Kn();
      return;
    }
    r localr = this.gson.L(paramObject.getClass());
    if ((localr instanceof h))
    {
      paramc.Kl();
      paramc.Km();
      return;
    }
    localr.a(paramc, paramObject);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */