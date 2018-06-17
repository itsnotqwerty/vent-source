package android.support.design.widget;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class m
{
  private static m nC;
  final Handler mHandler = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public final boolean handleMessage(Message arg1)
    {
      switch (???.what)
      {
      default: 
        return false;
      }
      m localm = m.this;
      m.b localb = (m.b)???.obj;
      synchronized (localm.mLock)
      {
        if ((localm.nD == localb) || (localm.nE == localb)) {
          localm.a(localb, 2);
        }
        return true;
      }
    }
  });
  final Object mLock = new Object();
  b nD;
  b nE;
  
  static m bN()
  {
    if (nC == null) {
      nC = new m();
    }
    return nC;
  }
  
  public final void a(a parama)
  {
    synchronized (this.mLock)
    {
      if ((d(parama)) && (!this.nD.nH))
      {
        this.nD.nH = true;
        this.mHandler.removeCallbacksAndMessages(this.nD);
      }
      return;
    }
  }
  
  final void a(b paramb)
  {
    if (paramb.duration == -2) {
      return;
    }
    int i = 2750;
    if (paramb.duration > 0) {
      i = paramb.duration;
    }
    for (;;)
    {
      this.mHandler.removeCallbacksAndMessages(paramb);
      this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 0, paramb), i);
      return;
      if (paramb.duration == -1) {
        i = 1500;
      }
    }
  }
  
  final boolean a(b paramb, int paramInt)
  {
    a locala = (a)paramb.nG.get();
    if (locala != null)
    {
      this.mHandler.removeCallbacksAndMessages(paramb);
      locala.t(paramInt);
      return true;
    }
    return false;
  }
  
  public final void b(a parama)
  {
    synchronized (this.mLock)
    {
      if ((d(parama)) && (this.nD.nH))
      {
        this.nD.nH = false;
        a(this.nD);
      }
      return;
    }
  }
  
  final void bO()
  {
    if (this.nE != null)
    {
      this.nD = this.nE;
      this.nE = null;
      a locala = (a)this.nD.nG.get();
      if (locala != null) {
        locala.show();
      }
    }
    else
    {
      return;
    }
    this.nD = null;
  }
  
  public final boolean c(a parama)
  {
    for (;;)
    {
      synchronized (this.mLock)
      {
        if (!d(parama))
        {
          if (!e(parama)) {
            break label40;
          }
          break label35;
          return bool;
        }
      }
      label35:
      boolean bool = true;
      continue;
      label40:
      bool = false;
    }
  }
  
  final boolean d(a parama)
  {
    return (this.nD != null) && (this.nD.f(parama));
  }
  
  final boolean e(a parama)
  {
    return (this.nE != null) && (this.nE.f(parama));
  }
  
  static abstract interface a
  {
    public abstract void show();
    
    public abstract void t(int paramInt);
  }
  
  private static final class b
  {
    int duration;
    final WeakReference<m.a> nG;
    boolean nH;
    
    b(int paramInt, m.a parama)
    {
      this.nG = new WeakReference(parama);
      this.duration = paramInt;
    }
    
    final boolean f(m.a parama)
    {
      return (parama != null) && (this.nG.get() == parama);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */