package io.intercom.android.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Looper;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.api.DeDuper;
import io.intercom.android.sdk.api.UserUpdateBatcher;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricsStore;
import io.intercom.android.sdk.push.SystemNotificationManager;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.SimpleActivityLifecycleCallbacks;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

class LifecycleTracker
  extends SimpleActivityLifecycleCallbacks
  implements Application.ActivityLifecycleCallbacks
{
  private final DeDuper deDuper;
  private final ActivityLifecycleHandler handler;
  private final MetricsStore metricsStore;
  private final ResetManager resetManager;
  private final Set<Integer> startedActivities = new HashSet();
  final Store<State> store;
  private final SystemNotificationManager systemNotificationManager;
  private final TimeProvider timeProvider;
  private final Twig twig = LumberMill.getLogger();
  private final UserUpdateBatcher userUpdateBatcher;
  
  LifecycleTracker(SystemNotificationManager paramSystemNotificationManager, MetricsStore paramMetricsStore, DeDuper paramDeDuper, TimeProvider paramTimeProvider, UserUpdateBatcher paramUserUpdateBatcher, Store<State> paramStore, ResetManager paramResetManager, ActivityLifecycleHandler paramActivityLifecycleHandler)
  {
    this.systemNotificationManager = paramSystemNotificationManager;
    this.metricsStore = paramMetricsStore;
    this.deDuper = paramDeDuper;
    this.timeProvider = paramTimeProvider;
    this.userUpdateBatcher = paramUserUpdateBatcher;
    this.store = paramStore;
    this.resetManager = paramResetManager;
    this.handler = paramActivityLifecycleHandler;
  }
  
  static LifecycleTracker create(SystemNotificationManager paramSystemNotificationManager, MetricsStore paramMetricsStore, DeDuper paramDeDuper, TimeProvider paramTimeProvider, UserUpdateBatcher paramUserUpdateBatcher, Store<State> paramStore, ResetManager paramResetManager, float paramFloat)
  {
    return new LifecycleTracker(paramSystemNotificationManager, paramMetricsStore, paramDeDuper, paramTimeProvider, paramUserUpdateBatcher, paramStore, paramResetManager, new ActivityLifecycleHandler(Looper.getMainLooper(), paramStore, paramFloat));
  }
  
  private boolean hasApplicationBecomeBackgrounded(Activity paramActivity)
  {
    return (isApplicationInBackground(paramActivity)) && (!((Boolean)this.store.select(Selectors.APP_IS_BACKGROUNDED)).booleanValue());
  }
  
  private static boolean isScreenLocked(Context paramContext)
  {
    return ((KeyguardManager)paramContext.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
  }
  
  private void registerActivity(Activity paramActivity)
  {
    this.startedActivities.add(Integer.valueOf(System.identityHashCode(paramActivity)));
    this.twig.i("Started observing " + paramActivity, new Object[0]);
  }
  
  private void unregisterActivity(Activity paramActivity)
  {
    this.startedActivities.remove(Integer.valueOf(System.identityHashCode(paramActivity)));
    this.twig.i("Stopped observing " + paramActivity, new Object[0]);
  }
  
  boolean isApplicationInBackground(Activity paramActivity)
  {
    return (isScreenLocked(paramActivity)) || ((this.startedActivities.isEmpty()) && (!paramActivity.isChangingConfigurations()));
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    this.handler.sendMessage(ActivityLifecycleHandler.getMessage(2, paramActivity));
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    this.handler.removeMessages(1, paramActivity);
    this.handler.sendMessage(ActivityLifecycleHandler.getMessage(0, paramActivity));
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    registerActivity(paramActivity);
    if (((Boolean)this.store.select(Selectors.APP_IS_BACKGROUNDED)).booleanValue())
    {
      this.store.dispatch(Actions.appEnteredForeground(this.timeProvider.currentTimeMillis()));
      this.metricsStore.loadAndSendMetrics();
      this.systemNotificationManager.clear();
    }
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    unregisterActivity(paramActivity);
    this.handler.removeMessages(1, paramActivity);
    this.handler.sendMessage(ActivityLifecycleHandler.getMessage(3, paramActivity));
    if (hasApplicationBecomeBackgrounded(paramActivity))
    {
      if (this.resetManager.isSoftReset()) {
        this.resetManager.hardReset();
      }
      this.store.dispatch(Actions.appEnteredBackground(this.timeProvider.currentTimeMillis()));
      this.deDuper.reset();
      this.userUpdateBatcher.submitPendingUpdate();
      this.metricsStore.loadAndSendMetrics();
    }
  }
  
  void registerActivities(Collection<Integer> paramCollection)
  {
    this.startedActivities.addAll(paramCollection);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/LifecycleTracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */