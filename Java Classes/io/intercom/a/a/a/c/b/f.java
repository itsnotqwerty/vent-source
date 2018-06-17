package io.intercom.a.a.a.c.b;

import io.intercom.a.a.a.c.b.b.a;
import io.intercom.a.a.a.c.c.n;
import io.intercom.a.a.a.c.c.n.a;
import io.intercom.a.a.a.c.d.b;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.m;
import io.intercom.a.a.a.e;
import io.intercom.a.a.a.g;
import io.intercom.a.a.a.h.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class f<Transcode>
{
  public e cFu;
  public Class<Transcode> cGh;
  public Object cGk;
  final List<io.intercom.a.a.a.c.h> cIO = new ArrayList();
  public io.intercom.a.a.a.c.h cIX;
  public j cIZ;
  final List<n.a<?>> cJa = new ArrayList();
  public Class<?> cJb;
  public g.d cJc;
  public Map<Class<?>, m<?>> cJd;
  boolean cJe;
  boolean cJf;
  public g cJg;
  public boolean cJh;
  public boolean cJi;
  public i diskCacheStrategy;
  public int height;
  public int width;
  
  final <Data> s<Data, ?, Transcode> A(Class<Data> paramClass)
  {
    return this.cFu.cFv.a(paramClass, this.cJb, this.cGh);
  }
  
  final <Z> m<Z> B(Class<Z> paramClass)
  {
    Object localObject2 = (m)this.cJd.get(paramClass);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      Iterator localIterator = this.cJd.entrySet().iterator();
      do
      {
        localObject1 = localObject2;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject1 = (Map.Entry)localIterator.next();
      } while (!((Class)((Map.Entry)localObject1).getKey()).isAssignableFrom(paramClass));
      localObject1 = (m)((Map.Entry)localObject1).getValue();
    }
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      if ((this.cJd.isEmpty()) && (this.cJh)) {
        throw new IllegalArgumentException("Missing transformation for " + paramClass + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
      }
      localObject2 = b.IU();
    }
    return (m<Z>)localObject2;
  }
  
  final a HZ()
  {
    return this.cJc.HZ();
  }
  
  final List<n.a<?>> Ia()
  {
    if (!this.cJe)
    {
      this.cJe = true;
      this.cJa.clear();
      List localList = this.cFu.cFv.ap(this.cGk);
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        n.a locala = ((n)localList.get(i)).b(this.cGk, this.width, this.height, this.cIZ);
        if (locala != null) {
          this.cJa.add(locala);
        }
        i += 1;
      }
    }
    return this.cJa;
  }
  
  final List<io.intercom.a.a.a.c.h> Ib()
  {
    if (!this.cJf)
    {
      this.cJf = true;
      this.cIO.clear();
      List localList = Ia();
      int k = localList.size();
      int i = 0;
      while (i < k)
      {
        n.a locala = (n.a)localList.get(i);
        if (!this.cIO.contains(locala.cIS)) {
          this.cIO.add(locala.cIS);
        }
        int j = 0;
        while (j < locala.cMV.size())
        {
          if (!this.cIO.contains(locala.cMV.get(j))) {
            this.cIO.add(locala.cMV.get(j));
          }
          j += 1;
        }
        i += 1;
      }
    }
    return this.cIO;
  }
  
  final List<n<File, ?>> m(File paramFile)
    throws h.c
  {
    return this.cFu.cFv.ap(paramFile);
  }
  
  final boolean z(Class<?> paramClass)
  {
    return A(paramClass) != null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */