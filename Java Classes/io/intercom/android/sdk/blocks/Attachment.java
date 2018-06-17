package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.support.v4.content.a;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.blocks.blockInterfaces.AttachmentListBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.LocalAttachmentBlock;
import io.intercom.android.sdk.blocks.models.BlockAttachment;
import io.intercom.android.sdk.blocks.views.AttachmentView;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.views.ProgressLinearLayout;
import io.intercom.android.sdk.views.UploadProgressBar;
import java.util.List;

class Attachment
  implements AttachmentListBlock, LocalAttachmentBlock
{
  private static final int ATTACHMENT_LINE_SPACING_DP = 12;
  private static final int DIVIDER_MARGIN_DP = 6;
  private static final int DIVIDER_WIDTH_DP = 1;
  private static final int LOCAL_ICON_SIZE_DP = 20;
  private final Provider<AppConfig> appConfigProvider;
  private final StyleType style;
  
  public Attachment(StyleType paramStyleType, Provider<AppConfig> paramProvider)
  {
    this.style = paramStyleType;
    this.appConfigProvider = paramProvider;
  }
  
  private ImageView getAttachmentIcon(Context paramContext)
  {
    paramContext = new ImageView(paramContext);
    paramContext.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    paramContext.setVisibility(8);
    paramContext.setImageResource(R.drawable.intercom_icn_attachment);
    return paramContext;
  }
  
  private LinearLayout getAttachmentListView(Context paramContext)
  {
    paramContext = new LinearLayout(paramContext);
    paramContext.setOrientation(1);
    paramContext.setBackgroundResource(R.color.intercom_full_transparent_full_black);
    BlockUtils.createLayoutParams(paramContext, -2, -2);
    BlockUtils.setDefaultMarginBottom(paramContext);
    return paramContext;
  }
  
  private View getDivider(Context paramContext)
  {
    int i = ScreenUtils.dpToPx(6.0F, paramContext);
    int j = ScreenUtils.dpToPx(1.0F, paramContext);
    paramContext = new View(paramContext);
    paramContext.setBackgroundResource(R.color.intercom_white);
    BlockUtils.createLayoutParams(paramContext, j, -1);
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramContext.getLayoutParams();
    localLayoutParams.leftMargin = i;
    localLayoutParams.rightMargin = i;
    return paramContext;
  }
  
  private FrameLayout getIconHolder(Context paramContext)
  {
    int i = ScreenUtils.dpToPx(20.0F, paramContext);
    paramContext = new FrameLayout(paramContext);
    BlockUtils.createLayoutParams(paramContext, i, i);
    ((LinearLayout.LayoutParams)paramContext.getLayoutParams()).gravity = 19;
    return paramContext;
  }
  
  private ProgressLinearLayout getLocalAttachmentView(Context paramContext)
  {
    paramContext = new ProgressLinearLayout(paramContext);
    BlockUtils.createLayoutParams(paramContext, -2, -2);
    BlockUtils.setDefaultMarginBottom(paramContext);
    paramContext.setOrientation(0);
    return paramContext;
  }
  
  private TextView getTextView(String paramString, Context paramContext)
  {
    TextView localTextView = new TextView(paramContext);
    BlockUtils.createLayoutParams(localTextView, -2, -2);
    BlockUtils.setSmallLineSpacing(localTextView);
    localTextView.setGravity(19);
    localTextView.setEllipsize(TextUtils.TruncateAt.END);
    localTextView.setTextSize(15.0F);
    localTextView.setTextColor(a.c(paramContext, R.color.intercom_white));
    localTextView.setBackgroundResource(R.color.intercom_full_transparent_full_black);
    localTextView.setText(paramString);
    return localTextView;
  }
  
  private UploadProgressBar getUploadProgressBar(Context paramContext)
  {
    paramContext = new UploadProgressBar(paramContext);
    paramContext.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    return paramContext;
  }
  
  public View addAttachment(BlockAttachment paramBlockAttachment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    paramViewGroup = getLocalAttachmentView(localContext);
    FrameLayout localFrameLayout = getIconHolder(localContext);
    ImageView localImageView = getAttachmentIcon(localContext);
    UploadProgressBar localUploadProgressBar = getUploadProgressBar(localContext);
    View localView = getDivider(localContext);
    paramBlockAttachment = getTextView(paramBlockAttachment.getName(), localContext);
    localFrameLayout.addView(localUploadProgressBar);
    localFrameLayout.addView(localImageView);
    paramViewGroup.setUploadProgressBar(localUploadProgressBar);
    paramViewGroup.setAttachmentIcon(localImageView);
    paramViewGroup.addView(localFrameLayout);
    paramViewGroup.addView(localView);
    paramViewGroup.addView(paramBlockAttachment);
    BlockUtils.setLayoutMarginsAndGravity(paramViewGroup, 3, paramBoolean2);
    return paramViewGroup;
  }
  
  public View addAttachmentList(List<BlockAttachment> paramList, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    int j = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    paramViewGroup = paramViewGroup.getContext();
    LinearLayout localLinearLayout = getAttachmentListView(paramViewGroup);
    int k = paramList.size();
    int i = 0;
    while (i < k)
    {
      AttachmentView localAttachmentView = new AttachmentView(paramViewGroup, this.style, j, (BlockAttachment)paramList.get(i));
      if (i < k - 1) {
        localAttachmentView.setPadding(localAttachmentView.getPaddingLeft(), localAttachmentView.getPaddingTop(), localAttachmentView.getPaddingRight(), ScreenUtils.dpToPx(12.0F, paramViewGroup));
      }
      localLinearLayout.addView(localAttachmentView);
      i += 1;
    }
    BlockUtils.setLayoutMarginsAndGravity(localLinearLayout, 3, paramBoolean2);
    return localLinearLayout;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Attachment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */