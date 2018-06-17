package io.intercom.android.sdk.blocks.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.content.a;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.blocks.StyleType;
import io.intercom.android.sdk.blocks.models.BlockAttachment;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.utilities.IntentUtils;

@SuppressLint({"ViewConstructor"})
public class AttachmentView
  extends LinearLayout
  implements View.OnClickListener
{
  static final int ATTACHMENT_ICON_WIDTH_DP = 20;
  static final int DIVIDER_MARGIN_DP = 6;
  static final int DIVIDER_WIDTH_DP = 1;
  private final String url;
  
  public AttachmentView(Context paramContext, StyleType paramStyleType, int paramInt, BlockAttachment paramBlockAttachment)
  {
    super(paramContext);
    this.url = paramBlockAttachment.getUrl();
    setOrientation(0);
    addView(setupIcon(paramContext, paramStyleType, paramInt));
    if (isUserMessage(paramStyleType)) {
      addView(setupDivider(paramContext));
    }
    addView(setupName(paramContext, paramStyleType, paramInt, paramBlockAttachment.getName()));
  }
  
  private boolean isUserMessage(StyleType paramStyleType)
  {
    return (StyleType.PREVIEW == paramStyleType) || (StyleType.USER == paramStyleType);
  }
  
  private View setupDivider(Context paramContext)
  {
    View localView = new View(paramContext);
    int i = ScreenUtils.dpToPx(1.0F, paramContext);
    int j = ScreenUtils.dpToPx(6.0F, paramContext);
    paramContext = new LinearLayout.LayoutParams(i, -1);
    paramContext.setMargins(j, 0, j, 0);
    localView.setLayoutParams(paramContext);
    localView.setBackgroundResource(R.color.intercom_white);
    return localView;
  }
  
  private ImageView setupIcon(Context paramContext, StyleType paramStyleType, int paramInt)
  {
    ImageView localImageView = new ImageView(paramContext);
    paramContext = new LinearLayout.LayoutParams(ScreenUtils.dpToPx(20.0F, paramContext), -2);
    paramContext.gravity = 19;
    localImageView.setLayoutParams(paramContext);
    localImageView.setImageResource(R.drawable.intercom_icn_attachment);
    if (!isUserMessage(paramStyleType)) {
      localImageView.setColorFilter(paramInt);
    }
    return localImageView;
  }
  
  private TextView setupName(Context paramContext, StyleType paramStyleType, int paramInt, String paramString)
  {
    TextView localTextView = new TextView(paramContext);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 19;
    localTextView.setLayoutParams(localLayoutParams);
    localTextView.setEllipsize(TextUtils.TruncateAt.END);
    localTextView.setBackgroundResource(R.color.intercom_full_transparent_full_black);
    localTextView.setGravity(19);
    localTextView.setTextSize(15.0F);
    localTextView.setText(paramString);
    localTextView.setOnClickListener(this);
    if (isUserMessage(paramStyleType))
    {
      localTextView.setTextColor(a.c(paramContext, R.color.intercom_white));
      return localTextView;
    }
    localTextView.setTextColor(paramInt);
    return localTextView;
  }
  
  public void onClick(View paramView)
  {
    paramView = Uri.parse(this.url);
    if (!Uri.EMPTY.equals(paramView))
    {
      paramView = new Intent("android.intent.action.VIEW", paramView);
      paramView.setFlags(268435456);
      IntentUtils.safelyOpenIntent(getContext(), paramView);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/views/AttachmentView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */