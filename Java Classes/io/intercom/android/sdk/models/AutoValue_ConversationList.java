package io.intercom.android.sdk.models;

import java.util.List;
import java.util.Set;

final class AutoValue_ConversationList
  extends ConversationList
{
  private final List<Conversation> getConversations;
  private final Set<String> getUnreadConversationIds;
  private final boolean hasMorePages;
  
  AutoValue_ConversationList(List<Conversation> paramList, Set<String> paramSet, boolean paramBoolean)
  {
    if (paramList == null) {
      throw new NullPointerException("Null getConversations");
    }
    this.getConversations = paramList;
    if (paramSet == null) {
      throw new NullPointerException("Null getUnreadConversationIds");
    }
    this.getUnreadConversationIds = paramSet;
    this.hasMorePages = paramBoolean;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ConversationList)) {
        break;
      }
      paramObject = (ConversationList)paramObject;
    } while ((this.getConversations.equals(((ConversationList)paramObject).getConversations())) && (this.getUnreadConversationIds.equals(((ConversationList)paramObject).getUnreadConversationIds())) && (this.hasMorePages == ((ConversationList)paramObject).hasMorePages()));
    return false;
    return false;
  }
  
  public final List<Conversation> getConversations()
  {
    return this.getConversations;
  }
  
  public final Set<String> getUnreadConversationIds()
  {
    return this.getUnreadConversationIds;
  }
  
  public final boolean hasMorePages()
  {
    return this.hasMorePages;
  }
  
  public final int hashCode()
  {
    int j = this.getConversations.hashCode();
    int k = this.getUnreadConversationIds.hashCode();
    if (this.hasMorePages) {}
    for (int i = 1231;; i = 1237) {
      return i ^ ((j ^ 0xF4243) * 1000003 ^ k) * 1000003;
    }
  }
  
  public final String toString()
  {
    return "ConversationList{getConversations=" + this.getConversations + ", getUnreadConversationIds=" + this.getUnreadConversationIds + ", hasMorePages=" + this.hasMorePages + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_ConversationList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */