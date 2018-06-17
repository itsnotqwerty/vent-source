package io.intercom.android.sdk.utilities;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;

public class BlockUtils
{
  private static final int DEFAULT_MARGIN_BOTTOM_DP = 10;
  private static final int LARGE_LINE_SPACING_DP = 4;
  private static final int SMALL_LINE_SPACING_DP = 2;
  
  public static void createLayoutParams(View paramView, int paramInt1, int paramInt2)
  {
    paramView.setLayoutParams(new LinearLayout.LayoutParams(paramInt1, paramInt2));
  }
  
  public static View getBlockView(ViewGroup paramViewGroup, LinearLayout paramLinearLayout, Context paramContext)
  {
    paramViewGroup = LayoutInflater.from(paramContext).inflate(R.layout.intercom_container_layout, paramViewGroup, false);
    paramContext = (LinearLayout)paramViewGroup.findViewById(R.id.cellLayout);
    if (paramLinearLayout.getParent() != null) {
      ((LinearLayout)paramLinearLayout.getParent()).removeView(paramLinearLayout);
    }
    if (paramContext.getChildCount() > 0) {
      paramContext.removeAllViews();
    }
    paramContext.addView(paramLinearLayout, 0);
    paramViewGroup.setFocusable(false);
    paramContext.setVisibility(0);
    return paramViewGroup;
  }
  
  public static void setDefaultMarginBottom(View paramView)
  {
    setMarginBottom(paramView, 10);
  }
  
  public static void setLargeLineSpacing(TextView paramTextView)
  {
    setLineSpacing(paramTextView, 4);
  }
  
  public static void setLayoutMarginsAndGravity(View paramView, int paramInt, boolean paramBoolean)
  {
    paramView = (LinearLayout.LayoutParams)paramView.getLayoutParams();
    if (paramBoolean) {
      paramView.setMargins(paramView.leftMargin, paramView.topMargin, paramView.rightMargin, 0);
    }
    paramView.gravity = paramInt;
  }
  
  private static void setLineSpacing(TextView paramTextView, int paramInt)
  {
    paramTextView.setLineSpacing(ScreenUtils.dpToPx(paramInt, paramTextView.getContext()), 1.0F);
  }
  
  public static void setMarginBottom(View paramView, int paramInt)
  {
    ((ViewGroup.MarginLayoutParams)paramView.getLayoutParams()).bottomMargin = ScreenUtils.dpToPx(paramInt, paramView.getContext());
  }
  
  public static void setMarginLeft(View paramView, int paramInt)
  {
    ((ViewGroup.MarginLayoutParams)paramView.getLayoutParams()).leftMargin = ScreenUtils.dpToPx(paramInt, paramView.getContext());
  }
  
  public static void setSmallLineSpacing(TextView paramTextView)
  {
    setLineSpacing(paramTextView, 2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/BlockUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */