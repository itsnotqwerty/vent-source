package com.google.android.gms.internal;

public class dk<T>
{
  private static final Object AT = new Object();
  private static dq aPw = null;
  private static int aPx = 0;
  private static String aPy = "com.google.android.providers.gsf.permission.READ_GSERVICES";
  private T aPA;
  private T aPB = null;
  private String aPz;
  
  protected dk(String paramString, T paramT)
  {
    this.aPz = paramString;
    this.aPA = paramT;
  }
  
  public static dk<Float> a(String paramString, Float paramFloat)
  {
    return new do(paramString, paramFloat);
  }
  
  public static dk<Integer> a(String paramString, Integer paramInteger)
  {
    return new dn(paramString, paramInteger);
  }
  
  public static dk<Long> b(String paramString, Long paramLong)
  {
    return new dm(paramString, paramLong);
  }
  
  public static dk<Boolean> e(String paramString, boolean paramBoolean)
  {
    return new dl(paramString, Boolean.valueOf(paramBoolean));
  }
  
  public static dk<String> s(String paramString1, String paramString2)
  {
    return new dp(paramString1, paramString2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/dk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */