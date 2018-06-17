package com.google.a.b.a;

import com.google.a.d.c;
import com.google.a.f;
import com.google.a.u;
import com.google.a.v;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.util.ArrayList;
import java.util.List;

public final class a<E>
  extends u<Object>
{
  public static final v bhS = new v()
  {
    public final <T> u<T> a(f paramAnonymousf, com.google.a.c.a<T> paramAnonymousa)
    {
      paramAnonymousa = paramAnonymousa.biJ;
      if ((!(paramAnonymousa instanceof GenericArrayType)) && ((!(paramAnonymousa instanceof Class)) || (!((Class)paramAnonymousa).isArray()))) {
        return null;
      }
      paramAnonymousa = com.google.a.b.b.c(paramAnonymousa);
      return new a(paramAnonymousf, paramAnonymousf.a(com.google.a.c.a.e(paramAnonymousa)), com.google.a.b.b.getRawType(paramAnonymousa));
    }
  };
  private final Class<E> bhT;
  private final u<E> bhU;
  
  public a(f paramf, u<E> paramu, Class<E> paramClass)
  {
    this.bhU = new m(paramf, paramu, paramClass);
    this.bhT = paramClass;
  }
  
  public final Object a(com.google.a.d.a parama)
    throws IOException
  {
    if (parama.vv() == com.google.a.d.b.bku)
    {
      parama.nextNull();
      parama = null;
      return parama;
    }
    ArrayList localArrayList = new ArrayList();
    parama.beginArray();
    while (parama.hasNext()) {
      localArrayList.add(this.bhU.a(parama));
    }
    parama.endArray();
    int j = localArrayList.size();
    Object localObject = Array.newInstance(this.bhT, j);
    int i = 0;
    for (;;)
    {
      parama = (com.google.a.d.a)localObject;
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
      paramc.vF();
      return;
    }
    paramc.vB();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      this.bhU.a(paramc, localObject);
      i += 1;
    }
    paramc.vC();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */