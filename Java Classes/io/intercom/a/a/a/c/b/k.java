package io.intercom.a.a.a.c.b;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import io.intercom.a.a.a.i.a.a.c;
import io.intercom.a.a.a.i.a.b;
import io.intercom.a.a.a.i.a.b.a;
import io.intercom.a.a.a.i.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class k<R>
  implements g.a<R>, a.c
{
  private static final a cKx = new a();
  private static final Handler cKy = new Handler(Looper.getMainLooper(), new b());
  private final io.intercom.a.a.a.c.b.c.a cFC;
  public final io.intercom.a.a.a.c.b.c.a cFD;
  private final io.intercom.a.a.a.c.b.c.a cFI;
  public io.intercom.a.a.a.c.h cIL;
  public boolean cIM;
  u<?> cIN;
  public volatile boolean cIs;
  io.intercom.a.a.a.c.a cJF;
  public final b cJl = new b.a();
  private final android.support.v4.g.k.a<k<?>> cJm;
  public boolean cJu;
  private final a cKA;
  public boolean cKB;
  public boolean cKC;
  public boolean cKD;
  private p cKE;
  public boolean cKF;
  public List<io.intercom.a.a.a.g.h> cKG;
  o<?> cKH;
  public g<R> cKI;
  private final io.intercom.a.a.a.c.b.c.a cKq;
  public final l cKr;
  public final List<io.intercom.a.a.a.g.h> cKz = new ArrayList(2);
  
  k(io.intercom.a.a.a.c.b.c.a parama1, io.intercom.a.a.a.c.b.c.a parama2, io.intercom.a.a.a.c.b.c.a parama3, io.intercom.a.a.a.c.b.c.a parama4, l paraml, android.support.v4.g.k.a<k<?>> parama)
  {
    this(parama1, parama2, parama3, parama4, paraml, parama, cKx);
  }
  
  private k(io.intercom.a.a.a.c.b.c.a parama1, io.intercom.a.a.a.c.b.c.a parama2, io.intercom.a.a.a.c.b.c.a parama3, io.intercom.a.a.a.c.b.c.a parama4, l paraml, android.support.v4.g.k.a<k<?>> parama, a parama5)
  {
    this.cFD = parama1;
    this.cFC = parama2;
    this.cKq = parama3;
    this.cFI = parama4;
    this.cKr = paraml;
    this.cJm = parama;
    this.cKA = parama5;
  }
  
  public final b Ij()
  {
    return this.cJl;
  }
  
  public final io.intercom.a.a.a.c.b.c.a Ir()
  {
    if (this.cKB) {
      return this.cKq;
    }
    if (this.cKC) {
      return this.cFI;
    }
    return this.cFC;
  }
  
  final void Is()
  {
    i.JS();
    this.cKz.clear();
    this.cIL = null;
    this.cKH = null;
    this.cIN = null;
    if (this.cKG != null) {
      this.cKG.clear();
    }
    this.cKF = false;
    this.cIs = false;
    this.cKD = false;
    g localg = this.cKI;
    if (localg.cJo.Il()) {
      localg.Id();
    }
    this.cKI = null;
    this.cKE = null;
    this.cJF = null;
    this.cJm.j(this);
  }
  
  final void It()
  {
    this.cJl.JX();
    if (this.cIs)
    {
      Is();
      return;
    }
    if (this.cKz.isEmpty()) {
      throw new IllegalStateException("Received an exception without any callbacks to notify");
    }
    if (this.cKF) {
      throw new IllegalStateException("Already failed once");
    }
    this.cKF = true;
    this.cKr.a(this, this.cIL, null);
    Iterator localIterator = this.cKz.iterator();
    while (localIterator.hasNext())
    {
      io.intercom.a.a.a.g.h localh = (io.intercom.a.a.a.g.h)localIterator.next();
      if (!b(localh)) {
        localh.a(this.cKE);
      }
    }
    Is();
  }
  
  public final void a(p paramp)
  {
    this.cKE = paramp;
    cKy.obtainMessage(2, this).sendToTarget();
  }
  
  public final void a(u<R> paramu, io.intercom.a.a.a.c.a parama)
  {
    this.cIN = paramu;
    this.cJF = parama;
    cKy.obtainMessage(1, this).sendToTarget();
  }
  
  public final void a(io.intercom.a.a.a.g.h paramh)
  {
    i.JS();
    this.cJl.JX();
    if (this.cKD)
    {
      paramh.a(this.cKH, this.cJF);
      return;
    }
    if (this.cKF)
    {
      paramh.a(this.cKE);
      return;
    }
    this.cKz.add(paramh);
  }
  
  public final void b(g<?> paramg)
  {
    Ir().execute(paramg);
  }
  
  final boolean b(io.intercom.a.a.a.g.h paramh)
  {
    return (this.cKG != null) && (this.cKG.contains(paramh));
  }
  
  static final class a {}
  
  private static final class b
    implements Handler.Callback
  {
    public final boolean handleMessage(Message paramMessage)
    {
      k localk = (k)paramMessage.obj;
      switch (paramMessage.what)
      {
      default: 
        throw new IllegalStateException("Unrecognized message: " + paramMessage.what);
      case 1: 
        localk.cJl.JX();
        if (localk.cIs)
        {
          localk.cIN.recycle();
          localk.Is();
          return true;
        }
        if (localk.cKz.isEmpty()) {
          throw new IllegalStateException("Received a resource without any callbacks to notify");
        }
        if (localk.cKD) {
          throw new IllegalStateException("Already have resource");
        }
        localk.cKH = new o(localk.cIN, localk.cIM, true);
        localk.cKD = true;
        localk.cKH.acquire();
        localk.cKr.a(localk, localk.cIL, localk.cKH);
        int j = localk.cKz.size();
        int i = 0;
        while (i < j)
        {
          paramMessage = (io.intercom.a.a.a.g.h)localk.cKz.get(i);
          if (!localk.b(paramMessage))
          {
            localk.cKH.acquire();
            paramMessage.a(localk.cKH, localk.cJF);
          }
          i += 1;
        }
        localk.cKH.release();
        localk.Is();
        return true;
      case 2: 
        localk.It();
        return true;
      }
      localk.cJl.JX();
      if (!localk.cIs) {
        throw new IllegalStateException("Not cancelled");
      }
      localk.cKr.a(localk, localk.cIL);
      localk.Is();
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */