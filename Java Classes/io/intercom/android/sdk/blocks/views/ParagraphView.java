package io.intercom.android.sdk.blocks.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.content.a;
import android.support.v7.widget.AppCompatTextView;
import android.text.TextUtils.TruncateAt;
import android.view.ViewGroup.MarginLayoutParams;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.blocks.BlockAlignment;
import io.intercom.android.sdk.blocks.StyleType;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.ColorUtils;
import io.intercom.android.sdk.utilities.TrackingLinkMovementMethod;

@SuppressLint({"ViewConstructor"})
public class ParagraphView
  extends AppCompatTextView
{
  private static final int DEFAULT_LINE_SPACING_DP = 2;
  private static final int POST_BOTTOM_MARGIN_DP = 24;
  private static final int POST_LINE_SPACING_DP = 4;
  
  public ParagraphView(Context paramContext, StyleType paramStyleType, BlockAlignment paramBlockAlignment, int paramInt)
  {
    super(paramContext);
    BlockUtils.createLayoutParams(this, -2, -2);
    BlockUtils.setDefaultMarginBottom(this);
    setLineSpacing(ScreenUtils.dpToPx(2.0F, paramContext), 1.0F);
    setTextSize(16.0F);
    setTextIsSelectable(false);
    setEllipsize(TextUtils.TruncateAt.END);
    setScrollContainer(false);
    setFocusable(false);
    setClickable(false);
    setLongClickable(false);
    setGravity(paramBlockAlignment.getGravity());
    paramBlockAlignment = (ViewGroup.MarginLayoutParams)getLayoutParams();
    switch (paramStyleType)
    {
    default: 
      setMovementMethod(new TrackingLinkMovementMethod());
      setIncludeFontPadding(false);
      setTextColor(a.c(paramContext, R.color.intercom_white));
      setLinkTextColor(a.c(paramContext, R.color.intercom_white));
      return;
    case ???: 
      setMovementMethod(new TrackingLinkMovementMethod());
      setTextColor(a.c(paramContext, R.color.intercom_grey_800));
      setLinkTextColor(paramInt);
      return;
    case ???: 
    case ???: 
      setMovementMethod(new TrackingLinkMovementMethod());
      setTextColor(a.c(paramContext, R.color.intercom_grey_700));
      setLinkTextColor(paramInt);
      return;
    case ???: 
      paramBlockAlignment.bottomMargin = ScreenUtils.dpToPx(24.0F, paramContext);
      setMovementMethod(new TrackingLinkMovementMethod());
      setLineSpacing(ScreenUtils.dpToPx(4.0F, paramContext), 1.0F);
      setTextColor(a.c(paramContext, R.color.intercom_white));
      setLinkTextColor(ColorUtils.lightenColor(paramInt));
      return;
    }
    setTextSize(14.0F);
    setTextColor(a.c(paramContext, R.color.intercom_grey_600));
    setLinkTextColor(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/views/ParagraphView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */