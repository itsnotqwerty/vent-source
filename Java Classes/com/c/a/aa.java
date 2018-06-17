package com.c.a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public final class aa
{
  final d bMY;
  final HandlerThread bOX;
  long bOY;
  long bOZ;
  long bPa;
  long bPb;
  long bPc;
  long bPd;
  long bPe;
  long bPf;
  int bPg;
  int bPh;
  int bPi;
  final Handler handler;
  
  public aa(d paramd)
  {
    this.bMY = paramd;
    this.bOX = new HandlerThread("Picasso-Stats", 10);
    this.bOX.start();
    ag.a(this.bOX.getLooper());
    this.handler = new a(this.bOX.getLooper(), this);
  }
  
  final void AB()
  {
    this.handler.sendEmptyMessage(0);
  }
  
  final void a(Bitmap paramBitmap, int paramInt)
  {
    int i = ag.d(paramBitmap);
    this.handler.sendMessage(this.handler.obtainMessage(paramInt, i, 0));
  }
  
  private static final class a
    extends Handler
  {
    private final aa bMZ;
    
    public a(Looper paramLooper, aa paramaa)
    {
      super();
      this.bMZ = paramaa;
    }
    
    public final void handleMessage(final Message paramMessage)
    {
      long l;
      switch (paramMessage.what)
      {
      default: 
        t.bNY.post(new Runnable()
        {
          public final void run()
          {
            throw new AssertionError("Unhandled stats message." + paramMessage.what);
          }
        });
        return;
      case 0: 
        paramMessage = this.bMZ;
        paramMessage.bOY += 1L;
        return;
      case 1: 
        paramMessage = this.bMZ;
        paramMessage.bOZ += 1L;
        return;
      case 2: 
        localaa = this.bMZ;
        l = paramMessage.arg1;
        localaa.bPh += 1;
        localaa.bPb = (l + localaa.bPb);
        i = localaa.bPh;
        localaa.bPe = (localaa.bPb / i);
        return;
      case 3: 
        localaa = this.bMZ;
        l = paramMessage.arg1;
        localaa.bPi += 1;
        localaa.bPc = (l + localaa.bPc);
        i = localaa.bPh;
        localaa.bPf = (localaa.bPc / i);
        return;
      }
      aa localaa = this.bMZ;
      paramMessage = (Long)paramMessage.obj;
      localaa.bPg += 1;
      localaa.bPa += paramMessage.longValue();
      int i = localaa.bPg;
      localaa.bPd = (localaa.bPa / i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */