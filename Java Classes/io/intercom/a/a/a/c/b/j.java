package io.intercom.a.a.a.c.b;

import android.support.v4.g.k.a;
import android.util.Log;
import io.intercom.a.a.a.c.b.b.b;
import io.intercom.a.a.a.c.b.b.h.a;
import io.intercom.a.a.a.i.d;
import io.intercom.a.a.a.i.i;
import java.util.Map;

public final class j
  implements h.a, l, o.a
{
  public final r cKg;
  private final n cKh;
  public final io.intercom.a.a.a.c.b.b.h cKi;
  public final b cKj;
  private final x cKk;
  private final c cKl;
  public final a cKm;
  public final a cKn;
  
  public j(io.intercom.a.a.a.c.b.b.h paramh, io.intercom.a.a.a.c.b.b.a.a parama, io.intercom.a.a.a.c.b.c.a parama1, io.intercom.a.a.a.c.b.c.a parama2, io.intercom.a.a.a.c.b.c.a parama3, io.intercom.a.a.a.c.b.c.a parama4, boolean paramBoolean)
  {
    this(paramh, parama, parama1, parama2, parama3, parama4, paramBoolean, (byte)0);
  }
  
  private j(io.intercom.a.a.a.c.b.b.h paramh, io.intercom.a.a.a.c.b.b.a.a parama, io.intercom.a.a.a.c.b.c.a parama1, io.intercom.a.a.a.c.b.c.a parama2, io.intercom.a.a.a.c.b.c.a parama3, io.intercom.a.a.a.c.b.c.a parama4, boolean paramBoolean, byte paramByte)
  {
    this.cKi = paramh;
    this.cKl = new c(parama);
    parama = new a(paramBoolean);
    this.cKn = parama;
    parama.cIF = this;
    this.cKh = new n();
    this.cKg = new r();
    this.cKj = new b(parama1, parama2, parama3, parama4, this);
    this.cKm = new a(this.cKl);
    this.cKk = new x();
    paramh.a(this);
  }
  
  public static void a(String paramString, long paramLong, io.intercom.a.a.a.c.h paramh)
  {
    Log.v("Engine", paramString + " in " + d.V(paramLong) + "ms, key: " + paramh);
  }
  
  public final void a(k<?> paramk, io.intercom.a.a.a.c.h paramh)
  {
    i.JS();
    this.cKg.a(paramh, paramk);
  }
  
  public final void a(k<?> paramk, io.intercom.a.a.a.c.h paramh, o<?> paramo)
  {
    
    if (paramo != null)
    {
      paramo.a(paramh, this);
      if (paramo.cIM) {
        this.cKn.a(paramh, paramo);
      }
    }
    this.cKg.a(paramh, paramk);
  }
  
  public final void b(u<?> paramu)
  {
    i.JS();
    this.cKk.d(paramu);
  }
  
  public final void b(io.intercom.a.a.a.c.h paramh, o<?> paramo)
  {
    i.JS();
    a.b localb = (a.b)this.cKn.cIE.remove(paramh);
    if (localb != null) {
      localb.reset();
    }
    if (paramo.cIM)
    {
      this.cKi.a(paramh, paramo);
      return;
    }
    this.cKk.d(paramo);
  }
  
  public static final class a
  {
    final g.d cJc;
    public final k.a<g<?>> cJm = io.intercom.a.a.a.i.a.a.a(new io.intercom.a.a.a.i.a.a.a() {});
    public int cKo;
    
    a(g.d paramd)
    {
      this.cJc = paramd;
    }
  }
  
  public static final class b
  {
    final io.intercom.a.a.a.c.b.c.a cFC;
    final io.intercom.a.a.a.c.b.c.a cFD;
    final io.intercom.a.a.a.c.b.c.a cFI;
    public final k.a<k<?>> cJm = io.intercom.a.a.a.i.a.a.a(new io.intercom.a.a.a.i.a.a.a() {});
    final io.intercom.a.a.a.c.b.c.a cKq;
    final l cKr;
    
    b(io.intercom.a.a.a.c.b.c.a parama1, io.intercom.a.a.a.c.b.c.a parama2, io.intercom.a.a.a.c.b.c.a parama3, io.intercom.a.a.a.c.b.c.a parama4, l paraml)
    {
      this.cFD = parama1;
      this.cFC = parama2;
      this.cKq = parama3;
      this.cFI = parama4;
      this.cKr = paraml;
    }
  }
  
  private static final class c
    implements g.d
  {
    private final io.intercom.a.a.a.c.b.b.a.a cKt;
    private volatile io.intercom.a.a.a.c.b.b.a cKu;
    
    c(io.intercom.a.a.a.c.b.b.a.a parama)
    {
      this.cKt = parama;
    }
    
    public final io.intercom.a.a.a.c.b.b.a HZ()
    {
      if (this.cKu == null) {}
      try
      {
        if (this.cKu == null) {
          this.cKu = this.cKt.IC();
        }
        if (this.cKu == null) {
          this.cKu = new b();
        }
        return this.cKu;
      }
      finally {}
    }
  }
  
  public static final class d
  {
    public final k<?> cKv;
    public final io.intercom.a.a.a.g.h cKw;
    
    public d(io.intercom.a.a.a.g.h paramh, k<?> paramk)
    {
      this.cKw = paramh;
      this.cKv = paramk;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */