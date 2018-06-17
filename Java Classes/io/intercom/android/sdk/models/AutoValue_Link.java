package io.intercom.android.sdk.models;

import io.intercom.android.sdk.blocks.models.Block;
import java.util.List;

final class AutoValue_Link
  extends Link
{
  private final List<Block> blocks;
  private final Card card;
  private final long createdAt;
  private final String id;
  private final ReactionReply reactionReply;
  private final long updatedAt;
  
  AutoValue_Link(String paramString, Card paramCard, List<Block> paramList, ReactionReply paramReactionReply, long paramLong1, long paramLong2)
  {
    if (paramString == null) {
      throw new NullPointerException("Null id");
    }
    this.id = paramString;
    if (paramCard == null) {
      throw new NullPointerException("Null card");
    }
    this.card = paramCard;
    if (paramList == null) {
      throw new NullPointerException("Null blocks");
    }
    this.blocks = paramList;
    if (paramReactionReply == null) {
      throw new NullPointerException("Null reactionReply");
    }
    this.reactionReply = paramReactionReply;
    this.createdAt = paramLong1;
    this.updatedAt = paramLong2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Link)) {
        break;
      }
      paramObject = (Link)paramObject;
    } while ((this.id.equals(((Link)paramObject).getId())) && (this.card.equals(((Link)paramObject).getCard())) && (this.blocks.equals(((Link)paramObject).getBlocks())) && (this.reactionReply.equals(((Link)paramObject).getReactionReply())) && (this.createdAt == ((Link)paramObject).getCreatedAt()) && (this.updatedAt == ((Link)paramObject).getUpdatedAt()));
    return false;
    return false;
  }
  
  public final List<Block> getBlocks()
  {
    return this.blocks;
  }
  
  public final Card getCard()
  {
    return this.card;
  }
  
  public final long getCreatedAt()
  {
    return this.createdAt;
  }
  
  public final String getId()
  {
    return this.id;
  }
  
  public final ReactionReply getReactionReply()
  {
    return this.reactionReply;
  }
  
  public final long getUpdatedAt()
  {
    return this.updatedAt;
  }
  
  public final int hashCode()
  {
    return (((((this.id.hashCode() ^ 0xF4243) * 1000003 ^ this.card.hashCode()) * 1000003 ^ this.blocks.hashCode()) * 1000003 ^ this.reactionReply.hashCode()) * 1000003 ^ (int)(this.createdAt >>> 32 ^ this.createdAt)) * 1000003 ^ (int)(this.updatedAt >>> 32 ^ this.updatedAt);
  }
  
  public final String toString()
  {
    return "Link{id=" + this.id + ", card=" + this.card + ", blocks=" + this.blocks + ", reactionReply=" + this.reactionReply + ", createdAt=" + this.createdAt + ", updatedAt=" + this.updatedAt + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Link.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */