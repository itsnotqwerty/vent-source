package io.intercom.android.sdk.overlay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Application;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import io.intercom.a.a.a.j;
import io.intercom.a.c.a.b;
import io.intercom.a.c.a.h;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.activities.IntercomMessengerActivity;
import io.intercom.android.sdk.activities.IntercomNoteActivity;
import io.intercom.android.sdk.activities.IntercomPostActivity;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.metrics.MetricTracker.InAppMessageViewContext;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.DeliveryOption;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.events.ConfigUpdateEvent;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Subscriber2;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.utilities.ContextLocaliser;
import io.intercom.android.sdk.utilities.ViewUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class OverlayPresenter
  implements InAppNotificationPresenter.Listener, Store.Subscriber2<Integer, OverlayState>
{
  private final Provider<AppConfig> appConfigProvider;
  private final Handler handler;
  final InAppNotificationPresenter inAppNotificationPresenter;
  final DefaultLauncherPresenter launcherPresenter;
  private final MetricTracker metricTracker;
  private final j requestManager;
  private final Store<State> store;
  private final Twig twig = LumberMill.getLogger();
  private final UserIdentity userIdentity;
  private final Set<String> viewedPartIds = new HashSet();
  
  public OverlayPresenter(Application paramApplication, b paramb, Store<State> paramStore, Provider<AppConfig> paramProvider, MetricTracker paramMetricTracker, UserIdentity paramUserIdentity, j paramj)
  {
    this.appConfigProvider = paramProvider;
    this.store = paramStore;
    this.metricTracker = paramMetricTracker;
    this.userIdentity = paramUserIdentity;
    this.requestManager = paramj;
    paramApplication = LayoutInflater.from(paramApplication);
    this.handler = new Handler(Looper.getMainLooper());
    this.inAppNotificationPresenter = new InAppNotificationPresenter(paramApplication, this.handler, this, paramMetricTracker, paramProvider, new ContextLocaliser(paramProvider), paramj);
    this.launcherPresenter = new DefaultLauncherPresenter(paramApplication, new LauncherOpenBehaviour(paramProvider, paramStore, LauncherOpenBehaviour.LauncherType.DEFAULT, paramMetricTracker), paramMetricTracker);
    paramb.register(this);
    paramStore.subscribeToChanges(Selectors.UNREAD_COUNT, Selectors.OVERLAY, this);
  }
  
  private ViewGroup getRootView(Activity paramActivity)
  {
    ViewGroup localViewGroup = (ViewGroup)paramActivity.findViewById(R.id.intercom_overlay_root);
    Object localObject = localViewGroup;
    if (localViewGroup == null)
    {
      localObject = new FrameLayout(paramActivity);
      ((ViewGroup)localObject).setClipChildren(false);
      ((ViewGroup)localObject).setClipToPadding(false);
      ((ViewGroup)localObject).setFitsSystemWindows(true);
      ((ViewGroup)localObject).setId(R.id.intercom_overlay_root);
      paramActivity.addContentView((View)localObject, new FrameLayout.LayoutParams(-1, -1, 80));
    }
    return (ViewGroup)localObject;
  }
  
  private Activity hostActivity()
  {
    return ((OverlayState)this.store.select(Selectors.OVERLAY)).resumedHostActivity();
  }
  
  private void openMessenger(Conversation paramConversation)
  {
    Activity localActivity = hostActivity();
    if (localActivity != null) {
      localActivity.startActivity(IntercomMessengerActivity.openConversation(localActivity, paramConversation.getId(), paramConversation.getLastParticipatingAdmin()));
    }
  }
  
  private void openNote(Conversation paramConversation)
  {
    try
    {
      Activity localActivity = hostActivity();
      if (localActivity != null) {
        localActivity.startActivity(IntercomNoteActivity.buildNoteIntent(localActivity, paramConversation.getLastPart(), paramConversation.getId(), paramConversation.getLastParticipatingAdmin()));
      }
      return;
    }
    catch (IllegalArgumentException paramConversation)
    {
      this.twig.internal("Overlay", "Error loading the note " + paramConversation.getMessage());
    }
  }
  
  private void openPost(Conversation paramConversation)
  {
    Activity localActivity = hostActivity();
    if (localActivity != null) {
      localActivity.startActivity(IntercomPostActivity.buildPostIntent(localActivity, paramConversation.getLastPart(), paramConversation.getId(), paramConversation.getLastParticipatingAdmin(), true));
    }
  }
  
  private void trackInAppView(String paramString1, String paramString2, @MetricTracker.InAppMessageViewContext int paramInt)
  {
    if (this.viewedPartIds.contains(paramString2)) {
      return;
    }
    this.viewedPartIds.add(paramString2);
    this.metricTracker.viewedInApp(paramString1, paramString2, paramInt);
  }
  
  public void cancelAnimations()
  {
    this.handler.removeCallbacksAndMessages(null);
  }
  
  @h
  public void configUpdated(final ConfigUpdateEvent paramConfigUpdateEvent)
  {
    paramConfigUpdateEvent = (OverlayState)this.store.select(Selectors.OVERLAY);
    Activity localActivity = paramConfigUpdateEvent.resumedHostActivity();
    if (shouldDisplayLauncher(paramConfigUpdateEvent.conversations(), paramConfigUpdateEvent.notificationVisibility(), paramConfigUpdateEvent.launcherVisibility(), localActivity))
    {
      paramConfigUpdateEvent = getRootView(localActivity);
      ViewUtils.waitForViewAttachment(paramConfigUpdateEvent, new Runnable()
      {
        public void run()
        {
          int i = ((AppConfig)OverlayPresenter.this.appConfigProvider.get()).getBaseColor();
          OverlayPresenter.this.launcherPresenter.displayLauncherOnAttachedRoot(paramConfigUpdateEvent, i);
        }
      });
      return;
    }
    this.launcherPresenter.setLauncherBackgroundColor(((AppConfig)this.appConfigProvider.get()).getBaseColor());
  }
  
  void displayNotifications(final List<Conversation> paramList, final Activity paramActivity)
  {
    paramActivity = getRootView(paramActivity);
    final Object localObject = (Conversation)paramList.get(0);
    String str = ((Conversation)localObject).getLastPart().getMessageStyle();
    Part.DeliveryOption localDeliveryOption = ((Conversation)localObject).getLastPart().getDeliveryOption();
    if ((paramList.size() > 1) || (this.inAppNotificationPresenter.isDisplaying()) || (localDeliveryOption == Part.DeliveryOption.SUMMARY) || ((localDeliveryOption == Part.DeliveryOption.FULL) && ("chat".equals(str)))) {
      if (this.launcherPresenter.isDisplaying())
      {
        localObject = this.launcherPresenter.getAndUnsetLauncher();
        if (paramList.size() == 1) {
          ((DefaultLauncher)localObject).pulseForTransformation(new AnimatorListenerAdapter()
          {
            public void onAnimationEnd(Animator paramAnonymousAnimator)
            {
              localObject.fadeOffScreen(new AnimatorListenerAdapter()
              {
                public void onAnimationEnd(Animator paramAnonymous2Animator)
                {
                  OverlayPresenter.5.this.val$defaultLauncher.removeView();
                }
              });
              OverlayPresenter.this.inAppNotificationPresenter.displayNotifications(paramActivity, paramList);
            }
          });
        }
      }
    }
    do
    {
      do
      {
        return;
        ((DefaultLauncher)localObject).fadeOffScreen(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            localObject.removeView();
            OverlayPresenter.this.inAppNotificationPresenter.displayNotifications(paramActivity, paramList);
          }
        });
        return;
        this.inAppNotificationPresenter.displayNotifications(paramActivity, paramList);
        return;
      } while (localDeliveryOption != Part.DeliveryOption.FULL);
      if ("post".equals(str))
      {
        trackInAppView(((Conversation)localObject).getId(), ((Conversation)localObject).getLastPart().getId(), 1);
        openPost((Conversation)localObject);
        return;
      }
    } while (!"note".equals(str));
    trackInAppView(((Conversation)localObject).getId(), ((Conversation)localObject).getLastPart().getId(), 1);
    openNote((Conversation)localObject);
  }
  
  public ViewGroup getRootView()
    throws Exception
  {
    Activity localActivity = hostActivity();
    if (localActivity == null) {
      throw new NullPointerException();
    }
    return getRootView(localActivity);
  }
  
  public void markAsDismissed(Conversation paramConversation)
  {
    this.store.dispatch(Actions.conversationMarkedAsDismissed(paramConversation));
  }
  
  public void onStateChange(final Integer paramInteger, final OverlayState paramOverlayState)
  {
    Intercom.Visibility localVisibility = paramOverlayState.notificationVisibility();
    Activity localActivity = paramOverlayState.resumedHostActivity();
    List localList = paramOverlayState.conversations();
    this.launcherPresenter.setBottomPadding(paramOverlayState.bottomPadding());
    this.inAppNotificationPresenter.setBottomPadding(paramOverlayState.bottomPadding());
    if ((localActivity == null) || (localActivity.isFinishing()) || ((Build.VERSION.SDK_INT >= 17) && (localActivity.isDestroyed()))) {
      return;
    }
    if (shouldDisplayNotifications(localList, localVisibility, localActivity))
    {
      preloadAvatarThenDisplayNotifications(localList, localVisibility, localActivity, this.userIdentity.getFingerprint());
      return;
    }
    if (shouldDisplayLauncher(localList, localVisibility, paramOverlayState.launcherVisibility(), localActivity))
    {
      paramOverlayState = getRootView(localActivity);
      ViewUtils.waitForViewAttachment(paramOverlayState, new Runnable()
      {
        public void run()
        {
          OverlayPresenter.this.inAppNotificationPresenter.reset(paramOverlayState);
          OverlayPresenter.this.launcherPresenter.setUnreadCount(paramInteger.intValue());
          int i = ((AppConfig)OverlayPresenter.this.appConfigProvider.get()).getBaseColor();
          OverlayPresenter.this.launcherPresenter.displayLauncherOnAttachedRoot(paramOverlayState, i);
        }
      });
      return;
    }
    removeOverlaysIfPresent(localActivity);
  }
  
  public void openNotification(Conversation paramConversation)
  {
    Part localPart = paramConversation.getLastAdminPart();
    String str = localPart.getMessageStyle();
    if ("post".equals(str))
    {
      trackInAppView(paramConversation.getId(), paramConversation.getLastPart().getId(), 0);
      openPost(paramConversation);
      return;
    }
    if ("note".equals(str))
    {
      trackInAppView(paramConversation.getId(), paramConversation.getLastPart().getId(), 0);
      openNote(paramConversation);
      return;
    }
    openMessenger(paramConversation);
    if (("chat".equals(str)) && (Part.DeliveryOption.FULL == localPart.getDeliveryOption()))
    {
      this.metricTracker.openedConversationFromFull(paramConversation.getId(), localPart.getId());
      return;
    }
    this.metricTracker.openedConversationFromSnippet(paramConversation.getId(), localPart.getId());
  }
  
  void preloadAvatarThenDisplayNotifications(final List<Conversation> paramList, final Intercom.Visibility paramVisibility, final Activity paramActivity, final String paramString)
  {
    AvatarUtils.preloadAvatar(((Conversation)paramList.get(0)).getLastAdmin().getAvatar(), new Runnable()
    {
      public void run()
      {
        if ((paramString.equals(OverlayPresenter.this.userIdentity.getFingerprint())) && (OverlayPresenter.this.shouldDisplayNotifications(paramList, paramVisibility, paramActivity))) {
          OverlayPresenter.this.displayNotifications(paramList, paramActivity);
        }
      }
    }, this.requestManager);
  }
  
  public void refreshStateBecauseUserIdentityIsNotInStoreYet()
  {
    onStateChange((Integer)this.store.select(Selectors.UNREAD_COUNT), (OverlayState)this.store.select(Selectors.OVERLAY));
  }
  
  public void removeOverlaysIfPresent(Activity paramActivity)
  {
    paramActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (this.val$root != null)
        {
          OverlayPresenter.this.launcherPresenter.removeLauncher();
          OverlayPresenter.this.inAppNotificationPresenter.reset((ViewGroup)this.val$root);
          if (this.val$root.getParent() != null) {
            ((ViewGroup)this.val$root.getParent()).removeView(this.val$root);
          }
        }
      }
    });
  }
  
  boolean shouldDisplayLauncher(List<Conversation> paramList, Intercom.Visibility paramVisibility1, Intercom.Visibility paramVisibility2, Activity paramActivity)
  {
    if (paramVisibility1 == Intercom.Visibility.VISIBLE)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        paramVisibility1 = (Conversation)paramList.next();
        if (Part.DeliveryOption.BADGE != paramVisibility1.getLastPart().getDeliveryOption()) {
          return false;
        }
      }
    }
    return (paramVisibility2 == Intercom.Visibility.VISIBLE) && (!this.userIdentity.isSoftReset()) && (this.userIdentity.identityExists()) && (((AppConfig)this.appConfigProvider.get()).isReceivedFromServer()) && (paramActivity != null);
  }
  
  boolean shouldDisplayNotifications(List<Conversation> paramList, Intercom.Visibility paramVisibility, Activity paramActivity)
  {
    return (paramVisibility == Intercom.Visibility.VISIBLE) && (!this.userIdentity.isSoftReset()) && (!paramList.isEmpty()) && (paramActivity != null);
  }
  
  public void softReset()
  {
    cancelAnimations();
    Activity localActivity = hostActivity();
    if (localActivity != null) {
      removeOverlaysIfPresent(localActivity);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/OverlayPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */