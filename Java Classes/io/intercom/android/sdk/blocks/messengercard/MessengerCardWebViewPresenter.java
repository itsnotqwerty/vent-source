package io.intercom.android.sdk.blocks.messengercard;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import io.intercom.a.b.a.e;
import io.intercom.a.c.a.b;
import io.intercom.android.sdk.metrics.MetricTracker;

class MessengerCardWebViewPresenter
{
  private final int baseColor;
  private final b bus;
  private final String conversationId;
  private final String fallbackUrl;
  private final e gson;
  private final View loadingView;
  private final MetricTracker metricTracker;
  private final CardWebView webView;
  
  MessengerCardWebViewPresenter(CardWebView paramCardWebView, View paramView, String paramString1, b paramb, int paramInt, e parame, MetricTracker paramMetricTracker, String paramString2)
  {
    this.webView = paramCardWebView;
    this.loadingView = paramView;
    this.fallbackUrl = paramString1;
    this.bus = paramb;
    this.baseColor = paramInt;
    this.gson = parame;
    this.metricTracker = paramMetricTracker;
    this.conversationId = paramString2;
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  void setUpWebView()
  {
    this.webView.setUp(this.bus);
    this.webView.setBackgroundColor(0);
    this.webView.setWebViewClient(new MessengerCardWebViewClient(Uri.parse(this.fallbackUrl).getHost(), this.loadingView));
    if (Build.VERSION.SDK_INT >= 19) {
      WebView.setWebContentsDebuggingEnabled(true);
    }
    Object localObject = this.webView.getSettings();
    ((WebSettings)localObject).setJavaScriptEnabled(true);
    ((WebSettings)localObject).setUseWideViewPort(true);
    this.webView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
    this.webView.setVerticalScrollBarEnabled(false);
    this.webView.setHorizontalScrollBarEnabled(false);
    localObject = new MessengerCardWebViewInterface(this.webView, this.gson, this.baseColor, this.metricTracker, this.conversationId);
    this.webView.addJavascriptInterface(localObject, "AndroidHost");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */