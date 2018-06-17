package io.intercom.android.sdk.models;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.commons.utilities.CollectionUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@AutoValue
public abstract class ConversationList
{
  public static ConversationList create(List<Conversation> paramList, Set<String> paramSet, boolean paramBoolean)
  {
    return new AutoValue_ConversationList(paramList, paramSet, paramBoolean);
  }
  
  public abstract List<Conversation> getConversations();
  
  public abstract Set<String> getUnreadConversationIds();
  
  public abstract boolean hasMorePages();
  
  public static final class Builder
  {
    List<Conversation.Builder> conversations;
    boolean more_pages_available;
    List<String> unread_conversation_ids;
    
    public final ConversationList build()
    {
      ArrayList localArrayList = new ArrayList(CollectionUtils.capacityFor(this.conversations));
      Object localObject2;
      if (this.conversations != null)
      {
        localObject1 = this.conversations.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Conversation.Builder)((Iterator)localObject1).next();
          if (localObject2 != null) {
            localArrayList.add(((Conversation.Builder)localObject2).build());
          }
        }
      }
      Object localObject1 = new HashSet(CollectionUtils.capacityFor(this.unread_conversation_ids));
      if (this.unread_conversation_ids != null)
      {
        localObject2 = this.unread_conversation_ids.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          if (str != null) {
            ((Set)localObject1).add(str);
          }
        }
      }
      return ConversationList.create(localArrayList, (Set)localObject1, this.more_pages_available);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/ConversationList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */