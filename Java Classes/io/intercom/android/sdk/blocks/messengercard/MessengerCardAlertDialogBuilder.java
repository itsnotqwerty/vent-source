package io.intercom.android.sdk.blocks.messengercard;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.ColorStateList;
import android.os.Build.VERSION;
import android.support.v4.view.r;
import android.support.v7.app.c.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.AutoCompleteTextView;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import java.util.Map;

class MessengerCardAlertDialogBuilder
  extends c.a
{
  MessengerCardAlertDialogBuilder(Context paramContext, Map<String, Object> paramMap, int paramInt, WebView paramWebView)
  {
    super(paramContext);
    setUp(paramContext, paramMap, paramInt, paramWebView);
  }
  
  private void setUp(Context paramContext, final Map<String, Object> paramMap, int paramInt, final WebView paramWebView)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(R.layout.intercom_webview_card_input, null, false);
    setTitle((CharSequence)paramMap.get("label"));
    final AutoCompleteTextView localAutoCompleteTextView = (AutoCompleteTextView)paramContext.findViewById(R.id.input);
    localAutoCompleteTextView.setText((CharSequence)paramMap.get("currentValue"));
    localAutoCompleteTextView.setHint((CharSequence)paramMap.get("placeholder"));
    r.a(localAutoCompleteTextView, ColorStateList.valueOf(paramInt));
    setView(paramContext);
    setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        String str = "window.fallbackApp.bridgeEvent('UPDATE_TEXT', { value:'" + localAutoCompleteTextView.getText() + "', id:'" + paramMap.get("id") + "'})";
        if (Build.VERSION.SDK_INT >= 19) {
          paramWebView.evaluateJavascript(str, null);
        }
        for (;;)
        {
          ((InputMethodManager)localAutoCompleteTextView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(localAutoCompleteTextView.getWindowToken(), 0);
          paramAnonymousDialogInterface.dismiss();
          return;
          paramWebView.loadUrl("javascript:" + str);
        }
      }
    });
    setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ((InputMethodManager)localAutoCompleteTextView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(localAutoCompleteTextView.getWindowToken(), 0);
        paramAnonymousDialogInterface.cancel();
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */