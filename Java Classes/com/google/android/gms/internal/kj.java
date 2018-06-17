package com.google.android.gms.internal;

final class kj
  implements Runnable
{
  kj(ki paramki, gt paramgt) {}
  
  public final void run()
  {
    synchronized (this.aWQ)
    {
      ki.a(this.aWQ);
      if (!this.aWQ.aWG.isConnected())
      {
        this.aWQ.aWG.qP().aTi.bq("Connected to service");
        this.aWQ.aWG.a(this.aWP);
      }
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */