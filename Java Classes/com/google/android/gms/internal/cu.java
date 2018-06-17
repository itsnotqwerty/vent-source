package com.google.android.gms.internal;

import com.google.android.gms.common.util.e;

public final class cu
{
  private final e aBm;
  private final String aHq;
  private final long aOQ = 2000L;
  private final int aOR = 60;
  private double aOS = this.aOR;
  private long aOT;
  private final Object aOU = new Object();
  
  private cu(String paramString, e parame)
  {
    this.aHq = paramString;
    this.aBm = parame;
  }
  
  public cu(String paramString, e parame, byte paramByte)
  {
    this(paramString, parame);
  }
  
  public final boolean qb()
  {
    synchronized (this.aOU)
    {
      long l = this.aBm.currentTimeMillis();
      if (this.aOS < this.aOR)
      {
        double d = (l - this.aOT) / this.aOQ;
        if (d > 0.0D) {
          this.aOS = Math.min(this.aOR, d + this.aOS);
        }
      }
      this.aOT = l;
      if (this.aOS >= 1.0D)
      {
        this.aOS -= 1.0D;
        return true;
      }
      String str = this.aHq;
      cv.bt(String.valueOf(str).length() + 34 + "Excessive " + str + " detected; call ignored.");
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */