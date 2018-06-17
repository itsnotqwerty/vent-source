package io.intercom.android.sdk.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v4.app.t;
import android.support.v4.content.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.InputMethodManager;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.bool;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.conversation.ConversationFragment;
import io.intercom.android.sdk.conversation.ConversationFragment.Listener;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.inbox.InboxFragment;
import io.intercom.android.sdk.inbox.InboxFragment.Listener;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.LastParticipatingAdmin;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.state.InboxState.Status;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ActivityFinisher;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.TimeFormatter;
import io.intercom.android.sdk.views.StatusBarThemer;
import java.util.Collections;
import java.util.List;

public class IntercomMessengerActivity
  extends IntercomBaseActivity
  implements ConversationFragment.Listener, InboxFragment.Listener
{
  static final String LAST_PARTICIPANT = "last_participant";
  static final String PARCEL_CONVERSATION_ID = "parcel_conversation_id";
  static final String PARCEL_INITIAL_MESSAGE = "parcel_initial_message";
  static final String SHOW_INBOX = "showInbox";
  private ActivityFinisher activityFinisher;
  private Provider<AppConfig> appConfigProvider;
  View background;
  ValueAnimator colorAnimation;
  private View containerView;
  private InboxFragment inboxFragment;
  private boolean isTwoPane;
  private MetricTracker metricTracker;
  private final Twig twig = LumberMill.getLogger();
  
  private void applyBackOrCloseMessenger()
  {
    if (getSupportFragmentManager().getBackStackEntryCount() == 0)
    {
      this.metricTracker.closedMessengerBackButton();
      closeMessenger();
      return;
    }
    trackMoveToConversationListMetric();
    hideKeyboard();
    super.onBackPressed();
  }
  
  private void closeMessenger()
  {
    hideKeyboard();
    showBackgroundColour();
    this.containerView.animate().y(getWindow().getDecorView().getHeight()).setInterpolator(new OvershootInterpolator()).setDuration(600L).start();
    fadeOutBackground();
  }
  
  private void displayConversation(String paramString1, LastParticipatingAdmin paramLastParticipatingAdmin, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    displayConversation(paramString1, paramLastParticipatingAdmin, paramBoolean1, paramBoolean2, paramString2, Collections.emptyList());
  }
  
  private void displayConversation(String paramString1, LastParticipatingAdmin paramLastParticipatingAdmin, boolean paramBoolean1, boolean paramBoolean2, String paramString2, List<Participant> paramList)
  {
    displayFragment(ConversationFragment.newInstance(paramString1, paramLastParticipatingAdmin, paramBoolean1, this.isTwoPane, paramString2, paramList), ConversationFragment.class.getName(), paramBoolean2);
  }
  
  private void displayFragment(i parami, String paramString, boolean paramBoolean)
  {
    this.twig.internal("frag", "displaying " + parami);
    t localt = getSupportFragmentManager().cG();
    if (((parami instanceof ConversationFragment)) && (this.isTwoPane)) {}
    for (int i = R.id.conversation_fragment;; i = R.id.inbox_fragment)
    {
      localt.b(i, parami, paramString);
      if (paramBoolean)
      {
        this.twig.internal("frag", "adding " + parami + " to the back stack");
        localt.u(paramString);
      }
      localt.commitAllowingStateLoss();
      return;
    }
  }
  
  private void fadeOutBackground()
  {
    int i = a.c(this, 17170445);
    int j = a.c(this, R.color.intercom_transparent_black);
    this.colorAnimation = ValueAnimator.ofObject(new ArgbEvaluator(), new Object[] { Integer.valueOf(j), Integer.valueOf(i) });
    this.colorAnimation.setDuration(300L);
    this.colorAnimation.setStartDelay(100L);
    this.colorAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        IntercomMessengerActivity.this.background.setBackgroundColor(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
      }
    });
    this.colorAnimation.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        IntercomMessengerActivity.this.finish();
        IntercomMessengerActivity.this.overridePendingTransition(0, 0);
      }
    });
    this.colorAnimation.start();
  }
  
  private int getScreenHeight()
  {
    return findViewById(16908290).getMeasuredHeight();
  }
  
  private boolean hasLoadedFragment(String paramString)
  {
    return getSupportFragmentManager().w(paramString) != null;
  }
  
  private void hideKeyboard()
  {
    View localView = getCurrentFocus();
    if (localView != null) {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
    }
  }
  
  public static Intent openComposer(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, IntercomMessengerActivity.class).setFlags(268435456).putExtra("showInbox", false);
    if (!TextUtils.isEmpty(paramString)) {
      paramContext.putExtra("parcel_initial_message", paramString);
    }
    return paramContext;
  }
  
  public static Intent openConversation(Context paramContext, String paramString, LastParticipatingAdmin paramLastParticipatingAdmin)
  {
    paramContext = new Intent(paramContext, IntercomMessengerActivity.class).setFlags(268435456).putExtra("showInbox", false);
    if (!TextUtils.isEmpty(paramString)) {
      paramContext.putExtra("parcel_conversation_id", paramString);
    }
    if (!LastParticipatingAdmin.isNull(paramLastParticipatingAdmin)) {
      paramContext.putExtra("last_participant", paramLastParticipatingAdmin);
    }
    paramContext.setExtrasClassLoader(LastParticipatingAdmin.class.getClassLoader());
    return paramContext;
  }
  
  public static Intent openInbox(Context paramContext)
  {
    return new Intent(paramContext, IntercomMessengerActivity.class).setFlags(268435456).putExtra("showInbox", true);
  }
  
  private void showBackgroundColour()
  {
    this.background.setBackgroundResource(R.color.intercom_transparent_black);
  }
  
  private void showMessenger()
  {
    int j = 1;
    Bundle localBundle = getIntent().getExtras();
    Object localObject1 = "";
    Object localObject2 = "";
    LastParticipatingAdmin localLastParticipatingAdmin = LastParticipatingAdmin.NULL;
    boolean bool1;
    if (localBundle != null)
    {
      localBundle.setClassLoader(Part.class.getClassLoader());
      String str1 = localBundle.getString("parcel_conversation_id", "");
      String str2 = localBundle.getString("parcel_initial_message", "");
      boolean bool2 = localBundle.getBoolean("showInbox");
      localObject1 = str1;
      bool1 = bool2;
      localObject2 = str2;
      if (localBundle.containsKey("last_participant"))
      {
        localLastParticipatingAdmin = (LastParticipatingAdmin)localBundle.getParcelable("last_participant");
        localObject2 = str2;
        bool1 = bool2;
        localObject1 = str1;
      }
    }
    for (;;)
    {
      int i;
      if (this.isTwoPane)
      {
        displayFragment(this.inboxFragment, InboxFragment.class.getName(), false);
        if (!((String)localObject1).isEmpty())
        {
          i = 1;
          if (((String)localObject2).isEmpty()) {
            break label227;
          }
          label159:
          if ((i != 0) || (j != 0)) {
            displayConversation((String)localObject1, localLastParticipatingAdmin, false, false, (String)localObject2);
          }
        }
      }
      for (;;)
      {
        this.background = getWindow().getDecorView();
        BackgroundUtils.animateBackground(a.c(this, 17170445), a.c(this, R.color.intercom_transparent_black), 200, this.background, new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            IntercomMessengerActivity.this.background.post(new Runnable()
            {
              public void run()
              {
                IntercomMessengerActivity.this.animateSdkWindowIn();
              }
            });
          }
        });
        return;
        i = 0;
        break;
        label227:
        j = 0;
        break label159;
        if (bool1) {
          displayFragment(this.inboxFragment, InboxFragment.class.getName(), false);
        } else {
          displayConversation((String)localObject1, localLastParticipatingAdmin, false, false, (String)localObject2);
        }
      }
      bool1 = false;
    }
  }
  
  private void trackMoveToConversationListMetric()
  {
    Object localObject = getExistingConversationFragment();
    if (localObject != null)
    {
      localObject = ((ConversationFragment)localObject).getConversationId();
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        this.metricTracker.openConversationsListFromNewConversation();
      }
    }
    else
    {
      return;
    }
    this.metricTracker.openConversationsListFromConversation((String)localObject);
  }
  
  void animateSdkWindowIn()
  {
    this.containerView.setVisibility(0);
    this.containerView.setY(getScreenHeight());
    this.containerView.animate().y(0.0F).setInterpolator(new OvershootInterpolator(0.6F)).setDuration(350L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        IntercomMessengerActivity.this.hideBackgroundColor();
        paramAnonymousAnimator = IntercomMessengerActivity.this.getExistingConversationFragment();
        if (paramAnonymousAnimator != null) {
          paramAnonymousAnimator.sdkWindowFinishedAnimating();
        }
      }
    }).start();
  }
  
  ConversationFragment getExistingConversationFragment()
  {
    String str = ConversationFragment.class.getName();
    return (ConversationFragment)getSupportFragmentManager().w(str);
  }
  
  void hideBackgroundColor()
  {
    this.background.setBackgroundResource(R.color.intercom_full_transparent_full_black);
  }
  
  public void onBackPressed()
  {
    ConversationFragment localConversationFragment = getExistingConversationFragment();
    if ((localConversationFragment != null) && (localConversationFragment.shouldHandleOnBackPressed()))
    {
      localConversationFragment.handleOnBackPressed();
      return;
    }
    applyBackOrCloseMessenger();
  }
  
  public void onBackToInboxClicked()
  {
    if (hasLoadedFragment(InboxFragment.class.getName()))
    {
      applyBackOrCloseMessenger();
      return;
    }
    trackMoveToConversationListMetric();
    hideKeyboard();
    displayFragment(this.inboxFragment, InboxFragment.class.getName(), false);
  }
  
  public void onComposerSelected()
  {
    LastParticipatingAdmin localLastParticipatingAdmin = LastParticipatingAdmin.NONE;
    if (!this.isTwoPane) {}
    for (boolean bool = true;; bool = false)
    {
      displayConversation("", localLastParticipatingAdmin, true, bool, "");
      this.metricTracker.newConversationFromComposeButton(((State)Injector.get().getStore().state()).teamPresence().getOfficeHours().isEmpty());
      return;
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.containerView.setY(0.0F);
    this.containerView.getLayoutParams().height = -1;
  }
  
  public void onConversationSelected(Conversation paramConversation)
  {
    Object localObject2 = paramConversation.getLastParticipatingAdmin();
    Object localObject1 = localObject2;
    if (LastParticipatingAdmin.isNull((LastParticipatingAdmin)localObject2)) {
      localObject1 = LastParticipatingAdmin.NONE;
    }
    localObject2 = new TimeFormatter(this, Injector.get().getTimeProvider());
    String str = paramConversation.getId();
    boolean bool2 = paramConversation.isRead();
    if (!this.isTwoPane) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      displayConversation(str, (LastParticipatingAdmin)localObject1, bool2, bool1, "", paramConversation.getGroupConversationParticipants());
      this.metricTracker.openConversationFromConversationList(paramConversation.getId(), ((State)Injector.get().getStore().state()).teamPresence().getOfficeHours().isEmpty(), ((LastParticipatingAdmin)localObject1).isActive(), ((TimeFormatter)localObject2).getLastActiveMinutes(((LastParticipatingAdmin)localObject1).getLastActiveAt()));
      return;
    }
  }
  
  public void onConversationsLoaded(List<Conversation> paramList, InboxState.Status paramStatus)
  {
    if ((!this.isTwoPane) || (paramStatus != InboxState.Status.SUCCESS) || (getExistingConversationFragment() != null)) {}
    do
    {
      return;
      if (!paramList.isEmpty()) {}
      for (int i = 1; i != 0; i = 0)
      {
        onConversationSelected((Conversation)paramList.get(0));
        return;
      }
    } while (!((AppConfig)this.appConfigProvider.get()).isInboundMessages());
    onComposerSelected();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.intercom_messenger_activity_layout);
    this.isTwoPane = getResources().getBoolean(R.bool.intercom_is_two_pane);
    this.inboxFragment = InboxFragment.newInstance(this.isTwoPane);
    this.containerView = findViewById(R.id.messenger_container);
    if (this.containerView != null) {
      this.containerView.setVisibility(8);
    }
    getFragmentManager().executePendingTransactions();
    showMessenger();
    paramBundle = Injector.get();
    this.activityFinisher = paramBundle.getActivityFinisher();
    this.activityFinisher.register(this);
    this.metricTracker = paramBundle.getMetricTracker();
    this.appConfigProvider = paramBundle.getAppConfigProvider();
  }
  
  protected void onDestroy()
  {
    this.activityFinisher.unregister(this);
    super.onDestroy();
  }
  
  public void onToolbarCloseClicked()
  {
    this.metricTracker.closedMessengerCloseButton();
    closeMessenger();
  }
  
  public void setStatusBarColor()
  {
    StatusBarThemer.setStatusBarColor(getWindow(), ((AppConfig)this.appConfigProvider.get()).getBaseColorDark());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/IntercomMessengerActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */