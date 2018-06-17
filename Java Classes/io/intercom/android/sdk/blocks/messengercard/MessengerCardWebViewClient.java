package io.intercom.android.sdk.blocks.messengercard;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MessengerCardWebViewClient
  extends WebViewClient
{
  private static final int WEBVIEW_FADE_IN_TIME_MS = 150;
  private final String cardHost;
  private final View loadingView;
  
  MessengerCardWebViewClient(String paramString, View paramView)
  {
    this.cardHost = paramString;
    this.loadingView = paramView;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    this.loadingView.setVisibility(8);
    paramWebView.animate().alpha(1.0F).setStartDelay(150L).setDuration(150L).start();
  }
  
  @TargetApi(21)
  public boolean shouldOverrideUrlLoading(WebView paramWebView, WebResourceRequest paramWebResourceRequest)
  {
    return shouldOverrideUrlLoading(paramWebView, paramWebResourceRequest.getUrl().toString());
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Uri localUri = Uri.parse(paramString);
    String str = localUri.getHost();
    if ((!TextUtils.isEmpty(this.cardHost)) && (this.cardHost.equals(str)))
    {
      paramWebView.loadUrl(paramString);
      return false;
    }
    paramWebView.getContext().startActivity(new Intent("android.intent.action.VIEW", localUri));
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */