package io.intercom.android.sdk.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources.NotFoundException;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.b.b;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.conversation.JavascriptRunner;
import io.intercom.android.sdk.experimental.Intercom;
import io.intercom.android.sdk.helpcenter.HelpCenterListener;
import io.intercom.android.sdk.helpcenter.HelpCenterWebViewPresenter;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.utilities.ColorUtils;
import io.intercom.android.sdk.views.IntercomToolbar;
import io.intercom.android.sdk.views.IntercomToolbar.Listener;
import io.intercom.android.sdk.views.StatusBarThemer;
import java.lang.annotation.Annotation;

public class IntercomHelpCenterActivity
  extends IntercomBaseActivity
  implements HelpCenterListener, IntercomToolbar.Listener
{
  private static final int ENTRANCE_ANIMATION_TIME_MS = 300;
  private static final int EXIT_ANIMATION_TIME_MS = 150;
  public static final String LINK_TRANSITION_KEY = "link_background";
  private static final String PARCEL_CONVERSATION_ID = "parcel_conversation_id";
  public static final String PARCEL_DISPLAY_MODE = "parcel_display_mode";
  private static final String PARCEL_HELP_CENTER_URL = "parcel_help_center_url";
  private View containerView;
  String conversationId = "";
  @DisplayMode
  int displayMode = 1;
  private e gson;
  private IntercomToolbar intercomToolbar;
  private JavascriptRunner jsRunner;
  ProgressBar loadingView;
  MetricTracker metricTracker;
  private HelpCenterWebViewPresenter presenter;
  WebView webView;
  
  private void animateWindowIn()
  {
    this.containerView.setVisibility(0);
    this.containerView.setY(findViewById(16908290).getMeasuredHeight());
    this.containerView.animate().y(0.0F).setInterpolator(new OvershootInterpolator(0.6F)).setDuration(350L).start();
  }
  
  private void animateWindowOut()
  {
    this.containerView.animate().y(getWindow().getDecorView().getHeight()).setInterpolator(new OvershootInterpolator()).setDuration(600L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        IntercomHelpCenterActivity.this.finish();
        IntercomHelpCenterActivity.this.overridePendingTransition(0, 0);
      }
    }).start();
  }
  
  public static Intent buildIntent(Context paramContext, String paramString1, @DisplayMode int paramInt, String paramString2)
  {
    paramContext = new Intent(paramContext, IntercomHelpCenterActivity.class);
    paramContext.putExtra("parcel_help_center_url", paramString1);
    paramContext.putExtra("parcel_display_mode", paramInt);
    paramContext.putExtra("parcel_conversation_id", paramString2);
    paramContext.setFlags(268435456);
    return paramContext;
  }
  
  @TargetApi(19)
  private Transition enterTransition()
  {
    ChangeBounds localChangeBounds = new ChangeBounds();
    localChangeBounds.setInterpolator(new b());
    localChangeBounds.setDuration(300L);
    return localChangeBounds;
  }
  
  private void fadeOutView(View paramView)
  {
    paramView.animate().alpha(0.0F).setDuration(150L).start();
  }
  
  private void hideKeyboard()
  {
    View localView = getCurrentFocus();
    if (localView != null) {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
    }
  }
  
  private void insertWebView()
  {
    try
    {
      this.webView = new WebView(this);
      this.webView.setAlpha(0.0F);
      this.webView.setId(R.id.intercom_help_center_web_view);
      this.webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
      ((FrameLayout)findViewById(R.id.link_view)).addView(this.webView, 0);
      return;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;)
      {
        this.webView = new WebView(getApplicationContext());
      }
    }
  }
  
  private boolean isFullScreenWithExperimentalMessenger()
  {
    return (this.displayMode == 1) && (Intercom.isBooted());
  }
  
  @TargetApi(19)
  private Transition returnTransition()
  {
    ChangeBounds localChangeBounds = new ChangeBounds();
    localChangeBounds.setInterpolator(new b());
    localChangeBounds.setDuration(150L);
    return localChangeBounds;
  }
  
  void closeHelpCenter()
  {
    hideKeyboard();
    if (isFullScreenWithExperimentalMessenger())
    {
      this.presenter.resetMessengerToHostState(Intercom.client());
      animateWindowOut();
      return;
    }
    fadeOutView(this.webView);
    supportFinishAfterTransition();
  }
  
  public void onBackPressed()
  {
    if (this.webView.canGoBack())
    {
      this.webView.goBack();
      return;
    }
    this.metricTracker.closedHelpCenter(this.conversationId, 1);
    closeHelpCenter();
  }
  
  public void onCloseClicked()
  {
    this.metricTracker.closedHelpCenter(this.conversationId, 0);
    closeHelpCenter();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Injector localInjector = Injector.get();
    this.metricTracker = localInjector.getMetricTracker();
    int i = ((AppConfig)localInjector.getAppConfigProvider().get()).getHelpCenterBaseColor();
    Bundle localBundle = getIntent().getExtras();
    paramBundle = "";
    if (localBundle != null)
    {
      paramBundle = localBundle.getString("parcel_help_center_url", "");
      this.conversationId = localBundle.getString("parcel_conversation_id", "");
      this.displayMode = localBundle.getInt("parcel_display_mode", 1);
    }
    if (this.displayMode == 1)
    {
      setContentView(R.layout.intercom_activity_help_center_fullscreen);
      insertWebView();
      this.intercomToolbar = ((IntercomToolbar)findViewById(R.id.intercom_toolbar));
      this.intercomToolbar.setTitle("Help");
      this.intercomToolbar.setListener(this);
      this.intercomToolbar.setSubtitleVisibility(8);
      this.intercomToolbar.setBackgroundColor(i);
      StatusBarThemer.setStatusBarColor(getWindow(), ColorUtils.darkenColor(i));
      this.intercomToolbar.setBackgroundColor(i);
      this.containerView = findViewById(R.id.link_root);
      this.containerView.setVisibility(8);
      this.containerView.post(new Runnable()
      {
        public void run()
        {
          IntercomHelpCenterActivity.this.animateWindowIn();
        }
      });
    }
    for (;;)
    {
      if (TextUtils.isEmpty(paramBundle)) {
        closeHelpCenter();
      }
      this.loadingView = ((ProgressBar)findViewById(R.id.loading_view));
      this.loadingView.getIndeterminateDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
      this.jsRunner = new JavascriptRunner(this.webView);
      this.gson = localInjector.getGson();
      this.presenter = new HelpCenterWebViewPresenter(this.webView, this.jsRunner, paramBundle, this.gson, this.metricTracker, localInjector.getAppConfigProvider(), localInjector.getStore(), localInjector.getApiProvider(), this);
      if (isFullScreenWithExperimentalMessenger()) {
        this.presenter.setUpMessenger(Intercom.client());
      }
      this.presenter.setUpWebView();
      if (Build.VERSION.SDK_INT >= 21)
      {
        getWindow().setSharedElementEnterTransition(enterTransition());
        getWindow().setSharedElementReturnTransition(returnTransition());
        findViewById(R.id.link_view).setTransitionName("link_background");
      }
      this.presenter.loadBundle();
      return;
      setContentView(R.layout.intercom_activity_help_center);
      insertWebView();
      this.webView.setBackgroundResource(R.drawable.intercom_conversation_card_background);
      findViewById(R.id.dismiss).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          IntercomHelpCenterActivity.this.metricTracker.closedHelpCenter(IntercomHelpCenterActivity.this.conversationId, 0);
          IntercomHelpCenterActivity.this.closeHelpCenter();
        }
      });
    }
  }
  
  public void onInboxClicked() {}
  
  public void onToolbarClicked() {}
  
  public void onWebViewFinishedLoad()
  {
    this.jsRunner.runPendingScripts();
    this.webView.animate().alpha(1.0F).setDuration(300L).start();
    this.loadingView.setVisibility(8);
    this.metricTracker.viewedHelpCenter(this.conversationId);
  }
  
  public static @interface DisplayMode
  {
    public static final int FULL_SCREEN = 1;
    public static final int POP_UP = 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/IntercomHelpCenterActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */