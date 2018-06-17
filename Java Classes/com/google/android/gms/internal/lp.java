package com.google.android.gms.internal;

import java.io.IOException;

public final class lp
  extends mx<lp>
{
  private static volatile lp[] aYb;
  public String key = null;
  public String value = null;
  
  public lp()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static lp[] sy()
  {
    if (aYb == null) {}
    synchronized (nb.aZX)
    {
      if (aYb == null) {
        aYb = new lp[0];
      }
      return aYb;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.key != null) {
      parammv.d(1, this.key);
    }
    if (this.value != null) {
      parammv.d(2, this.value);
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lp)) {
        return false;
      }
      paramObject = (lp)paramObject;
      if (this.key == null)
      {
        if (((lp)paramObject).key != null) {
          return false;
        }
      }
      else if (!this.key.equals(((lp)paramObject).key)) {
        return false;
      }
      if (this.value == null)
      {
        if (((lp)paramObject).value != null) {
          return false;
        }
      }
      else if (!this.value.equals(((lp)paramObject).value)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lp)paramObject).aZO == null) || (((lp)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lp)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int m = 0;
    int n = getClass().getName().hashCode();
    int i;
    int j;
    if (this.key == null)
    {
      i = 0;
      if (this.value != null) {
        break label89;
      }
      j = 0;
      label33:
      k = m;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label100;
        }
      }
    }
    label89:
    label100:
    for (int k = m;; k = this.aZO.hashCode())
    {
      return (j + (i + (n + 527) * 31) * 31) * 31 + k;
      i = this.key.hashCode();
      break;
      j = this.value.hashCode();
      break label33;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.key != null) {
      i = j + mv.e(1, this.key);
    }
    j = i;
    if (this.value != null) {
      j = i + mv.e(2, this.value);
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */