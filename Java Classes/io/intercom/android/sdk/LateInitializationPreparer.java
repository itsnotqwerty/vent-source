package io.intercom.android.sdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.SimpleActivityLifecycleCallbacks;
import java.util.HashSet;
import java.util.Set;

public class LateInitializationPreparer
  extends SimpleActivityLifecycleCallbacks
{
  @SuppressLint({"StaticFieldLeak"})
  private static LateInitializationPreparer instance;
  private boolean hasPaused;
  private boolean isRegistered;
  private Activity lastResumedActivity;
  private final Set<Integer> startedActivities = new HashSet();
  private final Twig twig = LumberMill.getLogger();
  
  public static LateInitializationPreparer getInstance()
  {
    if (instance == null) {
      instance = new LateInitializationPreparer();
    }
    return instance;
  }
  
  public void handlePastLifecycleEvents(Application paramApplication, Injector paramInjector)
  {
    Activity localActivity = this.lastResumedActivity;
    boolean bool = this.hasPaused;
    Set localSet = this.startedActivities;
    unregister(paramApplication);
    if (localActivity != null)
    {
      this.twig.i("Handling lifecycle events for " + localActivity + " during late initialisation", new Object[0]);
      paramApplication = paramInjector.getLifecycleTracker();
      paramApplication.onActivityStarted(localActivity);
      paramApplication.onActivityResumed(localActivity);
      if (bool) {
        paramApplication.onActivityPaused(localActivity);
      }
    }
    if (!localSet.isEmpty())
    {
      paramInjector.getLifecycleTracker().registerActivities(localSet);
      this.twig.i("Observed Activities with hashcodes " + localSet + " during late initialization", new Object[0]);
    }
  }
  
  boolean hasPaused()
  {
    return this.hasPaused;
  }
  
  Activity lastResumedActivity()
  {
    return this.lastResumedActivity;
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    this.startedActivities.add(Integer.valueOf(System.identityHashCode(paramActivity)));
    this.hasPaused = true;
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    this.startedActivities.add(Integer.valueOf(System.identityHashCode(paramActivity)));
    this.lastResumedActivity = paramActivity;
    this.hasPaused = false;
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    this.startedActivities.add(Integer.valueOf(System.identityHashCode(paramActivity)));
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    this.startedActivities.remove(Integer.valueOf(System.identityHashCode(paramActivity)));
    if (paramActivity == this.lastResumedActivity) {
      this.lastResumedActivity = null;
    }
  }
  
  public void register(Application paramApplication)
  {
    this.twig.i("Registering for later initialization", new Object[0]);
    try
    {
      if (!this.isRegistered)
      {
        paramApplication.registerActivityLifecycleCallbacks(this);
        this.isRegistered = true;
      }
      return;
    }
    finally {}
  }
  
  Set<Integer> startedActivities()
  {
    return this.startedActivities;
  }
  
  public void unregister(Application paramApplication)
  {
    this.twig.i("Unregistering for later initialization", new Object[0]);
    paramApplication.unregisterActivityLifecycleCallbacks(this);
    this.isRegistered = false;
    this.lastResumedActivity = null;
    this.hasPaused = false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/LateInitializationPreparer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */