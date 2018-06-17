package io.intercom.android.sdk.sheets;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.webkit.WebSettings;
import android.webkit.WebView;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.conversation.JavascriptRunner;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class SheetWebViewPresenter
{
  private final JavascriptRunner jsRunner;
  private final SheetListener listener;
  private final String sheetUrl;
  private final WebView webView;
  
  public SheetWebViewPresenter(WebView paramWebView, JavascriptRunner paramJavascriptRunner, String paramString, SheetListener paramSheetListener)
  {
    this.webView = paramWebView;
    this.jsRunner = paramJavascriptRunner;
    this.sheetUrl = paramString;
    this.listener = paramSheetListener;
  }
  
  public void loadBundle(String paramString)
  {
    this.jsRunner.reset();
    try
    {
      paramString = "intercom_data=" + URLEncoder.encode(paramString, "UTF-8");
      this.webView.postUrl(this.sheetUrl, paramString.getBytes());
      return;
    }
    catch (UnsupportedEncodingException paramString) {}
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public void setUpWebView()
  {
    this.webView.setVerticalScrollBarEnabled(false);
    Object localObject = this.webView.getSettings();
    ((WebSettings)localObject).setJavaScriptEnabled(true);
    ((WebSettings)localObject).setUserAgentString("IntercomMobileWebView");
    this.webView.getSettings().setLoadWithOverviewMode(true);
    this.webView.getSettings().setUseWideViewPort(true);
    localObject = Injector.get();
    localObject = new SheetWebViewInterface(this.webView, ((Injector)localObject).getGson(), ((Injector)localObject).getMetricTracker(), ((Injector)localObject).getApi(), this.listener);
    this.webView.addJavascriptInterface(localObject, "AndroidHost");
    this.webView.setWebViewClient(new SheetWebViewClient(Uri.parse(this.sheetUrl).getHost(), this.listener));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/sheets/SheetWebViewPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */