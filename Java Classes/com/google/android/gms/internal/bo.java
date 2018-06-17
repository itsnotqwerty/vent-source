package com.google.android.gms.internal;

import com.google.android.gms.analytics.n;

public final class bo
  extends bb
{
  private final ah aBD = new ah();
  
  bo(bd parambd)
  {
    super(parambd);
  }
  
  protected final void mG()
  {
    this.aMq.ph().mM().a(this.aBD);
    Object localObject = this.aMq.pk();
    String str = ((dj)localObject).qr();
    if (str != null) {
      this.aBD.aLn = str;
    }
    localObject = ((dj)localObject).qq();
    if (localObject != null) {
      this.aBD.aLo = ((String)localObject);
    }
  }
  
  public final ah pw()
  {
    pf();
    return this.aBD;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */