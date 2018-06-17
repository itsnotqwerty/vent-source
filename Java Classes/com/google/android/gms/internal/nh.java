package com.google.android.gms.internal;

import java.io.IOException;

public final class nh
  extends mx<nh>
{
  private static volatile nh[] bal;
  public String bam = "";
  
  public nh()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static nh[] ta()
  {
    if (bal == null) {}
    synchronized (nb.aZX)
    {
      if (bal == null) {
        bal = new nh[0];
      }
      return bal;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if ((this.bam != null) && (!this.bam.equals(""))) {
      parammv.d(1, this.bam);
    }
    super.a(parammv);
  }
  
  protected final int st()
  {
    int j = super.st();
    int i = j;
    if (this.bam != null)
    {
      i = j;
      if (!this.bam.equals("")) {
        i = j + mv.e(1, this.bam);
      }
    }
    return i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */