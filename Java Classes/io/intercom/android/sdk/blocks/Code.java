package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.content.a;
import android.text.Spanned;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.blocks.blockInterfaces.CodeBlock;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.utilities.BlockUtils;

class Code
  implements CodeBlock
{
  private TextView getCodeBlockView(Spanned paramSpanned, Context paramContext)
  {
    TextView localTextView = new TextView(paramContext);
    localTextView.setTextColor(a.c(paramContext, R.color.intercom_white));
    localTextView.setTextSize(14.0F);
    localTextView.setText(paramSpanned);
    localTextView.setPadding(ScreenUtils.dpToPx(14.0F, paramContext), ScreenUtils.dpToPx(12.0F, paramContext), ScreenUtils.dpToPx(14.0F, paramContext), ScreenUtils.dpToPx(14.0F, paramContext));
    localTextView.setBackgroundResource(R.color.intercom_slate_grey_two);
    localTextView.setTypeface(Typeface.MONOSPACE);
    BlockUtils.createLayoutParams(localTextView, -2, -2);
    BlockUtils.setDefaultMarginBottom(localTextView);
    return localTextView;
  }
  
  public View addCode(Spanned paramSpanned, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramSpanned = getCodeBlockView(paramSpanned, paramViewGroup.getContext());
    BlockUtils.setLayoutMarginsAndGravity(paramSpanned, 3, paramBoolean2);
    return paramSpanned;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Code.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */