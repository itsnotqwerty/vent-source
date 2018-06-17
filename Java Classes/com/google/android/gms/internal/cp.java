package com.google.android.gms.internal;

final class cp
  implements cd<cq>
{
  private final bd aMq;
  private final cq aOG;
  
  public cp(bd parambd)
  {
    this.aMq = parambd;
    this.aOG = new cq();
  }
  
  public final void c(String paramString, int paramInt)
  {
    if ("ga_dispatchPeriod".equals(paramString))
    {
      this.aOG.aOI = paramInt;
      return;
    }
    this.aMq.pg().g("Int xml configuration name not recognized", paramString);
  }
  
  public final void d(String paramString, boolean paramBoolean)
  {
    if ("ga_dryRun".equals(paramString))
    {
      paramString = this.aOG;
      if (paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        paramString.aOJ = i;
        return;
      }
    }
    this.aMq.pg().g("Bool xml configuration name not recognized", paramString);
  }
  
  public final void q(String paramString1, String paramString2)
  {
    if ("ga_appName".equals(paramString1))
    {
      this.aOG.aLn = paramString2;
      return;
    }
    if ("ga_appVersion".equals(paramString1))
    {
      this.aOG.aLo = paramString2;
      return;
    }
    if ("ga_logLevel".equals(paramString1))
    {
      this.aOG.aOH = paramString2;
      return;
    }
    this.aMq.pg().g("String xml configuration name not recognized", paramString1);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */