package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.twig.Twig;
import java.util.List;

public class Blocks
{
  private final LayoutInflater inflater;
  private final Twig twig;
  
  public Blocks(Context paramContext, Twig paramTwig)
  {
    this.inflater = LayoutInflater.from(paramContext);
    this.twig = paramTwig;
  }
  
  public LinearLayout createBlocks(List<Block> paramList, BlocksViewHolder paramBlocksViewHolder)
  {
    LinearLayout localLinearLayout = (LinearLayout)this.inflater.inflate(paramBlocksViewHolder.getLayout(), null);
    if (paramList != null)
    {
      int i = 0;
      for (;;)
      {
        if (i < paramList.size())
        {
          Block localBlock = (Block)paramList.get(i);
          boolean bool1;
          label52:
          boolean bool2;
          if (i == 0)
          {
            bool1 = true;
            if (i != paramList.size() - 1) {
              break label102;
            }
            bool2 = true;
          }
          try
          {
            for (;;)
            {
              localLinearLayout.addView(localBlock.getType().getView(paramBlocksViewHolder, localBlock, localLinearLayout, bool1, bool2));
              i += 1;
              break;
              bool1 = false;
              break label52;
              label102:
              bool2 = false;
            }
          }
          catch (BlockTypeNotImplementedException localBlockTypeNotImplementedException)
          {
            for (;;)
            {
              this.twig.e(localBlockTypeNotImplementedException, "Error creating view for block with type %s ", new Object[] { localBlock.getType() });
            }
          }
        }
      }
    }
    return localLinearLayout;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Blocks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */