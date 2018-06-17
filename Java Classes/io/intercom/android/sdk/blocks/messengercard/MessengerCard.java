package io.intercom.android.sdk.blocks.messengercard;

import android.annotation.SuppressLint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import io.intercom.a.b.a.e;
import io.intercom.a.c.a.b;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.blocks.BlockAlignment;
import io.intercom.android.sdk.blocks.StyleType;
import io.intercom.android.sdk.blocks.blockInterfaces.MessengerCardBlock;
import io.intercom.android.sdk.blocks.views.ParagraphView;
import io.intercom.android.sdk.commons.utilities.HtmlCompat;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.metrics.MetricTracker;

public class MessengerCard
  implements MessengerCardBlock
{
  private final Provider<AppConfig> appConfigProvider;
  private final b bus;
  private final String conversationId;
  private final e gson;
  private final MetricTracker metricTracker;
  
  public MessengerCard(Provider<AppConfig> paramProvider, e parame, b paramb, MetricTracker paramMetricTracker, String paramString)
  {
    this.appConfigProvider = paramProvider;
    this.gson = parame;
    this.bus = paramb;
    this.metricTracker = paramMetricTracker;
    this.conversationId = paramString;
  }
  
  private View textFallback(String paramString, ViewGroup paramViewGroup)
  {
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    paramViewGroup = new ParagraphView(paramViewGroup.getContext(), StyleType.ADMIN, BlockAlignment.LEFT, i);
    paramViewGroup.setText(HtmlCompat.fromHtml(paramString));
    return paramViewGroup;
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public View addCard(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return textFallback(paramString1, paramViewGroup);
    }
    paramString1 = (FrameLayout)LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.intercom_messenger_card_block, paramViewGroup, false);
    paramViewGroup = (ProgressBar)paramString1.findViewById(R.id.loading_view);
    paramViewGroup.getIndeterminateDrawable().setColorFilter(((AppConfig)this.appConfigProvider.get()).getBaseColor(), PorterDuff.Mode.SRC_IN);
    CardWebView localCardWebView = (CardWebView)paramString1.findViewById(R.id.messenger_card_web_view);
    new MessengerCardWebViewPresenter(localCardWebView, paramViewGroup, paramString2, this.bus, ((AppConfig)this.appConfigProvider.get()).getBaseColor(), this.gson, this.metricTracker, this.conversationId).setUpWebView();
    localCardWebView.loadUrl(paramString2);
    return paramString1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/messengercard/MessengerCard.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */