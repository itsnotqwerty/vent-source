package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.widget.ImageView;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.i;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.views.ResizableImageView;

class Image
{
  private final StyleType style;
  
  Image(StyleType paramStyleType)
  {
    this.style = paramStyleType;
  }
  
  private int calculateChatFullPadding(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    float f1 = localResources.getDimension(R.dimen.intercom_chat_overlay_width);
    float f2 = localResources.getDimension(R.dimen.intercom_chat_overlay_padding_right);
    float f3 = localResources.getDimension(R.dimen.intercom_chat_overlay_text_margin_left);
    float f4 = localResources.getDimension(R.dimen.intercom_chat_overlay_text_padding_left);
    float f5 = localResources.getDimension(R.dimen.intercom_chat_overlay_text_padding_right);
    return (int)(ScreenUtils.getScreenDimensions(paramContext).x - (f1 - (f5 + (f2 + f3 + f4))));
  }
  
  private int getTotalViewPadding(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    float f1;
    float f2;
    switch (this.style)
    {
    default: 
      return 0;
    case ???: 
    case ???: 
    case ???: 
      f1 = localResources.getDimension(R.dimen.intercom_avatar_size);
      f2 = localResources.getDimension(R.dimen.intercom_conversation_row_icon_spacer);
      float f3 = localResources.getDimension(R.dimen.intercom_conversation_row_margin);
      return (int)(localResources.getDimension(R.dimen.intercom_cell_horizontal_padding) * 3.0F + (f1 + f2 + f3));
    case ???: 
      f1 = localResources.getDimension(R.dimen.intercom_cell_content_padding);
      return (int)(localResources.getDimension(R.dimen.intercom_post_cell_padding) + f1) * 2;
    case ???: 
      f1 = localResources.getDimension(R.dimen.intercom_cell_content_padding);
      f2 = localResources.getDimension(R.dimen.intercom_note_cell_padding);
      return (int)(localResources.getDimension(R.dimen.intercom_note_layout_margin) + (f1 + f2)) * 2;
    case ???: 
      f1 = localResources.getDimension(R.dimen.intercom_cell_content_padding);
      f2 = localResources.getDimension(R.dimen.intercom_note_cell_padding);
      return (int)(localResources.getDimension(R.dimen.intercom_note_layout_margin) + (f1 + f2)) * 2;
    }
    return calculateChatFullPadding(paramContext);
  }
  
  protected StyleType getStyle()
  {
    return this.style;
  }
  
  protected void setBackground(ImageView paramImageView)
  {
    paramImageView.setBackgroundResource(R.drawable.intercom_rounded_image_preview);
  }
  
  protected void setImageViewBounds(int paramInt1, int paramInt2, ResizableImageView paramResizableImageView, i parami)
  {
    paramResizableImageView.setTotalViewPadding(getTotalViewPadding(paramResizableImageView.getContext()));
    paramResizableImageView.setDisplayImageDimensions(paramInt1, paramInt2);
    paramResizableImageView = paramResizableImageView.getImageDimens();
    if ((paramResizableImageView.x > 0) && (paramResizableImageView.y > 0)) {
      parami.a(new g().aO(paramResizableImageView.x, paramResizableImageView.y));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Image.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */