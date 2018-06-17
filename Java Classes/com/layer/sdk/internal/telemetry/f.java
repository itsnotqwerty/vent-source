package com.layer.sdk.internal.telemetry;

import android.content.Context;
import java.util.Calendar;
import java.util.Comparator;

class f
{
  @com.google.a.a.c("period")
  a btG;
  @com.google.a.a.c("environment")
  private c btH;
  @com.google.a.a.c("device")
  private b btI;
  @com.google.a.a.c("performance")
  e btJ;
  @com.google.a.a.c("usage")
  h btK;
  
  private f() {}
  
  f(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2, String paramString1, String paramString2, String paramString3)
  {
    this.btG = new a(paramCalendar1, paramCalendar2);
    this.btH = new c(paramContext, paramString1, paramString2, paramString3);
    this.btI = new b(paramContext);
    this.btJ = new e();
    this.btK = new h();
  }
  
  public final boolean isValid()
  {
    return (this.btG != null) && (this.btH != null) && (this.btI != null) && (this.btJ != null) && (this.btK != null);
  }
  
  public String toString()
  {
    return "Record{mPeriod=" + this.btG + ", mEnvironment=" + this.btH + ", mDevice=" + this.btI + ", mPerformance=" + this.btJ + ", mUsage=" + this.btK + '}';
  }
  
  static class a
    implements Comparable<a>
  {
    @com.google.a.a.c("start")
    Calendar btL;
    @com.google.a.a.c("end")
    Calendar btM;
    
    private a() {}
    
    a(Calendar paramCalendar1, Calendar paramCalendar2)
    {
      this.btL = paramCalendar1;
      this.btM = paramCalendar2;
    }
    
    public final int a(a parama)
    {
      return this.btM.compareTo(parama.btM);
    }
  }
  
  static final class b
    implements Comparator<f>
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/telemetry/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */