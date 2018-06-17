package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.util.ArrayList;
import java.util.List;

public final class a<E>
  extends r<Object>
{
  public static final s cRW = new s()
  {
    public final <T> r<T> a(e paramAnonymouse, io.intercom.a.b.a.c.a<T> paramAnonymousa)
    {
      paramAnonymousa = paramAnonymousa.biJ;
      if ((!(paramAnonymousa instanceof GenericArrayType)) && ((!(paramAnonymousa instanceof Class)) || (!((Class)paramAnonymousa).isArray()))) {
        return null;
      }
      paramAnonymousa = io.intercom.a.b.a.b.b.c(paramAnonymousa);
      return new a(paramAnonymouse, paramAnonymouse.a(io.intercom.a.b.a.c.a.f(paramAnonymousa)), io.intercom.a.b.a.b.b.getRawType(paramAnonymousa));
    }
  };
  private final Class<E> bhT;
  private final r<E> cRX;
  
  public a(e parame, r<E> paramr, Class<E> paramClass)
  {
    this.cRX = new m(parame, paramr, paramClass);
    this.bhT = paramClass;
  }
  
  public final Object a(io.intercom.a.b.a.d.a parama)
    throws IOException
  {
    if (parama.Kh() == io.intercom.a.b.a.d.b.cTE)
    {
      parama.nextNull();
      parama = null;
      return parama;
    }
    ArrayList localArrayList = new ArrayList();
    parama.beginArray();
    while (parama.hasNext()) {
      localArrayList.add(this.cRX.a(parama));
    }
    parama.endArray();
    int j = localArrayList.size();
    Object localObject = Array.newInstance(this.bhT, j);
    int i = 0;
    for (;;)
    {
      parama = (io.intercom.a.b.a.d.a)localObject;
      if (i >= j) {
        break;
      }
      Array.set(localObject, i, localArrayList.get(i));
      i += 1;
    }
  }
  
  public final void a(c paramc, Object paramObject)
    throws IOException
  {
    if (paramObject == null)
    {
      paramc.Kn();
      return;
    }
    paramc.Kj();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      this.cRX.a(paramc, localObject);
      i += 1;
    }
    paramc.Kk();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */