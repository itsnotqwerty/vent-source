package com.google.android.gms.internal;

import java.util.List;

public final class gs<V>
{
  final V aSN;
  private final V aSO;
  final String key;
  
  private gs(String paramString, V paramV1, V paramV2)
  {
    this.aSN = paramV1;
    this.aSO = paramV2;
    this.key = paramString;
  }
  
  static gs<Long> b(String paramString, long paramLong1, long paramLong2)
  {
    paramString = new gs(paramString, Long.valueOf(paramLong1), Long.valueOf(paramLong2));
    gr.aRU.add(paramString);
    return paramString;
  }
  
  static gs<Integer> c(String paramString, int paramInt1, int paramInt2)
  {
    paramString = new gs(paramString, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2));
    gr.aRT.add(paramString);
    return paramString;
  }
  
  static gs<Boolean> cf(String paramString)
  {
    paramString = new gs(paramString, Boolean.valueOf(false), Boolean.valueOf(false));
    gr.aRV.add(paramString);
    return paramString;
  }
  
  static gs<String> d(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = new gs(paramString1, paramString2, paramString3);
    gr.aRW.add(paramString1);
    return paramString1;
  }
  
  public final V get(V paramV)
  {
    if (paramV != null) {
      return paramV;
    }
    return (V)this.aSN;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */