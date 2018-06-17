package io.intercom.a.a.a.c.d.e;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import io.intercom.a.a.a.b.a;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.c.m;
import io.intercom.a.a.a.g.a.f;
import io.intercom.a.a.a.h.b;
import io.intercom.a.a.a.i.h;
import io.intercom.a.a.a.j;
import java.util.ArrayList;
import java.util.List;

final class g
{
  private final io.intercom.a.a.a.c.b.a.e cFr;
  private m<Bitmap> cLa;
  final a cOG;
  final List<b> cOH = new ArrayList();
  private boolean cOI = false;
  private boolean cOJ = false;
  private io.intercom.a.a.a.i<Bitmap> cOK;
  a cOL;
  boolean cOM;
  a cON;
  Bitmap cOO;
  a cOP;
  boolean cOz = false;
  private final Handler handler;
  final j requestManager;
  
  private g(io.intercom.a.a.a.c.b.a.e parame, j paramj, a parama, io.intercom.a.a.a.i<Bitmap> parami, m<Bitmap> paramm, Bitmap paramBitmap)
  {
    this.requestManager = paramj;
    paramj = new Handler(Looper.getMainLooper(), new c());
    this.cFr = parame;
    this.handler = paramj;
    this.cOK = parami;
    this.cOG = parama;
    a(paramm, paramBitmap);
  }
  
  g(c paramc, a parama, int paramInt1, int paramInt2, m<Bitmap> paramm, Bitmap paramBitmap)
  {
    this(paramc.cFr, c.ca(paramc.cFu.getBaseContext()), parama, c.ca(paramc.cFu.getBaseContext()).HC().a(io.intercom.a.a.a.g.g.a(io.intercom.a.a.a.c.b.i.cKc).Jw().Jx().aO(paramInt1, paramInt2)), paramm, paramBitmap);
  }
  
  final Bitmap Jo()
  {
    if (this.cOL != null) {
      return this.cOL.cOR;
    }
    return this.cOO;
  }
  
  final void Jp()
  {
    if ((!this.cOz) || (this.cOI)) {
      return;
    }
    if (this.cOJ) {
      if (this.cOP != null) {
        break label76;
      }
    }
    label76:
    for (boolean bool = true;; bool = false)
    {
      h.b(bool, "Pending target must be null when starting from the first frame");
      this.cOG.HK();
      this.cOJ = false;
      if (this.cOP == null) {
        break;
      }
      a locala = this.cOP;
      this.cOP = null;
      a(locala);
      return;
    }
    this.cOI = true;
    int i = this.cOG.HI();
    long l1 = SystemClock.uptimeMillis();
    long l2 = i;
    this.cOG.advance();
    this.cON = new a(this.handler, this.cOG.HJ(), l2 + l1);
    this.cOK.a(io.intercom.a.a.a.g.g.e(new b(Double.valueOf(Math.random())))).aq(this.cOG).a(this.cON, null);
  }
  
  final void Jq()
  {
    if (this.cOO != null)
    {
      this.cFr.g(this.cOO);
      this.cOO = null;
    }
  }
  
  final void a(a parama)
  {
    this.cOI = false;
    if (this.cOM)
    {
      this.handler.obtainMessage(2, parama).sendToTarget();
      return;
    }
    if (!this.cOz)
    {
      this.cOP = parama;
      return;
    }
    if (parama.cOR != null)
    {
      Jq();
      a locala = this.cOL;
      this.cOL = parama;
      int i = this.cOH.size() - 1;
      while (i >= 0)
      {
        ((b)this.cOH.get(i)).Jn();
        i -= 1;
      }
      if (locala != null) {
        this.handler.obtainMessage(2, locala).sendToTarget();
      }
    }
    Jp();
  }
  
  final void a(m<Bitmap> paramm, Bitmap paramBitmap)
  {
    this.cLa = ((m)h.checkNotNull(paramm, "Argument must not be null"));
    this.cOO = ((Bitmap)h.checkNotNull(paramBitmap, "Argument must not be null"));
    this.cOK = this.cOK.a(new io.intercom.a.a.a.g.g().a(paramm, true));
  }
  
  final int getFrameCount()
  {
    return this.cOG.getFrameCount();
  }
  
  static final class a
    extends f<Bitmap>
  {
    private final long cOQ;
    Bitmap cOR;
    private final Handler handler;
    final int index;
    
    a(Handler paramHandler, int paramInt, long paramLong)
    {
      this.handler = paramHandler;
      this.index = paramInt;
      this.cOQ = paramLong;
    }
  }
  
  public static abstract interface b
  {
    public abstract void Jn();
  }
  
  private final class c
    implements Handler.Callback
  {
    c() {}
    
    public final boolean handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 1)
      {
        paramMessage = (g.a)paramMessage.obj;
        g.this.a(paramMessage);
        return true;
      }
      if (paramMessage.what == 2)
      {
        paramMessage = (g.a)paramMessage.obj;
        g.this.requestManager.b(paramMessage);
      }
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */