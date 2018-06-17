package com.google.android.gms.internal;

import java.io.IOException;

public final class ni
  extends mx<ni>
{
  public String bam = "";
  public String ban = "";
  public long bao = 0L;
  public String bap = "";
  public long baq = 0L;
  public long bar = 0L;
  public String bas = "";
  public String bat = "";
  public String bau = "";
  public String bav = "";
  public String baw = "";
  public int bax = 0;
  public nh[] bay = nh.ta();
  
  public ni()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    if ((this.bam != null) && (!this.bam.equals(""))) {
      parammv.d(1, this.bam);
    }
    if ((this.ban != null) && (!this.ban.equals(""))) {
      parammv.d(2, this.ban);
    }
    if (this.bao != 0L) {
      parammv.e(3, this.bao);
    }
    if ((this.bap != null) && (!this.bap.equals(""))) {
      parammv.d(4, this.bap);
    }
    if (this.baq != 0L) {
      parammv.e(5, this.baq);
    }
    if (this.bar != 0L) {
      parammv.e(6, this.bar);
    }
    if ((this.bas != null) && (!this.bas.equals(""))) {
      parammv.d(7, this.bas);
    }
    if ((this.bat != null) && (!this.bat.equals(""))) {
      parammv.d(8, this.bat);
    }
    if ((this.bau != null) && (!this.bau.equals(""))) {
      parammv.d(9, this.bau);
    }
    if ((this.bav != null) && (!this.bav.equals(""))) {
      parammv.d(10, this.bav);
    }
    if ((this.baw != null) && (!this.baw.equals(""))) {
      parammv.d(11, this.baw);
    }
    if (this.bax != 0) {
      parammv.aw(12, this.bax);
    }
    if ((this.bay != null) && (this.bay.length > 0))
    {
      int i = 0;
      while (i < this.bay.length)
      {
        nh localnh = this.bay[i];
        if (localnh != null) {
          parammv.a(13, localnh);
        }
        i += 1;
      }
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
    j = i;
    if (this.ban != null)
    {
      j = i;
      if (!this.ban.equals("")) {
        j = i + mv.e(2, this.ban);
      }
    }
    i = j;
    if (this.bao != 0L) {
      i = j + mv.f(3, this.bao);
    }
    j = i;
    if (this.bap != null)
    {
      j = i;
      if (!this.bap.equals("")) {
        j = i + mv.e(4, this.bap);
      }
    }
    i = j;
    if (this.baq != 0L) {
      i = j + mv.f(5, this.baq);
    }
    j = i;
    if (this.bar != 0L) {
      j = i + mv.f(6, this.bar);
    }
    i = j;
    if (this.bas != null)
    {
      i = j;
      if (!this.bas.equals("")) {
        i = j + mv.e(7, this.bas);
      }
    }
    j = i;
    if (this.bat != null)
    {
      j = i;
      if (!this.bat.equals("")) {
        j = i + mv.e(8, this.bat);
      }
    }
    i = j;
    if (this.bau != null)
    {
      i = j;
      if (!this.bau.equals("")) {
        i = j + mv.e(9, this.bau);
      }
    }
    j = i;
    if (this.bav != null)
    {
      j = i;
      if (!this.bav.equals("")) {
        j = i + mv.e(10, this.bav);
      }
    }
    int k = j;
    if (this.baw != null)
    {
      k = j;
      if (!this.baw.equals("")) {
        k = j + mv.e(11, this.baw);
      }
    }
    i = k;
    if (this.bax != 0) {
      i = k + mv.ax(12, this.bax);
    }
    j = i;
    if (this.bay != null)
    {
      j = i;
      if (this.bay.length > 0)
      {
        j = 0;
        while (j < this.bay.length)
        {
          nh localnh = this.bay[j];
          k = i;
          if (localnh != null) {
            k = i + mv.b(13, localnh);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ni.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */