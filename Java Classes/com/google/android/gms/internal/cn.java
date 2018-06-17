package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;

public final class cn<V>
{
  final V aOE;
  private final dk<V> aOF;
  
  cn(dk<V> paramdk, V paramV)
  {
    ae.E(paramdk);
    this.aOF = paramdk;
    this.aOE = paramV;
  }
  
  static cn<Integer> a(String paramString, int paramInt1, int paramInt2)
  {
    return new cn(dk.a(paramString, Integer.valueOf(paramInt2)), Integer.valueOf(paramInt1));
  }
  
  static cn<Long> a(String paramString, long paramLong1, long paramLong2)
  {
    return new cn(dk.b(paramString, Long.valueOf(paramLong2)), Long.valueOf(paramLong1));
  }
  
  static cn<String> a(String paramString1, String paramString2, String paramString3)
  {
    return new cn(dk.s(paramString1, paramString3), paramString2);
  }
  
  static cn<Boolean> a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new cn(dk.e(paramString, paramBoolean2), Boolean.valueOf(paramBoolean1));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */