package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.v4.g.a;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class fs
  extends ix
{
  final Map<String, Long> aQr = new a();
  final Map<String, Integer> aQs = new a();
  long aQt;
  
  public fs(hz paramhz)
  {
    super(paramhz);
  }
  
  final void a(long paramLong, jp paramjp)
  {
    if (paramjp == null)
    {
      qP().aTi.bq("Not logging ad exposure. No active activity");
      return;
    }
    if (paramLong < 1000L)
    {
      qP().aTi.j("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(paramLong));
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putLong("_xt", paramLong);
    jq.a(paramjp, localBundle, true);
    qC().a("am", "_xa", localBundle);
  }
  
  final void a(String paramString, long paramLong, jp paramjp)
  {
    if (paramjp == null)
    {
      qP().aTi.bq("Not logging ad unit exposure. No active activity");
      return;
    }
    if (paramLong < 1000L)
    {
      qP().aTi.j("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(paramLong));
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("_ai", paramString);
    localBundle.putLong("_xt", paramLong);
    jq.a(paramjp, localBundle, true);
    qC().a("am", "_xu", localBundle);
  }
  
  public final void p(long paramLong)
  {
    jt localjt = qG().sj();
    Iterator localIterator = this.aQr.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a(str, paramLong - ((Long)this.aQr.get(str)).longValue(), localjt);
    }
    if (!this.aQr.isEmpty()) {
      a(paramLong - this.aQt, localjt);
    }
    q(paramLong);
  }
  
  final void q(long paramLong)
  {
    Iterator localIterator = this.aQr.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      this.aQr.put(str, Long.valueOf(paramLong));
    }
    if (!this.aQr.isEmpty()) {
      this.aQt = paramLong;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */