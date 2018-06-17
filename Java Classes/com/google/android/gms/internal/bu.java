package com.google.android.gms.internal;

public enum bu
{
  private bu() {}
  
  public static bu bG(String paramString)
  {
    if ("BATCH_BY_SESSION".equalsIgnoreCase(paramString)) {
      return aNo;
    }
    if ("BATCH_BY_TIME".equalsIgnoreCase(paramString)) {
      return aNp;
    }
    if ("BATCH_BY_BRUTE_FORCE".equalsIgnoreCase(paramString)) {
      return aNq;
    }
    if ("BATCH_BY_COUNT".equalsIgnoreCase(paramString)) {
      return aNr;
    }
    if ("BATCH_BY_SIZE".equalsIgnoreCase(paramString)) {
      return aNs;
    }
    return aNn;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */