package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.ConversationList;
import io.intercom.android.sdk.models.ConversationsResponse;
import io.intercom.android.sdk.models.UsersResponse;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

class UnreadConversationsReducer
  implements Store.Reducer<Set<String>>
{
  static final Set<String> INITIAL_STATE = ;
  
  public Set<String> reduce(Action<?> paramAction, Set<String> paramSet)
  {
    switch (paramAction.type())
    {
    default: 
      return paramSet;
    case ???: 
      paramSet = new HashSet(paramSet);
      paramSet.remove((String)paramAction.value());
      return paramSet;
    case ???: 
      return new HashSet(((UsersResponse)paramAction.value()).getUnreadConversations().getUnreadConversationIds());
    case ???: 
      return new HashSet(((ConversationsResponse)paramAction.value()).getConversationPage().getUnreadConversationIds());
    case ???: 
      paramSet = new HashSet(paramSet);
      paramAction = (Conversation)paramAction.value();
      if (paramAction.isRead()) {
        paramSet.remove(paramAction.getId());
      }
      for (;;)
      {
        return paramSet;
        paramSet.add(paramAction.getId());
      }
    }
    return INITIAL_STATE;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/UnreadConversationsReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */