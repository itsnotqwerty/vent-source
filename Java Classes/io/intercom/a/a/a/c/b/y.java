package io.intercom.a.a.a.c.b;

import android.util.Log;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.c.c.n.a;
import io.intercom.a.a.a.h.e;
import java.util.Collections;
import java.util.List;

final class y
  implements b.a<Object>, e, e.a
{
  private final f<?> cIP;
  private final e.a cIQ;
  private volatile n.a<?> cIV;
  private int cLc;
  private b cLd;
  private Object cLe;
  private c cLf;
  
  y(f<?> paramf, e.a parama)
  {
    this.cIP = paramf;
    this.cIQ = parama;
  }
  
  public final boolean HW()
  {
    Object localObject1;
    long l;
    if (this.cLe != null)
    {
      localObject1 = this.cLe;
      this.cLe = null;
      l = io.intercom.a.a.a.i.d.JQ();
    }
    try
    {
      io.intercom.a.a.a.c.d locald = this.cIP.cFu.cFv.cFX.I(localObject1.getClass());
      if (locald != null)
      {
        d locald1 = new d(locald, localObject1, this.cIP.cIZ);
        this.cLf = new c(this.cIV.cIS, this.cIP.cIX);
        this.cIP.HZ().a(this.cLf, locald1);
        if (Log.isLoggable("SourceGenerator", 2)) {
          Log.v("SourceGenerator", "Finished encoding source to cache, key: " + this.cLf + ", data: " + localObject1 + ", encoder: " + locald + ", duration: " + io.intercom.a.a.a.i.d.V(l));
        }
        this.cIV.cMW.cleanup();
        this.cLd = new b(Collections.singletonList(this.cIV.cIS), this.cIP, this);
        if ((this.cLd != null) && (this.cLd.HW())) {
          return true;
        }
      }
      else
      {
        throw new h.e(localObject1.getClass());
      }
    }
    finally
    {
      this.cIV.cMW.cleanup();
    }
    this.cLd = null;
    this.cIV = null;
    boolean bool = false;
    if (!bool)
    {
      if (this.cLc < this.cIP.Ia().size()) {}
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label430;
        }
        List localList = this.cIP.Ia();
        i = this.cLc;
        this.cLc = (i + 1);
        this.cIV = ((n.a)localList.get(i));
        if ((this.cIV == null) || ((!this.cIP.diskCacheStrategy.b(this.cIV.cMW.HT())) && (!this.cIP.z(this.cIV.cMW.HU())))) {
          break;
        }
        this.cIV.cMW.a(this.cIP.cJg, this);
        bool = true;
        break;
      }
    }
    label430:
    return bool;
  }
  
  public final void HY()
  {
    throw new UnsupportedOperationException();
  }
  
  public final void a(io.intercom.a.a.a.c.h paramh, Exception paramException, io.intercom.a.a.a.c.a.b<?> paramb, io.intercom.a.a.a.c.a parama)
  {
    this.cIQ.a(paramh, paramException, paramb, this.cIV.cMW.HT());
  }
  
  public final void a(io.intercom.a.a.a.c.h paramh1, Object paramObject, io.intercom.a.a.a.c.a.b<?> paramb, io.intercom.a.a.a.c.a parama, io.intercom.a.a.a.c.h paramh2)
  {
    this.cIQ.a(paramh1, paramObject, paramb, this.cIV.cMW.HT(), paramh1);
  }
  
  public final void as(Object paramObject)
  {
    i locali = this.cIP.diskCacheStrategy;
    if ((paramObject != null) && (locali.b(this.cIV.cMW.HT())))
    {
      this.cLe = paramObject;
      this.cIQ.HY();
      return;
    }
    this.cIQ.a(this.cIV.cIS, paramObject, this.cIV.cMW, this.cIV.cMW.HT(), this.cLf);
  }
  
  public final void cancel()
  {
    n.a locala = this.cIV;
    if (locala != null) {
      locala.cMW.cancel();
    }
  }
  
  public final void i(Exception paramException)
  {
    this.cIQ.a(this.cLf, paramException, this.cIV.cMW, this.cIV.cMW.HT());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */