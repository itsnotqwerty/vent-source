package com.google.android.gms.internal;

import com.google.android.gms.common.m;

public final class bc
{
  public static final String VERSION = String.valueOf(m.aCp / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
  public static final String aMr;
  
  static
  {
    String str = String.valueOf(VERSION);
    if (str.length() != 0) {}
    for (str = "ma".concat(str);; str = new String("ma"))
    {
      aMr = str;
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */