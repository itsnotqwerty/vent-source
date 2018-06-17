package io.intercom.android.sdk.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Bundle;
import android.support.v7.app.c;
import android.support.v7.app.c.a;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ProgressBar;
import io.intercom.a.c.a.b;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.conversation.JavascriptRunner;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.Sheet;
import io.intercom.android.sdk.models.Sheet.Builder;
import io.intercom.android.sdk.models.events.CardUpdatedEvent;
import io.intercom.android.sdk.sheets.SheetListener;
import io.intercom.android.sdk.sheets.SheetWebViewPresenter;
import io.intercom.android.sdk.utilities.ColorUtils;
import io.intercom.android.sdk.views.IntercomErrorView;
import io.intercom.android.sdk.views.IntercomToolbar;
import io.intercom.android.sdk.views.IntercomToolbar.Listener;
import io.intercom.android.sdk.views.StatusBarThemer;
import io.intercom.retrofit2.Call;
import io.intercom.retrofit2.Callback;
import io.intercom.retrofit2.Response;
import java.util.HashMap;
import java.util.Map;

public class IntercomSheetActivity
  extends IntercomBaseActivity
  implements SheetListener, IntercomToolbar.Listener
{
  private static final int ENTRANCE_ANIMATION_TIME_MS = 250;
  private static final int EXIT_ANIMATION_TIME_MS = 200;
  private static final String PARCEL_CARD_URI = "parcel_card_uri";
  private static final String PARCEL_CONVERSATION_ID = "parcel_conversation_id";
  private static final String PARCEL_PARAMS = "parcel_params";
  private static final String PARCEL_SHEET_URL = "parcel_sheet_url";
  private static final int WEBVIEW_FADE_IN_TIME_MS = 300;
  private int baseColor;
  private String cardUri;
  private View containerView;
  private String conversationId = "";
  private IntercomErrorView intercomErrorView;
  private IntercomToolbar intercomToolbar;
  private JavascriptRunner jsRunner;
  ProgressBar loadingBar;
  private MetricTracker metricTracker;
  private HashMap params = new HashMap();
  private SheetWebViewPresenter presenter;
  private String sheetUrl = "";
  WebView webView;
  
  private void animateWindowIn()
  {
    this.containerView.setVisibility(0);
    this.containerView.setY(findViewById(16908290).getMeasuredHeight());
    this.containerView.animate().y(0.0F).setInterpolator(new AccelerateInterpolator()).setDuration(250L).start();
  }
  
  private void animateWindowOut()
  {
    this.containerView.animate().y(getWindow().getDecorView().getHeight()).setDuration(200L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        IntercomSheetActivity.this.finish();
        IntercomSheetActivity.this.overridePendingTransition(0, 0);
      }
    }).start();
  }
  
  public static Intent buildIntent(Context paramContext, String paramString1, Map<String, Object> paramMap, String paramString2, String paramString3)
  {
    paramContext = new Intent(paramContext, IntercomSheetActivity.class);
    paramContext.putExtra("parcel_sheet_url", paramString1);
    paramContext.putExtra("parcel_params", new HashMap(paramMap));
    paramContext.putExtra("parcel_card_uri", paramString2);
    paramContext.putExtra("parcel_conversation_id", paramString3);
    return paramContext;
  }
  
  private void hideKeyboard()
  {
    View localView = getCurrentFocus();
    if (localView != null) {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
    }
  }
  
  private void loadSheet(Api paramApi)
  {
    this.loadingBar.setVisibility(0);
    this.intercomErrorView.setVisibility(8);
    paramApi.fetchSheet(this.params, new Callback()
    {
      public void onFailure(Call<Sheet.Builder> paramAnonymousCall, Throwable paramAnonymousThrowable)
      {
        IntercomSheetActivity.this.showErrorView();
      }
      
      public void onResponse(Call<Sheet.Builder> paramAnonymousCall, Response<Sheet.Builder> paramAnonymousResponse)
      {
        if ((paramAnonymousResponse.isSuccessful()) && (paramAnonymousResponse.body() != null))
        {
          IntercomSheetActivity.this.intercomErrorView.setVisibility(8);
          paramAnonymousCall = ((Sheet.Builder)paramAnonymousResponse.body()).build();
          IntercomSheetActivity.this.presenter.loadBundle(paramAnonymousCall.getBody());
          IntercomSheetActivity.this.metricTracker.viewedMessengerSheet(IntercomSheetActivity.this.conversationId, IntercomSheetActivity.this.sheetUrl);
          return;
        }
        IntercomSheetActivity.this.showErrorView();
      }
    });
  }
  
  private void setUpToolbar()
  {
    this.intercomToolbar = ((IntercomToolbar)findViewById(R.id.intercom_toolbar));
    this.intercomToolbar.setListener(this);
    this.intercomToolbar.setSubtitleVisibility(8);
    StatusBarThemer.setStatusBarColor(getWindow(), ColorUtils.darkenColor(this.baseColor));
    this.intercomToolbar.setBackgroundColor(this.baseColor);
    this.intercomToolbar.setInboxButtonVisibility(0);
    this.intercomToolbar.setCloseButtonVisibility(8);
    this.loadingBar = ((ProgressBar)this.intercomToolbar.findViewById(R.id.toolbar_progress_bar));
    this.loadingBar.setProgressDrawable(new LayerDrawable(new Drawable[] { new ColorDrawable(ColorUtils.darkenColor(this.baseColor)), new ScaleDrawable(new ColorDrawable(-1), 3, 1.0F, -1.0F) }));
  }
  
  private void showErrorView()
  {
    this.loadingBar.setVisibility(8);
    this.intercomErrorView.setVisibility(0);
  }
  
  private void showSubmitActionError(final Map<String, Object> paramMap)
  {
    paramMap = new c.a(this).setTitle(R.string.intercom_inbox_error_state_title).setMessage(R.string.intercom_try_again_minute).setPositiveButton(R.string.intercom_retry, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        IntercomSheetActivity.this.onSubmitSheetAction(paramMap);
      }
    }).create();
    paramMap.show();
    paramMap.getButton(-1).setTextColor(this.baseColor);
  }
  
  void closeSheet()
  {
    this.metricTracker.closedMessengerSheet(this.conversationId, this.sheetUrl);
    hideKeyboard();
    animateWindowOut();
  }
  
  public void onBackPressed()
  {
    if (this.webView.canGoBack())
    {
      this.webView.goBack();
      return;
    }
    closeSheet();
  }
  
  public void onCloseClicked() {}
  
  public void onCloseSheetAction()
  {
    closeSheet();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = Injector.get();
    this.metricTracker = paramBundle.getMetricTracker();
    this.baseColor = ((AppConfig)paramBundle.getAppConfigProvider().get()).getBaseColor();
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      this.sheetUrl = localBundle.getString("parcel_sheet_url", "");
      this.conversationId = localBundle.getString("parcel_conversation_id", "");
      this.params = ((HashMap)localBundle.getSerializable("parcel_params"));
      this.cardUri = localBundle.getString("parcel_card_uri");
    }
    if ((TextUtils.isEmpty(this.sheetUrl)) || (this.params == null)) {
      closeSheet();
    }
    setContentView(R.layout.intercom_activity_sheet);
    setUpToolbar();
    this.containerView = findViewById(R.id.sheet_root);
    this.containerView.setVisibility(8);
    this.containerView.post(new Runnable()
    {
      public void run()
      {
        IntercomSheetActivity.this.animateWindowIn();
      }
    });
    this.webView = ((WebView)findViewById(R.id.sheet_web_view));
    this.webView.setWebChromeClient(new WebChromeClient()
    {
      public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        IntercomSheetActivity.this.loadingBar.setProgress(paramAnonymousInt);
      }
    });
    this.jsRunner = new JavascriptRunner(this.webView);
    this.presenter = new SheetWebViewPresenter(this.webView, this.jsRunner, this.sheetUrl, this);
    this.presenter.setUpWebView();
    this.intercomErrorView = ((IntercomErrorView)this.containerView.findViewById(R.id.error_layout_sheet));
    this.intercomErrorView.setActionButtonTextColor(this.baseColor);
    this.intercomErrorView.setActionButtonClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        IntercomSheetActivity.this.loadSheet(Injector.get().getApi());
      }
    });
    loadSheet(paramBundle.getApi());
  }
  
  public void onInboxClicked()
  {
    closeSheet();
  }
  
  public void onSheetTitleAction(String paramString)
  {
    this.intercomToolbar.setTitle(paramString);
  }
  
  public void onSubmitSheetAction(final Map<String, Object> paramMap)
  {
    Injector.get().getApi().submitSheet(this.cardUri, paramMap, new Callback()
    {
      public void onFailure(Call<Void> paramAnonymousCall, Throwable paramAnonymousThrowable)
      {
        IntercomSheetActivity.this.showSubmitActionError(paramMap);
      }
      
      public void onResponse(Call<Void> paramAnonymousCall, Response<Void> paramAnonymousResponse)
      {
        if (paramAnonymousResponse.isSuccessful())
        {
          Injector.get().getBus().post(new CardUpdatedEvent());
          IntercomSheetActivity.this.closeSheet();
          return;
        }
        IntercomSheetActivity.this.showSubmitActionError(paramMap);
      }
    });
  }
  
  public void onToolbarClicked() {}
  
  public void onWebViewFinishedLoad()
  {
    this.jsRunner.runPendingScripts();
    this.webView.animate().alpha(1.0F).setDuration(300L).start();
    this.loadingBar.setVisibility(8);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/IntercomSheetActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */