package io.intercom.android.sdk.models;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.blocks.models.Author;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.blocks.models.Block.Builder;
import io.intercom.android.sdk.commons.utilities.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@AutoValue
public abstract class Link
{
  public static final String ARTICLE_TYPE = "educate.article";
  public static final String HELP_CENTER_TYPE = "educate.help_center";
  public static final String SUGGESTION_TYPE = "educate.suggestion";
  
  public Author getAuthor()
  {
    return getCard().getAuthor();
  }
  
  public abstract List<Block> getBlocks();
  
  public abstract Card getCard();
  
  public abstract long getCreatedAt();
  
  public String getDescription()
  {
    return getCard().getDescription();
  }
  
  public abstract String getId();
  
  public abstract ReactionReply getReactionReply();
  
  public String getText()
  {
    return getCard().getText();
  }
  
  public String getTitle()
  {
    return getCard().getTitle();
  }
  
  public String getType()
  {
    return getCard().getType();
  }
  
  public abstract long getUpdatedAt();
  
  public static final class Builder
  {
    List<Block.Builder> blocks;
    Card.Builder card;
    long created_at;
    String id;
    ReactionReply.Builder reactions_reply;
    long updated_at;
    
    public final Link build()
    {
      if (this.id == null) {}
      ArrayList localArrayList;
      Object localObject1;
      for (String str = UUID.randomUUID().toString();; str = this.id)
      {
        localArrayList = new ArrayList(CollectionUtils.capacityFor(this.blocks));
        if (this.blocks == null) {
          break;
        }
        localObject1 = this.blocks.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Block.Builder)((Iterator)localObject1).next();
          if (localObject2 != null) {
            localArrayList.add(((Block.Builder)localObject2).build());
          }
        }
      }
      if (this.reactions_reply == null)
      {
        localObject1 = ReactionReply.NULL;
        if (this.card != null) {
          break label154;
        }
      }
      label154:
      for (Object localObject2 = new Card.Builder().build();; localObject2 = this.card.build())
      {
        return new AutoValue_Link(str, (Card)localObject2, localArrayList, (ReactionReply)localObject1, this.created_at, this.updated_at);
        localObject1 = this.reactions_reply.build();
        break;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Link.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */