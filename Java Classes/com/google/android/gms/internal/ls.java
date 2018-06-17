package com.google.android.gms.internal;

import java.io.IOException;

public final class ls
  extends mx<ls>
{
  private static volatile ls[] aYk;
  public String aTr = null;
  private Float aXj = null;
  public Double aXk = null;
  public Long aYl = null;
  public String name = null;
  
  public ls()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static ls[] sB()
  {
    if (aYk == null) {}
    synchronized (nb.aZX)
    {
      if (aYk == null) {
        aYk = new ls[0];
      }
      return aYk;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if (this.name != null) {
      parammv.d(1, this.name);
    }
    if (this.aTr != null) {
      parammv.d(2, this.aTr);
    }
    if (this.aYl != null) {
      parammv.e(3, this.aYl.longValue());
    }
    if (this.aXj != null) {
      parammv.e(4, this.aXj.floatValue());
    }
    if (this.aXk != null) {
      parammv.a(5, this.aXk.doubleValue());
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ls)) {
        return false;
      }
      paramObject = (ls)paramObject;
      if (this.name == null)
      {
        if (((ls)paramObject).name != null) {
          return false;
        }
      }
      else if (!this.name.equals(((ls)paramObject).name)) {
        return false;
      }
      if (this.aTr == null)
      {
        if (((ls)paramObject).aTr != null) {
          return false;
        }
      }
      else if (!this.aTr.equals(((ls)paramObject).aTr)) {
        return false;
      }
      if (this.aYl == null)
      {
        if (((ls)paramObject).aYl != null) {
          return false;
        }
      }
      else if (!this.aYl.equals(((ls)paramObject).aYl)) {
        return false;
      }
      if (this.aXj == null)
      {
        if (((ls)paramObject).aXj != null) {
          return false;
        }
      }
      else if (!this.aXj.equals(((ls)paramObject).aXj)) {
        return false;
      }
      if (this.aXk == null)
      {
        if (((ls)paramObject).aXk != null) {
          return false;
        }
      }
      else if (!this.aXk.equals(((ls)paramObject).aXk)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((ls)paramObject).aZO == null) || (((ls)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((ls)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i2 = 0;
    int i3 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int k;
    label42:
    int m;
    label52:
    int n;
    if (this.name == null)
    {
      i = 0;
      if (this.aTr != null) {
        break label138;
      }
      j = 0;
      if (this.aYl != null) {
        break label149;
      }
      k = 0;
      if (this.aXj != null) {
        break label160;
      }
      m = 0;
      if (this.aXk != null) {
        break label172;
      }
      n = 0;
      label62:
      i1 = i2;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label184;
        }
      }
    }
    label138:
    label149:
    label160:
    label172:
    label184:
    for (int i1 = i2;; i1 = this.aZO.hashCode())
    {
      return (n + (m + (k + (j + (i + (i3 + 527) * 31) * 31) * 31) * 31) * 31) * 31 + i1;
      i = this.name.hashCode();
      break;
      j = this.aTr.hashCode();
      break label33;
      k = this.aYl.hashCode();
      break label42;
      m = this.aXj.hashCode();
      break label52;
      n = this.aXk.hashCode();
      break label62;
    }
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.name != null) {
      i = j + mv.e(1, this.name);
    }
    j = i;
    if (this.aTr != null) {
      j = i + mv.e(2, this.aTr);
    }
    i = j;
    if (this.aYl != null) {
      i = j + mv.f(3, this.aYl.longValue());
    }
    j = i;
    if (this.aXj != null)
    {
      this.aXj.floatValue();
      j = i + (mv.db(32) + 4);
    }
    i = j;
    if (this.aXk != null)
    {
      this.aXk.doubleValue();
      i = j + (mv.db(40) + 8);
    }
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */