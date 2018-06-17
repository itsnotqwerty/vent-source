package io.intercom.android.sdk.helpcenter;

import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.metrics.MetricTracker;
import java.util.Map;

public class HelpCenterWebViewInterface
{
  public static final String METRIC_EVENT = "METRIC_EVENT";
  public static final String TRACK_REACTION = "TRACK_REACTION";
  private final Api api;
  private final e gson;
  private final MetricTracker metricTracker;
  private final WebView webView;
  
  public HelpCenterWebViewInterface(WebView paramWebView, e parame, MetricTracker paramMetricTracker, Api paramApi)
  {
    this.webView = paramWebView;
    this.gson = parame;
    this.metricTracker = paramMetricTracker;
    this.api = paramApi;
  }
  
  @JavascriptInterface
  public void handleAction(String paramString)
  {
    final Object localObject = (HelpCenterWebViewAction)this.gson.d(paramString, HelpCenterWebViewAction.class);
    paramString = ((HelpCenterWebViewAction)localObject).getType();
    localObject = ((HelpCenterWebViewAction)localObject).getValue();
    if ((paramString == null) || (localObject == null)) {
      return;
    }
    int i = -1;
    switch (paramString.hashCode())
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
            String str1 = (String)localObject.get("action");
            String str2 = (String)localObject.get("object");
            String str3 = (String)localObject.get("place");
            Map localMap = null;
            if ((localObject.get("metadata") instanceof Map)) {
              localMap = (Map)localObject.get("metadata");
            }
            HelpCenterWebViewInterface.this.metricTracker.educateWebviewMetric(str1, str2, str3, localMap);
          }
        });
        return;
        if (paramString.equals("METRIC_EVENT"))
        {
          i = 0;
          continue;
          if (paramString.equals("TRACK_REACTION")) {
            i = 1;
          }
        }
        break;
      }
    }
    this.webView.post(new Runnable()
    {
      public void run()
      {
        Double localDouble1 = (Double)localObject.get("article_id");
        Double localDouble2 = (Double)localObject.get("reaction_index");
        if ((localDouble1 == null) || (localDouble2 == null)) {
          return;
        }
        HelpCenterWebViewInterface.this.api.reactToLink(String.valueOf(localDouble1.intValue()), localDouble2.intValue(), true);
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */