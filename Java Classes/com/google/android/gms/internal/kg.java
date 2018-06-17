package com.google.android.gms.internal;

final class kg
  implements Runnable
{
  kg(ju paramju, boolean paramBoolean, lb paramlb, fx paramfx) {}
  
  public final void run()
  {
    gt localgt = this.aWG.aWA;
    if (localgt == null)
    {
      this.aWG.qP().aTa.bq("Discarding data. Failed to set user attribute");
      return;
    }
    ju localju = this.aWG;
    if (this.aWK) {}
    for (Object localObject = null;; localObject = this.aVM)
    {
      localju.a(localgt, (dr)localObject, this.aVG);
      this.aWG.po();
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/kg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */