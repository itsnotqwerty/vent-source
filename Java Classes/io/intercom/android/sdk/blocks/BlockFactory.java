package io.intercom.android.sdk.blocks;

import io.intercom.android.sdk.blocks.logic.TextSplittingStrategy;
import io.intercom.android.sdk.blocks.models.Block.Builder;
import java.util.ArrayList;
import java.util.List;

public class BlockFactory
{
  private final TextSplittingStrategy textSplittingStrategy;
  
  public BlockFactory(TextSplittingStrategy paramTextSplittingStrategy)
  {
    this.textSplittingStrategy = paramTextSplittingStrategy;
  }
  
  public List<Block.Builder> getBlocksForText(String paramString)
  {
    paramString = this.textSplittingStrategy.apply(paramString);
    int j = paramString.size();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new Block.Builder().withType(BlockType.PARAGRAPH.name().toLowerCase()).withText((String)paramString.get(i)));
      i += 1;
    }
    return localArrayList;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/BlockFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */