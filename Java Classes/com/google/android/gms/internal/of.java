package com.google.android.gms.internal;

public final class of
{
  private static final Object AT = new Object();
  private static of bbk;
  private final w bbl = new w();
  private final nx bbm = new nx(new nq(), new np(), new qe(), new tb(), new l(), new uo(), new tc());
  private final String bbn = w.oT();
  private final qs bbo = new qs();
  private final qt bbp = new qt();
  private final qu bbq = new qu();
  
  static
  {
    of localof = new of();
    synchronized (AT)
    {
      bbk = localof;
      return;
    }
  }
  
  private static of ti()
  {
    synchronized (AT)
    {
      of localof = bbk;
      return localof;
    }
  }
  
  public static w tj()
  {
    return ti().bbl;
  }
  
  public static nx tk()
  {
    return ti().bbm;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/of.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */