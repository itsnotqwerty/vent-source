package io.intercom.android.sdk.helpcenter;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Build.VERSION;
import android.webkit.WebSettings;
import android.webkit.WebView;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.conversation.JavascriptRunner;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import java.util.Collections;
import java.util.Map;

public class HelpCenterWebViewPresenter
{
  private final Provider<Api> apiProvider;
  private final Provider<AppConfig> appConfigProvider;
  private final e gson;
  private final Map<String, String> headers = Collections.singletonMap("MobileClient", "AndroidIntercomWebView");
  private final String helpCenterUrl;
  Intercom.Visibility hostInAppsVisibility;
  Intercom.Visibility hostLauncherVisibility;
  private final JavascriptRunner jsRunner;
  private final HelpCenterListener listener;
  private final MetricTracker metricTracker;
  private final Store<State> store;
  private final WebView webView;
  
  public HelpCenterWebViewPresenter(WebView paramWebView, JavascriptRunner paramJavascriptRunner, String paramString, e parame, MetricTracker paramMetricTracker, Provider<AppConfig> paramProvider, Store<State> paramStore, Provider<Api> paramProvider1, HelpCenterListener paramHelpCenterListener)
  {
    this.webView = paramWebView;
    this.jsRunner = paramJavascriptRunner;
    this.helpCenterUrl = paramString;
    this.gson = parame;
    this.metricTracker = paramMetricTracker;
    this.appConfigProvider = paramProvider;
    this.store = paramStore;
    this.apiProvider = paramProvider1;
    this.listener = paramHelpCenterListener;
  }
  
  private boolean shouldForceShowMessengerInHelpCenter()
  {
    return !((AppConfig)this.appConfigProvider.get()).hasFeature("disable-force-show-help-center-messenger");
  }
  
  private void storeHostVisibilitySettings()
  {
    OverlayState localOverlayState = (OverlayState)this.store.select(Selectors.OVERLAY);
    this.hostLauncherVisibility = localOverlayState.launcherVisibility();
    this.hostInAppsVisibility = localOverlayState.notificationVisibility();
  }
  
  public void loadBundle()
  {
    this.jsRunner.reset();
    this.webView.loadUrl(this.helpCenterUrl, this.headers);
  }
  
  public void resetMessengerToHostState(io.intercom.android.sdk.experimental.Intercom paramIntercom)
  {
    if (shouldForceShowMessengerInHelpCenter())
    {
      paramIntercom.setLauncherVisibility(this.hostLauncherVisibility);
      paramIntercom.setInAppMessageVisibility(this.hostInAppsVisibility);
    }
  }
  
  public void setUpMessenger(io.intercom.android.sdk.experimental.Intercom paramIntercom)
  {
    if (shouldForceShowMessengerInHelpCenter())
    {
      storeHostVisibilitySettings();
      paramIntercom.setLauncherVisibility(io.intercom.android.sdk.Intercom.VISIBLE);
      paramIntercom.setInAppMessageVisibility(io.intercom.android.sdk.Intercom.VISIBLE);
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public void setUpWebView()
  {
    this.webView.setVerticalScrollBarEnabled(false);
    if (Build.VERSION.SDK_INT >= 21) {
      this.webView.setClipToOutline(true);
    }
    this.webView.getSettings().setJavaScriptEnabled(true);
    HelpCenterWebViewInterface localHelpCenterWebViewInterface = new HelpCenterWebViewInterface(this.webView, this.gson, this.metricTracker, (Api)this.apiProvider.get());
    this.webView.addJavascriptInterface(localHelpCenterWebViewInterface, "AndroidHost");
    this.webView.setWebViewClient(new HelpCenterWebViewClient(Uri.parse(this.helpCenterUrl).getHost(), this.headers, this.listener));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */