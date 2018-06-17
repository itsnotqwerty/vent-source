package io.intercom.android.sdk.blocks;

import android.text.Spanned;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.blocks.blockInterfaces.ParagraphBlock;
import io.intercom.android.sdk.blocks.views.ParagraphView;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.utilities.BlockUtils;

class Paragraph
  implements ParagraphBlock
{
  private final Provider<AppConfig> appConfigProvider;
  private final StyleType style;
  
  Paragraph(StyleType paramStyleType, Provider<AppConfig> paramProvider)
  {
    this.style = paramStyleType;
    this.appConfigProvider = paramProvider;
  }
  
  public View addParagraph(Spanned paramSpanned, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    paramViewGroup = new ParagraphView(paramViewGroup.getContext(), this.style, paramBlockAlignment, i);
    if (StyleType.PREVIEW == this.style) {
      paramViewGroup.setText(paramSpanned.toString());
    }
    for (;;)
    {
      BlockUtils.setLayoutMarginsAndGravity(paramViewGroup, paramBlockAlignment.getGravity(), paramBoolean2);
      return paramViewGroup;
      paramViewGroup.setText(paramSpanned);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Paragraph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */