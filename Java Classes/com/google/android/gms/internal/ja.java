package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.g.a;
import android.text.TextUtils;
import com.google.android.gms.c.r;
import com.google.android.gms.c.s;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.measurement.AppMeasurement.ConditionalUserProperty;
import com.google.android.gms.measurement.AppMeasurement.b;
import com.google.android.gms.measurement.AppMeasurement.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public final class ja
  extends iy
{
  protected jo aVQ;
  public AppMeasurement.b aVR;
  private final Set<AppMeasurement.c> aVS = new CopyOnWriteArraySet();
  private boolean aVT;
  public final AtomicReference<String> aVU = new AtomicReference();
  
  protected ja(hz paramhz)
  {
    super(paramhz);
  }
  
  private final void a(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty)
  {
    long l = qH().currentTimeMillis();
    ae.E(paramConditionalUserProperty);
    ae.bf(paramConditionalUserProperty.mName);
    ae.bf(paramConditionalUserProperty.mOrigin);
    ae.E(paramConditionalUserProperty.mValue);
    paramConditionalUserProperty.mCreationTimestamp = l;
    String str = paramConditionalUserProperty.mName;
    Object localObject1 = paramConditionalUserProperty.mValue;
    if (qL().cy(str) != 0)
    {
      qP().aTa.j("Invalid conditional user property name", qK().cj(str));
      return;
    }
    if (qL().l(str, localObject1) != 0)
    {
      qP().aTa.e("Invalid conditional user property value", qK().cj(str), localObject1);
      return;
    }
    qL();
    Object localObject2 = le.m(str, localObject1);
    if (localObject2 == null)
    {
      qP().aTa.e("Unable to normalize conditional user property value", qK().cj(str), localObject1);
      return;
    }
    paramConditionalUserProperty.mValue = localObject2;
    l = paramConditionalUserProperty.mTriggerTimeout;
    if ((!TextUtils.isEmpty(paramConditionalUserProperty.mTriggerEventName)) && ((l > 15552000000L) || (l < 1L)))
    {
      qP().aTa.e("Invalid conditional user property timeout", qK().cj(str), Long.valueOf(l));
      return;
    }
    l = paramConditionalUserProperty.mTimeToLive;
    if ((l > 15552000000L) || (l < 1L))
    {
      qP().aTa.e("Invalid conditional user property time to live", qK().cj(str), Long.valueOf(l));
      return;
    }
    qO().i(new jc(this, paramConditionalUserProperty));
  }
  
  private final void a(String paramString1, String paramString2, long paramLong, Bundle paramBundle, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBundle == null)
    {
      paramBundle = new Bundle();
      qO().i(new ji(this, paramString1, paramString2, paramLong, paramBundle, paramBoolean1, paramBoolean2, paramBoolean3));
      return;
    }
    Bundle localBundle = new Bundle(paramBundle);
    Iterator localIterator = localBundle.keySet().iterator();
    for (;;)
    {
      paramBundle = localBundle;
      if (!localIterator.hasNext()) {
        break;
      }
      paramBundle = (String)localIterator.next();
      Object localObject = localBundle.get(paramBundle);
      if ((localObject instanceof Bundle))
      {
        localBundle.putBundle(paramBundle, new Bundle((Bundle)localObject));
      }
      else
      {
        int i;
        if ((localObject instanceof Parcelable[]))
        {
          paramBundle = (Parcelable[])localObject;
          i = 0;
          while (i < paramBundle.length)
          {
            if ((paramBundle[i] instanceof Bundle)) {
              paramBundle[i] = new Bundle((Bundle)paramBundle[i]);
            }
            i += 1;
          }
        }
        else if ((localObject instanceof ArrayList))
        {
          paramBundle = (ArrayList)localObject;
          i = 0;
          while (i < paramBundle.size())
          {
            localObject = paramBundle.get(i);
            if ((localObject instanceof Bundle)) {
              paramBundle.set(i, new Bundle((Bundle)localObject));
            }
            i += 1;
          }
        }
      }
    }
  }
  
  private final void a(String paramString1, String paramString2, long paramLong, Object paramObject)
  {
    qO().i(new jj(this, paramString1, paramString2, paramObject, paramLong));
  }
  
  final String E(long paramLong)
  {
    synchronized (new AtomicReference())
    {
      qO().i(new jm(this, ???));
      try
      {
        ???.wait(paramLong);
        return (String)???.get();
      }
      catch (InterruptedException localInterruptedException)
      {
        qP().aTd.bq("Interrupted waiting for app instance id");
        return null;
      }
    }
  }
  
  public final void a(String paramString1, String paramString2, Bundle paramBundle)
  {
    if ((this.aVR == null) || (le.cD(paramString2))) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramString1, paramString2, paramBundle, bool, false);
      return;
    }
  }
  
  public final void a(String paramString1, String paramString2, Bundle paramBundle, long paramLong)
  {
    a(paramString1, paramString2, paramLong, paramBundle, false, true, true);
  }
  
  public final void a(String paramString1, String paramString2, Bundle paramBundle, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramString1, paramString2, qH().currentTimeMillis(), paramBundle, true, paramBoolean1, paramBoolean2);
  }
  
  public final void a(String paramString1, String paramString2, Object paramObject)
  {
    int i = 0;
    int j = 0;
    ae.bf(paramString1);
    long l = qH().currentTimeMillis();
    int k = qL().cy(paramString2);
    if (k != 0)
    {
      qL();
      paramString1 = le.a(paramString2, 24, true);
      i = j;
      if (paramString2 != null) {
        i = paramString2.length();
      }
      this.zzjev.qL().a(k, "_ev", paramString1, i);
    }
    do
    {
      return;
      if (paramObject == null) {
        break;
      }
      j = qL().l(paramString2, paramObject);
      if (j != 0)
      {
        qL();
        paramString1 = le.a(paramString2, 24, true);
        if (((paramObject instanceof String)) || ((paramObject instanceof CharSequence))) {
          i = String.valueOf(paramObject).length();
        }
        this.zzjev.qL().a(j, "_ev", paramString1, i);
        return;
      }
      qL();
      paramObject = le.m(paramString2, paramObject);
    } while (paramObject == null);
    a(paramString1, paramString2, l, paramObject);
    return;
    a(paramString1, paramString2, l, null);
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, Bundle paramBundle)
  {
    long l = qH().currentTimeMillis();
    ae.bf(paramString2);
    AppMeasurement.ConditionalUserProperty localConditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
    localConditionalUserProperty.mAppId = paramString1;
    localConditionalUserProperty.mName = paramString2;
    localConditionalUserProperty.mCreationTimestamp = l;
    if (paramString3 != null)
    {
      localConditionalUserProperty.mExpiredEventName = paramString3;
      localConditionalUserProperty.mExpiredEventParams = paramBundle;
    }
    qO().i(new jd(this, localConditionalUserProperty));
  }
  
  public final List<lb> ay(boolean paramBoolean)
  {
    pf();
    qP().aTh.bq("Fetching user attributes (FE)");
    if (qO().rR())
    {
      qP().aTa.bq("Cannot get all user properties from analytics worker thread");
      ??? = Collections.emptyList();
    }
    for (;;)
    {
      return (List<lb>)???;
      qO();
      if (hu.oM())
      {
        qP().aTa.bq("Cannot get all user properties from main thread");
        return Collections.emptyList();
      }
      synchronized (new AtomicReference())
      {
        this.zzjev.qO().i(new jk(this, (AtomicReference)???, paramBoolean));
        try
        {
          ???.wait(5000L);
          List localList = (List)((AtomicReference)???).get();
          ??? = localList;
          if (localList != null) {
            continue;
          }
          qP().aTd.bq("Timed out waiting for get user properties");
          return Collections.emptyList();
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            qP().aTd.j("Interrupted waiting for get user properties", localInterruptedException);
          }
        }
      }
    }
  }
  
  public final Map<String, Object> c(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (qO().rR())
    {
      qP().aTa.bq("Cannot get user properties from analytics worker thread");
      return Collections.emptyMap();
    }
    qO();
    if (hu.oM())
    {
      qP().aTa.bq("Cannot get user properties from main thread");
      return Collections.emptyMap();
    }
    synchronized (new AtomicReference())
    {
      this.zzjev.qO().i(new jf(this, ???, paramString1, paramString2, paramString3, paramBoolean));
      try
      {
        ???.wait(5000L);
        paramString2 = (List)???.get();
        if (paramString2 == null)
        {
          qP().aTd.bq("Timed out waiting for get user properties");
          return Collections.emptyMap();
        }
      }
      catch (InterruptedException paramString1)
      {
        for (;;)
        {
          qP().aTd.j("Interrupted waiting for get user properties", paramString1);
        }
      }
    }
    paramString1 = new a(paramString2.size());
    paramString2 = paramString2.iterator();
    while (paramString2.hasNext())
    {
      paramString3 = (lb)paramString2.next();
      paramString1.put(paramString3.name, paramString3.getValue());
    }
    return paramString1;
  }
  
  final void cu(String paramString)
  {
    this.aVU.set(paramString);
  }
  
  public final List<AppMeasurement.ConditionalUserProperty> f(String paramString1, String paramString2, String paramString3)
  {
    if (qO().rR())
    {
      qP().aTa.bq("Cannot get conditional user properties from analytics worker thread");
      return Collections.emptyList();
    }
    qO();
    if (hu.oM())
    {
      qP().aTa.bq("Cannot get conditional user properties from main thread");
      return Collections.emptyList();
    }
    synchronized (new AtomicReference())
    {
      this.zzjev.qO().i(new je(this, (AtomicReference)???, paramString1, paramString2, paramString3));
      try
      {
        ???.wait(5000L);
        ??? = (List)((AtomicReference)???).get();
        if (??? == null)
        {
          qP().aTd.j("Timed out waiting for get conditional user properties", paramString1);
          return Collections.emptyList();
        }
      }
      catch (InterruptedException paramString3)
      {
        for (;;)
        {
          qP().aTd.e("Interrupted waiting for get conditional user properties", paramString1, paramString3);
        }
      }
    }
    paramString3 = new ArrayList(((List)???).size());
    ??? = ((List)???).iterator();
    while (((Iterator)???).hasNext())
    {
      ga localga = (ga)((Iterator)???).next();
      AppMeasurement.ConditionalUserProperty localConditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
      localConditionalUserProperty.mAppId = paramString1;
      localConditionalUserProperty.mOrigin = paramString2;
      localConditionalUserProperty.mCreationTimestamp = localga.aRd;
      localConditionalUserProperty.mName = localga.aRc.name;
      localConditionalUserProperty.mValue = localga.aRc.getValue();
      localConditionalUserProperty.mActive = localga.aRe;
      localConditionalUserProperty.mTriggerEventName = localga.aRf;
      if (localga.aRg != null)
      {
        localConditionalUserProperty.mTimedOutEventName = localga.aRg.name;
        if (localga.aRg.aRH != null) {
          localConditionalUserProperty.mTimedOutEventParams = localga.aRg.aRH.rB();
        }
      }
      localConditionalUserProperty.mTriggerTimeout = localga.aRh;
      if (localga.aRi != null)
      {
        localConditionalUserProperty.mTriggeredEventName = localga.aRi.name;
        if (localga.aRi.aRH != null) {
          localConditionalUserProperty.mTriggeredEventParams = localga.aRi.aRH.rB();
        }
      }
      localConditionalUserProperty.mTriggeredTimestamp = localga.aRc.aXh;
      localConditionalUserProperty.mTimeToLive = localga.aRj;
      if (localga.aRk != null)
      {
        localConditionalUserProperty.mExpiredEventName = localga.aRk.name;
        if (localga.aRk.aRH != null) {
          localConditionalUserProperty.mExpiredEventParams = localga.aRk.aRH.rB();
        }
      }
      paramString3.add(localConditionalUserProperty);
    }
    return paramString3;
  }
  
  public final com.google.android.gms.c.e<String> getAppInstanceId()
  {
    Object localObject2;
    try
    {
      Object localObject1 = qQ().rM();
      if (localObject1 != null)
      {
        localObject2 = new r();
        ((r)localObject2).N(localObject1);
        return (com.google.android.gms.c.e<String>)localObject2;
      }
      localObject1 = qO().rS();
      localObject2 = new jl(this);
      ae.g(localObject1, "Executor must not be null");
      ae.g(localObject2, "Callback must not be null");
      r localr = new r();
      ((Executor)localObject1).execute(new s(localr, (Callable)localObject2));
      return localr;
    }
    catch (Exception localException)
    {
      qP().aTd.bq("Failed to schedule task for getAppInstanceId");
      localObject2 = new r();
      ((r)localObject2).e(localException);
    }
    return (com.google.android.gms.c.e<String>)localObject2;
  }
  
  public final void registerOnMeasurementEventListener(AppMeasurement.c paramc)
  {
    pf();
    ae.E(paramc);
    if (!this.aVS.add(paramc)) {
      qP().aTd.bq("OnEventListener already registered");
    }
  }
  
  protected final boolean ri()
  {
    return false;
  }
  
  public final void setConditionalUserProperty(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty)
  {
    ae.E(paramConditionalUserProperty);
    paramConditionalUserProperty = new AppMeasurement.ConditionalUserProperty(paramConditionalUserProperty);
    if (!TextUtils.isEmpty(paramConditionalUserProperty.mAppId)) {
      qP().aTd.bq("Package name should be null when calling setConditionalUserProperty");
    }
    paramConditionalUserProperty.mAppId = null;
    a(paramConditionalUserProperty);
  }
  
  public final void setConditionalUserPropertyAs(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty)
  {
    ae.E(paramConditionalUserProperty);
    ae.bf(paramConditionalUserProperty.mAppId);
    qy();
    a(new AppMeasurement.ConditionalUserProperty(paramConditionalUserProperty));
  }
  
  public final void setEventInterceptor(AppMeasurement.b paramb)
  {
    mN();
    pf();
    if ((paramb != null) && (paramb != this.aVR)) {
      if (this.aVR != null) {
        break label42;
      }
    }
    label42:
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, "EventInterceptor already set.");
      this.aVR = paramb;
      return;
    }
  }
  
  public final void setMeasurementEnabled(boolean paramBoolean)
  {
    pf();
    qO().i(new jb(this, paramBoolean));
  }
  
  public final void unregisterOnMeasurementEventListener(AppMeasurement.c paramc)
  {
    pf();
    ae.E(paramc);
    if (!this.aVS.remove(paramc)) {
      qP().aTd.bq("OnEventListener had not been registered");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */