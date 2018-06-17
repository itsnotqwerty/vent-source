package io.intercom.android.sdk.store;

import android.annotation.SuppressLint;
import android.app.Activity;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.actions.Action<*>;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.ConversationList;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.DeliveryOption;
import io.intercom.android.sdk.models.UsersResponse;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.OverlayState.Builder;
import io.intercom.android.sdk.utilities.ActivityUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class OverlayStateReducer
  implements Store.Reducer<OverlayState>
{
  @SuppressLint({"StaticFieldLeak"})
  static final OverlayState INITIAL_STATE = OverlayState.create(Collections.emptyList(), Collections.emptySet(), Intercom.Visibility.VISIBLE, Intercom.Visibility.GONE, null, null, 0);
  
  private static OverlayState newStateIfNewHostActivity(OverlayState paramOverlayState, Activity paramActivity1, Activity paramActivity2)
  {
    if ((paramOverlayState.resumedHostActivity() == paramActivity1) && (paramOverlayState.pausedHostActivity() == paramActivity2)) {
      return paramOverlayState;
    }
    return paramOverlayState.toBuilder().resumedHostActivity(paramActivity1).pausedHostActivity(paramActivity2).build();
  }
  
  private static void removeBadgeConversations(List<Conversation> paramList)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      if (((Conversation)paramList.get(i)).getLastPart().getDeliveryOption() == Part.DeliveryOption.BADGE) {
        paramList.remove(i);
      }
      i -= 1;
    }
  }
  
  private static void removeConversationWithId(List<Conversation> paramList, String paramString)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Conversation localConversation = (Conversation)localIterator.next();
      if (localConversation.getId().equals(paramString)) {
        paramList.remove(localConversation);
      }
    }
  }
  
  private static void removeDismissedConversations(List<Conversation> paramList, Set<String> paramSet)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      if (paramSet.contains(((Conversation)paramList.get(i)).getLastPart().getId())) {
        paramList.remove(i);
      }
      i -= 1;
    }
  }
  
  public OverlayState reduce(Action<?> paramAction, OverlayState paramOverlayState)
  {
    Object localObject = null;
    switch (paramAction.type())
    {
    default: 
      return paramOverlayState;
    case ???: 
      return paramOverlayState.toBuilder().notificationVisibility((Intercom.Visibility)paramAction.value()).build();
    case ???: 
      return paramOverlayState.toBuilder().launcherVisibility((Intercom.Visibility)paramAction.value()).build();
    case ???: 
      return paramOverlayState.toBuilder().bottomPadding(((Integer)paramAction.value()).intValue()).build();
    case ???: 
      return paramOverlayState.toBuilder().conversations(Collections.emptyList()).dismissedPartIds(Collections.emptySet()).build();
    case ???: 
      localObject = new ArrayList(paramOverlayState.conversations());
      removeConversationWithId((List)localObject, (String)paramAction.value());
      return paramOverlayState.toBuilder().conversations((List)localObject).build();
    case ???: 
      paramAction = (Conversation)paramAction.value();
      localObject = new ArrayList(paramOverlayState.conversations());
      HashSet localHashSet = new HashSet(paramOverlayState.dismissedPartIds());
      localHashSet.add(paramAction.getLastPart().getId());
      removeDismissedConversations((List)localObject, localHashSet);
      return paramOverlayState.toBuilder().conversations((List)localObject).dismissedPartIds(localHashSet).build();
    case ???: 
      paramAction = new ArrayList(((UsersResponse)paramAction.value()).getUnreadConversations().getConversations());
      removeDismissedConversations(paramAction, paramOverlayState.dismissedPartIds());
      removeBadgeConversations(paramAction);
      return paramOverlayState.toBuilder().conversations(paramAction).build();
    case ???: 
      localObject = (Activity)paramAction.value();
      paramAction = (Action<?>)localObject;
      if (!ActivityUtils.isHostActivity((Activity)localObject)) {
        if (!ActivityUtils.isFullScreenHelpCenter((Activity)localObject)) {
          break label335;
        }
      }
      for (paramAction = (Action<?>)localObject;; paramAction = null) {
        return newStateIfNewHostActivity(paramOverlayState, paramAction, null);
      }
    case ???: 
      return newStateIfNewHostActivity(paramOverlayState, null, (Activity)paramAction.value());
    case ???: 
      label335:
      if ((Activity)paramAction.value() == paramOverlayState.pausedHostActivity()) {}
      for (paramAction = (Action<?>)localObject;; paramAction = paramOverlayState.pausedHostActivity()) {
        return newStateIfNewHostActivity(paramOverlayState, paramOverlayState.resumedHostActivity(), paramAction);
      }
    }
    return newStateIfNewHostActivity(paramOverlayState, null, null);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/OverlayStateReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */