package com.google.a.b.a;

import com.google.a.d.c;
import com.google.a.j;
import com.google.a.k;
import com.google.a.m;
import com.google.a.q;
import com.google.a.r;
import com.google.a.u;
import com.google.a.v;
import java.io.IOException;

public final class l<T>
  extends u<T>
{
  private u<T> bgO;
  private final j<T> biA;
  private final com.google.a.c.a<T> biB;
  private final v biC;
  private final l<T>.a biD = new a((byte)0);
  final com.google.a.f bil;
  private final r<T> biz;
  
  public l(r<T> paramr, j<T> paramj, com.google.a.f paramf, com.google.a.c.a<T> parama, v paramv)
  {
    this.biz = paramr;
    this.biA = paramj;
    this.bil = paramf;
    this.biB = parama;
    this.biC = paramv;
  }
  
  private u<T> vq()
  {
    u localu = this.bgO;
    if (localu != null) {
      return localu;
    }
    localu = this.bil.a(this.biC, this.biB);
    this.bgO = localu;
    return localu;
  }
  
  public final T a(com.google.a.d.a parama)
    throws IOException
  {
    if (this.biA == null) {
      return (T)vq().a(parama);
    }
    if ((com.google.a.b.l.c(parama) instanceof m)) {
      return null;
    }
    return (T)this.biA.vg();
  }
  
  public final void a(c paramc, T paramT)
    throws IOException
  {
    if (this.biz == null)
    {
      vq().a(paramc, paramT);
      return;
    }
    if (paramT == null)
    {
      paramc.vF();
      return;
    }
    com.google.a.b.l.a(this.biz.a(paramT, this.biD), paramc);
  }
  
  private final class a
    implements q
  {
    private a() {}
    
    public final k ac(Object paramObject)
    {
      com.google.a.f localf = l.this.bil;
      if (paramObject == null) {
        return m.bgT;
      }
      Class localClass = paramObject.getClass();
      f localf1 = new f();
      localf.a(paramObject, localClass, localf1);
      return localf1.vz();
    }
  }
  
  private static final class b
    implements v
  {
    private final j<?> biA;
    private final com.google.a.c.a<?> biF;
    private final boolean biG;
    private final Class<?> biH;
    private final r<?> biz;
    
    public b(Object paramObject, com.google.a.c.a<?> parama, boolean paramBoolean)
    {
      r localr;
      if ((paramObject instanceof r))
      {
        localr = (r)paramObject;
        this.biz = localr;
        if (!(paramObject instanceof j)) {
          break label84;
        }
        paramObject = (j)paramObject;
        label35:
        this.biA = ((j)paramObject);
        if ((this.biz == null) && (this.biA == null)) {
          break label89;
        }
      }
      label84:
      label89:
      for (boolean bool = true;; bool = false)
      {
        com.google.a.b.a.au(bool);
        this.biF = parama;
        this.biG = paramBoolean;
        this.biH = null;
        return;
        localr = null;
        break;
        paramObject = null;
        break label35;
      }
    }
    
    public final <T> u<T> a(com.google.a.f paramf, com.google.a.c.a<T> parama)
    {
      boolean bool;
      if (this.biF != null) {
        if ((this.biF.equals(parama)) || ((this.biG) && (this.biF.biJ == parama.bkb))) {
          bool = true;
        }
      }
      while (bool)
      {
        return new l(this.biz, this.biA, paramf, parama, this);
        bool = false;
        continue;
        bool = this.biH.isAssignableFrom(parama.bkb);
      }
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */