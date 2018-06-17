package io.intercom.android.sdk.blocks.messengercard;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.c;
import android.text.TextUtils;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.Button;
import io.intercom.a.b.a.e;
import io.intercom.android.sdk.activities.IntercomSheetActivity;
import io.intercom.android.sdk.metrics.MetricTracker;
import java.util.HashMap;
import java.util.Map;

class MessengerCardWebViewInterface
{
  private static final String INPUT_TEXT = "INPUT_TEXT";
  private static final String METRIC_EVENT = "METRIC_EVENT";
  private static final String OPEN_SHEET = "OPEN_SHEET";
  private static final String OPEN_URL = "OPEN_URL";
  private final int baseColor;
  private final String conversationId;
  private final e gson;
  private final MetricTracker metricTracker;
  private final WebView webView;
  
  MessengerCardWebViewInterface(WebView paramWebView, e parame, int paramInt, MetricTracker paramMetricTracker, String paramString)
  {
    this.webView = paramWebView;
    this.gson = parame;
    this.baseColor = paramInt;
    this.metricTracker = paramMetricTracker;
    this.conversationId = paramString;
  }
  
  private void openSheet(Map<String, Object> paramMap, Context paramContext)
  {
    String str2 = (String)paramMap.get("url");
    if (paramMap.containsKey("params"))
    {
      paramMap = (Map)paramMap.get("params");
      if (!paramMap.containsKey("uri")) {
        break label86;
      }
    }
    label86:
    for (String str1 = paramMap.get("uri").toString();; str1 = "")
    {
      if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str1))) {
        break label92;
      }
      return;
      paramMap = new HashMap();
      break;
    }
    label92:
    paramContext.startActivity(IntercomSheetActivity.buildIntent(paramContext, str2, paramMap, str1, this.conversationId));
  }
  
  private void openUrl(Map<String, Object> paramMap, Context paramContext)
  {
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse((String)paramMap.get("url"))));
  }
  
  private void showTextInputDialog(Map<String, Object> paramMap, Context paramContext)
  {
    paramMap = new MessengerCardAlertDialogBuilder(paramContext, paramMap, this.baseColor, this.webView).create();
    paramMap.show();
    paramMap.getWindow().setSoftInputMode(5);
    paramMap.getButton(-2).setTextColor(this.baseColor);
    paramMap.getButton(-1).setTextColor(this.baseColor);
  }
  
  @JavascriptInterface
  public void handleAction(final String paramString)
  {
    paramString = (MessengerCardWebViewAction)this.gson.d(paramString, MessengerCardWebViewAction.class);
    final Map localMap = paramString.getPayload();
    String str = paramString.getType();
    if ((str == null) || (localMap == null)) {
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
            MessengerCardWebViewInterface.this.openUrl(localMap, MessengerCardWebViewInterface.this.webView.getContext());
          }
        });
        return;
        if (str.equals("OPEN_URL"))
        {
          i = 0;
          continue;
          if (str.equals("OPEN_SHEET"))
          {
            i = 1;
            continue;
            if (str.equals("INPUT_TEXT"))
            {
              i = 2;
              continue;
              if (str.equals("METRIC_EVENT")) {
                i = 3;
              }
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
        MessengerCardWebViewInterface.this.openSheet(localMap, MessengerCardWebViewInterface.this.webView.getContext());
      }
    });
    return;
    this.webView.post(new Runnable()
    {
      public void run()
      {
        MessengerCardWebViewInterface.this.showTextInputDialog(localMap, MessengerCardWebViewInterface.this.webView.getContext());
      }
    });
    return;
    this.webView.post(new Runnable()
    {
      public void run()
      {
        Map localMap2 = paramString.getPayload();
        String str1 = (String)localMap2.get("action");
        String str2 = (String)localMap2.get("object");
        String str3 = (String)localMap2.get("place");
        Map localMap1 = null;
        if ((localMap2.get("metadata") instanceof Map)) {
          localMap1 = (Map)localMap2.get("metadata");
        }
        MessengerCardWebViewInterface.this.metricTracker.messengerCardWebViewEvent(str1, str2, str3, localMap1);
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */