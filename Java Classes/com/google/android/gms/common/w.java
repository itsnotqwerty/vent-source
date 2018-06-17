package com.google.android.gms.common;

class w
{
  private static final w aJX = new w(true, null, null);
  final boolean aJY;
  private String aJZ;
  final Throwable cause;
  
  w(boolean paramBoolean, String paramString, Throwable paramThrowable)
  {
    this.aJY = paramBoolean;
    this.aJZ = paramString;
    this.cause = paramThrowable;
  }
  
  static w a(String paramString, o paramo, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new x(paramString, paramo, paramBoolean1, paramBoolean2, (byte)0);
  }
  
  static w a(String paramString, Throwable paramThrowable)
  {
    return new w(false, paramString, paramThrowable);
  }
  
  static w bl(String paramString)
  {
    return new w(false, paramString, null);
  }
  
  static w oP()
  {
    return aJX;
  }
  
  String oQ()
  {
    return this.aJZ;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */