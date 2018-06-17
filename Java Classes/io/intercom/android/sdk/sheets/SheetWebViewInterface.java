package io.intercom.android.sdk.sheets;

import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.helpcenter.HelpCenterWebViewInterface;
import io.intercom.android.sdk.metrics.MetricTracker;
import java.util.Map;

public class SheetWebViewInterface
{
  private static final String CLOSE_SHEET = "close";
  private static final String PAYLOAD_SHEET_TITLE = "title";
  private static final String SHEET_TITLE = "set-title";
  private static final String SUBMIT_SHEET = "submit-sheet";
  private final Api api;
  private final e gson;
  private final SheetListener listener;
  private final MetricTracker metricTracker;
  private final WebView webView;
  
  SheetWebViewInterface(WebView paramWebView, e parame, MetricTracker paramMetricTracker, Api paramApi, SheetListener paramSheetListener)
  {
    this.webView = paramWebView;
    this.gson = parame;
    this.listener = paramSheetListener;
    this.metricTracker = paramMetricTracker;
    this.api = paramApi;
  }
  
  private boolean isHelpCenterMetric(String paramString)
  {
    return ("METRIC_EVENT".equals(paramString)) || ("TRACK_REACTION".equals(paramString));
  }
  
  @JavascriptInterface
  public void handleAction(String paramString)
  {
    final Object localObject = (SheetWebViewAction)this.gson.d(paramString, SheetWebViewAction.class);
    String str = ((SheetWebViewAction)localObject).getType();
    localObject = ((SheetWebViewAction)localObject).getPayload();
    if (isHelpCenterMetric(str)) {
      new HelpCenterWebViewInterface(this.webView, this.gson, this.metricTracker, this.api).handleAction(paramString);
    }
    while ((str == null) || (localObject == null)) {
      return;
    }
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
      case 0: 
        this.webView.post(new Runnable()
        {
          public void run()
          {
            SheetWebViewInterface.this.listener.onSheetTitleAction(localObject.get("title").toString());
          }
        });
        return;
        if (str.equals("set-title"))
        {
          i = 0;
          continue;
          if (str.equals("close"))
          {
            i = 1;
            continue;
            if (str.equals("submit-sheet")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    this.webView.post(new Runnable()
    {
      public void run()
      {
        SheetWebViewInterface.this.listener.onCloseSheetAction();
      }
    });
    return;
    this.webView.post(new Runnable()
    {
      public void run()
      {
        SheetWebViewInterface.this.listener.onSubmitSheetAction(localObject);
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/sheets/SheetWebViewInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */