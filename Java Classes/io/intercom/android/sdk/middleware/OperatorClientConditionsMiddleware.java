package io.intercom.android.sdk.middleware;

import android.os.Handler;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.OperatorClientCondition;
import io.intercom.android.sdk.operator.OperatorClientConditionTimer;
import io.intercom.android.sdk.state.ActiveConversationState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;
import io.intercom.android.sdk.views.ClientConditionListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class OperatorClientConditionsMiddleware
  implements Store.Middleware<State>, ClientConditionListener
{
  private static final String USER_INTERACTION_CONDITION = "user_interaction_condition";
  private final Provider<Api> apiProvider;
  final Map<String, List<OperatorClientConditionTimer>> conversationConditions = new HashMap();
  private final Handler handler;
  
  public OperatorClientConditionsMiddleware(Provider<Api> paramProvider, Handler paramHandler)
  {
    this.apiProvider = paramProvider;
    this.handler = paramHandler;
  }
  
  private void addClientConditionsForConversation(String paramString, List<OperatorClientCondition> paramList, ActiveConversationState paramActiveConversationState)
  {
    if (paramList.isEmpty()) {
      return;
    }
    Object localObject = (List)this.conversationConditions.get(paramString);
    if (localObject == null)
    {
      localObject = new ArrayList();
      this.conversationConditions.put(paramString, localObject);
    }
    for (;;)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        OperatorClientCondition localOperatorClientCondition = (OperatorClientCondition)paramList.next();
        if ("user_interaction_condition".equals(localOperatorClientCondition.conditionId())) {
          createOperatorClientConditionTimer(paramString, paramActiveConversationState, (List)localObject, localOperatorClientCondition);
        }
      }
      break;
    }
  }
  
  private void createOperatorClientConditionTimer(String paramString, ActiveConversationState paramActiveConversationState, List<OperatorClientConditionTimer> paramList, OperatorClientCondition paramOperatorClientCondition)
  {
    paramOperatorClientCondition = new OperatorClientConditionTimer(paramString, paramOperatorClientCondition.id(), this.handler, this);
    paramList.add(paramOperatorClientCondition);
    paramOperatorClientCondition.beginCountdown();
    if (userHasInteractedWithConversation(paramString, paramActiveConversationState)) {
      paramOperatorClientCondition.interrupt();
    }
  }
  
  private void interruptCondition(String paramString)
  {
    paramString = (List)this.conversationConditions.get(paramString);
    if (paramString != null)
    {
      paramString = paramString.iterator();
      while (paramString.hasNext()) {
        ((OperatorClientConditionTimer)paramString.next()).interrupt();
      }
    }
  }
  
  private boolean userHasInteractedWithConversation(String paramString, ActiveConversationState paramActiveConversationState)
  {
    return (paramActiveConversationState.getConversationId().equals(paramString)) && ((paramActiveConversationState.hasSwitchedInputType()) || (paramActiveConversationState.hasTextInComposer()));
  }
  
  public void conditionSatisfied(String paramString1, String paramString2)
  {
    Iterator localIterator = ((List)this.conversationConditions.get(paramString1)).iterator();
    while (localIterator.hasNext()) {
      if (((OperatorClientConditionTimer)localIterator.next()).getCondition().equals(paramString2)) {
        localIterator.remove();
      }
    }
    ((Api)this.apiProvider.get()).satisfyOperatorCondition(paramString1, paramString2);
  }
  
  public void dispatch(Store<State> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    paramNextDispatcher.dispatch(paramAction);
    switch (paramAction.type())
    {
    default: 
      return;
    case ???: 
    case ???: 
    case ???: 
      interruptCondition(((State)paramStore.state()).activeConversationState().getConversationId());
      return;
    }
    paramAction = (Conversation)paramAction.value();
    addClientConditionsForConversation(paramAction.getId(), paramAction.getOperatorClientConditions(), ((State)paramStore.state()).activeConversationState());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */