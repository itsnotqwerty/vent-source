package io.intercom.android.sdk.helpcenter;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Map;

class HelpCenterWebViewClient
  extends WebViewClient
{
  private final Map<String, String> headers;
  private final String helpCenterHost;
  private final HelpCenterListener helpCenterListener;
  
  HelpCenterWebViewClient(String paramString, Map<String, String> paramMap, HelpCenterListener paramHelpCenterListener)
  {
    this.helpCenterHost = paramString;
    this.helpCenterListener = paramHelpCenterListener;
    this.headers = paramMap;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    this.helpCenterListener.onWebViewFinishedLoad();
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
    if ((!TextUtils.isEmpty(this.helpCenterHost)) && (this.helpCenterHost.equals(str)))
    {
      paramWebView.loadUrl(paramString, this.headers);
      return false;
    }
    paramWebView.getContext().startActivity(new Intent("android.intent.action.VIEW", localUri));
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/helpcenter/HelpCenterWebViewClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */