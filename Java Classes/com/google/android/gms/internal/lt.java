package com.google.android.gms.internal;

import java.io.IOException;

public final class lt
  extends mx<lt>
{
  public lu[] aYm = lu.sC();
  
  public lt()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if ((this.aYm != null) && (this.aYm.length > 0))
    {
      int i = 0;
      while (i < this.aYm.length)
      {
        lu locallu = this.aYm[i];
        if (locallu != null) {
          parammv.a(1, locallu);
        }
        i += 1;
      }
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lt)) {
        return false;
      }
      paramObject = (lt)paramObject;
      if (!nb.equals(this.aYm, ((lt)paramObject).aYm)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lt)paramObject).aZO == null) || (((lt)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lt)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int j = getClass().getName().hashCode();
    int k = nb.hashCode(this.aYm);
    if ((this.aZO == null) || (this.aZO.isEmpty())) {}
    for (int i = 0;; i = this.aZO.hashCode()) {
      return i + ((j + 527) * 31 + k) * 31;
    }
  }
  
  protected final int st()
  {
    int i = super.st();
    int k = i;
    if (this.aYm != null)
    {
      k = i;
      if (this.aYm.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= this.aYm.length) {
            break;
          }
          lu locallu = this.aYm[j];
          k = i;
          if (locallu != null) {
            k = i + mv.b(1, locallu);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */