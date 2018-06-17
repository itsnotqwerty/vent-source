package com.google.android.gms.internal;

final class iw
  implements Runnable
{
  iw(ie paramie, String paramString1, String paramString2, String paramString3, long paramLong) {}
  
  public final void run()
  {
    if (this.aVN == null)
    {
      ie.a(this.aVH).qG().a(this.aVD, null);
      return;
    }
    jp localjp = new jp();
    localjp.aWh = this.aVO;
    localjp.aWi = this.aVN;
    localjp.aWj = this.aVP;
    ie.a(this.aVH).qG().a(this.aVD, localjp);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/iw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */