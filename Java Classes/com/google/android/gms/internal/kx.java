package com.google.android.gms.internal;

final class kx
  implements Runnable
{
  kx(kt paramkt, long paramLong) {}
  
  public final void run()
  {
    kt localkt = this.aXd;
    long l1 = this.aQv;
    localkt.mN();
    localkt.so();
    localkt.aXb.cancel();
    localkt.aXc.cancel();
    localkt.qP().aTi.j("Activity paused, time", Long.valueOf(l1));
    if (localkt.aXa != 0L)
    {
      hn localhn = localkt.qQ().aTY;
      long l2 = localkt.qQ().aTY.get();
      localhn.set(l1 - localkt.aXa + l2);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */