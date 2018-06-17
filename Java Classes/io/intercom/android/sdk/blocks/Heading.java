package io.intercom.android.sdk.blocks;

import android.support.v4.content.a;
import android.text.Spanned;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.blocks.blockInterfaces.HeadingBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.SubheadingBlock;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.ColorUtils;
import io.intercom.android.sdk.utilities.FontUtils;
import io.intercom.android.sdk.utilities.TrackingLinkMovementMethod;

class Heading
  implements HeadingBlock, SubheadingBlock
{
  private static final int LARGE_MARGIN_BOTTOM_DP = 32;
  private static final int LARGE_TEXT_SP = 24;
  private static final int MARGIN_BOTTOM_DP = 16;
  private static final int MEDIUM_TEXT_SP = 20;
  private static final int SMALL_TEXT_SP = 15;
  private final Provider<AppConfig> appConfigProvider;
  private final StyleType style;
  
  Heading(StyleType paramStyleType, Provider<AppConfig> paramProvider)
  {
    this.style = paramStyleType;
    this.appConfigProvider = paramProvider;
  }
  
  private void styleAnnouncementHeading(TextView paramTextView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramTextView.setTextSize(paramInt2);
    paramTextView.setTextColor(paramInt1);
    paramTextView.setLinkTextColor(paramInt1);
    paramTextView.setMovementMethod(new TrackingLinkMovementMethod());
    BlockUtils.setLargeLineSpacing(paramTextView);
    BlockUtils.setMarginBottom(paramTextView, paramInt3);
  }
  
  private void styleChatHeading(TextView paramTextView, int paramInt)
  {
    paramTextView.setTextSize(15.0F);
    paramTextView.setTextColor(paramInt);
    paramTextView.setLinkTextColor(paramInt);
    BlockUtils.setSmallLineSpacing(paramTextView);
    BlockUtils.setDefaultMarginBottom(paramTextView);
  }
  
  public View addHeading(Spanned paramSpanned, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    TextView localTextView = new TextView(paramViewGroup);
    BlockUtils.createLayoutParams(localTextView, -2, -2);
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    switch (this.style)
    {
    default: 
      styleChatHeading(localTextView, a.c(paramViewGroup, R.color.intercom_grey_800));
      localTextView.setTypeface(null, 1);
      localTextView.setMovementMethod(new TrackingLinkMovementMethod());
    }
    for (;;)
    {
      localTextView.setText(paramSpanned);
      localTextView.setGravity(paramBlockAlignment.getGravity());
      BlockUtils.setLayoutMarginsAndGravity(localTextView, paramBlockAlignment.getGravity(), paramBoolean2);
      return localTextView;
      styleAnnouncementHeading(localTextView, ColorUtils.lightenColor(i), 24, 32);
      FontUtils.setRobotoLightTypeface(localTextView);
      continue;
      styleAnnouncementHeading(localTextView, i, 24, 32);
      continue;
      styleAnnouncementHeading(localTextView, i, 20, 32);
      continue;
      styleChatHeading(localTextView, a.c(paramViewGroup, R.color.intercom_grey_800));
      localTextView.setTypeface(null, 1);
    }
  }
  
  public View addSubheading(Spanned paramSpanned, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    TextView localTextView = new TextView(paramViewGroup);
    BlockUtils.createLayoutParams(localTextView, -2, -2);
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    switch (this.style)
    {
    default: 
      styleChatHeading(localTextView, i);
      localTextView.setMovementMethod(new TrackingLinkMovementMethod());
    }
    for (;;)
    {
      localTextView.setText(paramSpanned);
      localTextView.setGravity(paramBlockAlignment.getGravity());
      BlockUtils.setLayoutMarginsAndGravity(localTextView, paramBlockAlignment.getGravity(), paramBoolean2);
      return localTextView;
      styleAnnouncementHeading(localTextView, ColorUtils.lightenColor(i), 15, 16);
      FontUtils.setRobotoLightTypeface(localTextView);
      continue;
      styleAnnouncementHeading(localTextView, i, 15, 16);
      continue;
      styleChatHeading(localTextView, a.c(paramViewGroup, R.color.intercom_grey_800));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Heading.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */