package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.ConversationList;
import io.intercom.android.sdk.models.ConversationsResponse;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.state.InboxState;
import io.intercom.android.sdk.state.InboxState.Status;
import io.intercom.android.sdk.state.ReplyPart;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class InboxStateReducer
  implements Store.Reducer<InboxState>
{
  static final InboxState INITIAL_STATE = InboxState.create(Collections.emptyList(), InboxState.Status.INITIAL, true);
  
  private void addConversationAtTop(List<Conversation> paramList, Conversation paramConversation)
  {
    paramList.add(0, paramConversation);
  }
  
  private void markConversationAsRead(String paramString, List<Conversation> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Conversation localConversation = (Conversation)paramList.get(i);
      if (paramString.equals(localConversation.getId())) {
        paramList.set(i, localConversation.withRead(true));
      }
      i += 1;
    }
  }
  
  private List<Conversation> mergeConversationLists(List<Conversation> paramList1, List<Conversation> paramList2)
  {
    ArrayList localArrayList = new ArrayList(paramList1.size() + paramList2.size());
    HashSet localHashSet = new HashSet(paramList2.size());
    paramList2 = paramList2.iterator();
    while (paramList2.hasNext())
    {
      Conversation localConversation = (Conversation)paramList2.next();
      localHashSet.add(localConversation.getId());
      localArrayList.add(localConversation);
    }
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext())
    {
      paramList2 = (Conversation)paramList1.next();
      if (!localHashSet.contains(paramList2.getId())) {
        localArrayList.add(paramList2);
      }
    }
    return localArrayList;
  }
  
  private void sortByLastPartDate(List<Conversation> paramList)
  {
    Collections.sort(paramList, new Comparator()
    {
      public int compare(Conversation paramAnonymousConversation1, Conversation paramAnonymousConversation2)
      {
        return (int)(paramAnonymousConversation2.getLastPart().getCreatedAt() - paramAnonymousConversation1.getLastPart().getCreatedAt());
      }
    });
  }
  
  private void updateOrAddConversation(Conversation paramConversation, List<Conversation> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      Conversation localConversation = (Conversation)paramList.get(i);
      if (paramConversation.getId().equals(localConversation.getId()))
      {
        paramList.set(i, paramConversation);
        return;
      }
      i += 1;
    }
    addConversationAtTop(paramList, paramConversation);
  }
  
  private void updateRepliedConversationAndMoveToTop(ReplyPart paramReplyPart, List<Conversation> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      Conversation localConversation = (Conversation)paramList.get(i);
      if (paramReplyPart.getConversationId().equals(localConversation.getId()))
      {
        localConversation.getParts().add(paramReplyPart.getPart());
        paramList.remove(localConversation);
        addConversationAtTop(paramList, localConversation);
      }
      i += 1;
    }
  }
  
  public InboxState reduce(Action<?> paramAction, InboxState paramInboxState)
  {
    Object localObject;
    switch (paramAction.type())
    {
    default: 
    case ???: 
    case ???: 
      do
      {
        return paramInboxState;
      } while (paramInboxState.status() == InboxState.Status.LOADING);
      return InboxState.create(paramInboxState.conversations(), InboxState.Status.LOADING, paramInboxState.hasMorePages());
    case ???: 
      paramAction = (ConversationsResponse)paramAction.value();
      localObject = paramAction.getConversationPage().getConversations();
      paramInboxState = mergeConversationLists(paramInboxState.conversations(), (List)localObject);
      sortByLastPartDate(paramInboxState);
      return InboxState.create(paramInboxState, InboxState.Status.SUCCESS, paramAction.getConversationPage().hasMorePages());
    case ???: 
      return InboxState.create(paramInboxState.conversations(), InboxState.Status.FAILED, paramInboxState.hasMorePages());
    case ???: 
      localObject = new ArrayList(paramInboxState.conversations());
      markConversationAsRead((String)paramAction.value(), (List)localObject);
      return InboxState.create((List)localObject, InboxState.Status.SUCCESS, paramInboxState.hasMorePages());
    case ???: 
      localObject = new ArrayList(paramInboxState.conversations());
      updateRepliedConversationAndMoveToTop((ReplyPart)paramAction.value(), (List)localObject);
      return InboxState.create((List)localObject, InboxState.Status.SUCCESS, paramInboxState.hasMorePages());
    case ???: 
      localObject = new ArrayList(paramInboxState.conversations());
      updateOrAddConversation((Conversation)paramAction.value(), (List)localObject);
      sortByLastPartDate((List)localObject);
      return InboxState.create((List)localObject, InboxState.Status.SUCCESS, paramInboxState.hasMorePages());
    case ???: 
      localObject = new ArrayList(paramInboxState.conversations());
      addConversationAtTop((List)localObject, (Conversation)paramAction.value());
      return InboxState.create((List)localObject, InboxState.Status.SUCCESS, paramInboxState.hasMorePages());
    }
    return INITIAL_STATE;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/InboxStateReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */