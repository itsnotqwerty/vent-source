package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;

final class gl
{
  final String aQx;
  final long aRI;
  final long aRJ;
  final long aRK;
  final long aRL;
  final Long aRM;
  final Long aRN;
  final Boolean aRO;
  final String name;
  
  gl(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, long paramLong4, Long paramLong5, Long paramLong6, Boolean paramBoolean)
  {
    ae.bf(paramString1);
    ae.bf(paramString2);
    if (paramLong1 >= 0L)
    {
      bool = true;
      ae.au(bool);
      if (paramLong2 < 0L) {
        break label116;
      }
      bool = true;
      label38:
      ae.au(bool);
      if (paramLong4 < 0L) {
        break label122;
      }
    }
    label116:
    label122:
    for (boolean bool = true;; bool = false)
    {
      ae.au(bool);
      this.aQx = paramString1;
      this.name = paramString2;
      this.aRI = paramLong1;
      this.aRJ = paramLong2;
      this.aRK = paramLong3;
      this.aRL = paramLong4;
      this.aRM = paramLong5;
      this.aRN = paramLong6;
      this.aRO = paramBoolean;
      return;
      bool = false;
      break;
      bool = false;
      break label38;
    }
  }
  
  final gl B(long paramLong)
  {
    return new gl(this.aQx, this.name, this.aRI, this.aRJ, paramLong, this.aRL, this.aRM, this.aRN, this.aRO);
  }
  
  final gl C(long paramLong)
  {
    return new gl(this.aQx, this.name, this.aRI, this.aRJ, this.aRK, paramLong, this.aRM, this.aRN, this.aRO);
  }
  
  final gl a(Long paramLong1, Long paramLong2, Boolean paramBoolean)
  {
    if ((paramBoolean != null) && (!paramBoolean.booleanValue())) {
      paramBoolean = null;
    }
    for (;;)
    {
      return new gl(this.aQx, this.name, this.aRI, this.aRJ, this.aRK, this.aRL, paramLong1, paramLong2, paramBoolean);
    }
  }
  
  final gl rA()
  {
    return new gl(this.aQx, this.name, this.aRI + 1L, this.aRJ + 1L, this.aRK, this.aRL, this.aRM, this.aRN, this.aRO);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */