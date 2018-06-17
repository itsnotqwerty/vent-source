package com.layer.sdk.internal.lsdkk;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class b
  implements Application.ActivityLifecycleCallbacks
{
  private static final k.a a = k.a(b.class);
  private final AtomicInteger b = new AtomicInteger(0);
  private final AtomicInteger c = new AtomicInteger(0);
  private final Application d;
  private final AtomicReference<b> e = new AtomicReference();
  private final j<a> f = new j();
  
  public b(Application paramApplication) {}
  
  public b(Application paramApplication, b paramb)
  {
    this.d = paramApplication;
    k.a(a, "Setting initial state to " + paramb);
    this.e.getAndSet(paramb);
    this.d.registerActivityLifecycleCallbacks(this);
  }
  
  private static boolean a(Context paramContext)
  {
    if (paramContext == null) {
      k.a(a, "Cannot monitor application transitions with null Context");
    }
    try
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return b(paramContext);
      }
      boolean bool = c(paramContext);
      return bool;
    }
    catch (Exception paramContext)
    {
      k.d(a, "Assuming launch in foreground", paramContext);
    }
    return true;
  }
  
  private boolean a(b paramb)
  {
    do
    {
      localObject = (b)this.e.get();
      if (localObject == paramb) {
        return false;
      }
    } while (!this.e.compareAndSet(localObject, paramb));
    Object localObject = this.f.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((a)((Iterator)localObject).next()).a(paramb);
    }
    return true;
  }
  
  private void b()
  {
    for (;;)
    {
      try
      {
        int i = this.b.get();
        int j = this.c.get();
        if (i > j) {
          return;
        }
        if (j > 0) {
          a(b.a);
        } else {
          a(b.b);
        }
      }
      finally {}
    }
  }
  
  private static boolean b(Context paramContext)
  {
    HashSet localHashSet = new HashSet();
    Object localObject = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (localObject == null) {
      return false;
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
      if (localRunningAppProcessInfo.importance == 100) {
        localHashSet.addAll(Arrays.asList(localRunningAppProcessInfo.pkgList));
      }
    }
    paramContext = paramContext.getPackageName();
    k.a(a, "Current package is `" + paramContext + "`, foreground packages are `[" + TextUtils.join(", ", localHashSet) + "]`");
    return localHashSet.contains(paramContext);
  }
  
  private static boolean c(Context paramContext)
  {
    if (paramContext.getPackageManager().checkPermission("android.permission.GET_TASKS", paramContext.getPackageName()) != 0)
    {
      k.a(a, "Permission `android.permission.GET_TASKS` not found; assuming launch in foreground");
      return true;
    }
    Object localObject = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
    if ((localObject == null) || (((List)localObject).isEmpty())) {
      return false;
    }
    localObject = ((ActivityManager.RunningTaskInfo)((List)localObject).get(0)).topActivity;
    if (localObject == null) {
      return false;
    }
    localObject = ((ComponentName)localObject).getPackageName();
    paramContext = paramContext.getPackageName();
    k.a(a, "Current package is `" + paramContext + "`, foreground package is `" + (String)localObject + "`");
    return ((String)localObject).equals(paramContext);
  }
  
  public b a()
  {
    return (b)this.e.get();
  }
  
  public void a(a parama)
  {
    this.f.a(parama);
  }
  
  public void b(a parama)
  {
    this.f.b(parama);
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity)
  {
    this.c.decrementAndGet();
    b();
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    this.c.incrementAndGet();
    b();
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    this.b.incrementAndGet();
    b();
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    this.b.decrementAndGet();
    b();
  }
  
  public static abstract interface a
  {
    public abstract void a(b.b paramb);
  }
  
  public static enum b
  {
    private b() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */