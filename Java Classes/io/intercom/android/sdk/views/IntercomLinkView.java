package io.intercom.android.sdk.views;

import android.content.Context;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.LinkOpener;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class IntercomLinkView
  extends AppCompatTextView
{
  private static final int INTERCOM_LINK_ANIMATION_TIME_MS = 100;
  private final int conversationBottomPaddingPx = ScreenUtils.dpToPx(8.0F, getContext());
  private final int[] intercomLinkPosition = new int[2];
  private int lastBottomPosition = 0;
  private final int[] lastChildPosition = new int[2];
  private final Twig twig = LumberMill.getLogger();
  
  public IntercomLinkView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private String getCompanyForUrl(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      this.twig.i("Could not url encode the app name", new Object[0]);
    }
    return "";
  }
  
  private static String getProductForUrl(Part paramPart)
  {
    if ((Part.NULL == paramPart) || (paramPart.isUser())) {
      return "resolve";
    }
    if ((paramPart.isLinkCard()) && ("educate.article".equals(paramPart.getLinkBlock().getLinkType()))) {
      return "educate";
    }
    return "engage";
  }
  
  String createIntercomLinkUrl(Provider<AppConfig> paramProvider, Part paramPart)
  {
    return "https://www.intercom.io/intercom-link?company=" + getCompanyForUrl(((AppConfig)paramProvider.get()).getName()) + "&product=" + getProductForUrl(paramPart) + "&utm_source=android-sdk&utm_campaign=intercom-link&utm_content=we-run-on-intercom&utm_medium=messenger";
  }
  
  public void followIntercomLink(Provider<AppConfig> paramProvider, Part paramPart, Api paramApi)
  {
    LinkOpener.handleUrl(createIntercomLinkUrl(paramProvider, paramPart), getContext(), paramApi);
  }
  
  public void hide()
  {
    animate().alpha(0.0F).setDuration(100L);
  }
  
  public void hideIfIntersectedOrShow(View paramView)
  {
    paramView.getLocationOnScreen(this.lastChildPosition);
    int i = this.lastChildPosition[1] + paramView.getHeight() + this.conversationBottomPaddingPx;
    getLocationOnScreen(this.intercomLinkPosition);
    if ((i >= this.intercomLinkPosition[1]) && (this.lastBottomPosition < this.intercomLinkPosition[1])) {
      hide();
    }
    for (;;)
    {
      this.lastBottomPosition = i;
      return;
      if ((i < this.intercomLinkPosition[1]) && (this.lastBottomPosition >= this.intercomLinkPosition[1])) {
        show();
      }
    }
  }
  
  public void show()
  {
    animate().alpha(1.0F).setDuration(100L);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/IntercomLinkView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */