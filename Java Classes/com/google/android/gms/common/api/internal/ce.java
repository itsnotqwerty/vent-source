package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ce
  implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2
{
  private static final ce aGE = new ce();
  final AtomicBoolean aGF = new AtomicBoolean();
  final AtomicBoolean aGG = new AtomicBoolean();
  private final ArrayList<cf> aGH = new ArrayList();
  private boolean aGI = false;
  
  private final void as(boolean paramBoolean)
  {
    synchronized (aGE)
    {
      ArrayList localArrayList = (ArrayList)this.aGH;
      int j = localArrayList.size();
      int i = 0;
      if (i < j)
      {
        Object localObject2 = localArrayList.get(i);
        i += 1;
        ((cf)localObject2).as(paramBoolean);
      }
    }
  }
  
  public static void b(Application paramApplication)
  {
    synchronized (aGE)
    {
      if (!aGE.aGI)
      {
        paramApplication.registerActivityLifecycleCallbacks(aGE);
        paramApplication.registerComponentCallbacks(aGE);
        aGE.aGI = true;
      }
      return;
    }
  }
  
  public static ce nR()
  {
    return aGE;
  }
  
  public final void a(cf paramcf)
  {
    synchronized (aGE)
    {
      this.aGH.add(paramcf);
      return;
    }
  }
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    boolean bool = this.aGF.compareAndSet(true, false);
    this.aGG.set(true);
    if (bool) {
      as(false);
    }
  }
  
  public final void onActivityDestroyed(Activity paramActivity) {}
  
  public final void onActivityPaused(Activity paramActivity) {}
  
  public final void onActivityResumed(Activity paramActivity)
  {
    boolean bool = this.aGF.compareAndSet(true, false);
    this.aGG.set(true);
    if (bool) {
      as(false);
    }
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityStarted(Activity paramActivity) {}
  
  public final void onActivityStopped(Activity paramActivity) {}
  
  public final void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public final void onLowMemory() {}
  
  public final void onTrimMemory(int paramInt)
  {
    if ((paramInt == 20) && (this.aGF.compareAndSet(false, true)))
    {
      this.aGG.set(true);
      as(true);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */