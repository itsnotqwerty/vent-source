package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.b.j;
import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.h;
import io.intercom.a.b.a.k;
import io.intercom.a.b.a.o;
import io.intercom.a.b.a.r;
import io.intercom.a.b.a.s;
import java.io.IOException;

public final class l<T>
  extends r<T>
{
  private r<T> cRs;
  private final o<T> cSm;
  private final h<T> cSn;
  private final io.intercom.a.b.a.c.a<T> cSo;
  private final s cSp;
  private final l<T>.a cSq = new a((byte)0);
  final e gson;
  
  public l(o<T> paramo, h<T> paramh, e parame, io.intercom.a.b.a.c.a<T> parama)
  {
    this.cSm = paramo;
    this.cSn = paramh;
    this.gson = parame;
    this.cSo = parama;
    this.cSp = null;
  }
  
  private r<T> Ke()
  {
    r localr = this.cRs;
    if (localr != null) {
      return localr;
    }
    localr = this.gson.a(this.cSp, this.cSo);
    this.cRs = localr;
    return localr;
  }
  
  public final T a(io.intercom.a.b.a.d.a parama)
    throws IOException
  {
    if (this.cSn == null) {
      return (T)Ke().a(parama);
    }
    if ((j.c(parama) instanceof k)) {
      return null;
    }
    return (T)this.cSn.JZ();
  }
  
  public final void a(c paramc, T paramT)
    throws IOException
  {
    if (this.cSm == null)
    {
      Ke().a(paramc, paramT);
      return;
    }
    if (paramT == null)
    {
      paramc.Kn();
      return;
    }
    j.a(this.cSm.Kb(), paramc);
  }
  
  private final class a
  {
    private a() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */