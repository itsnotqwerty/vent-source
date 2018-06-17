package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.state.ActiveConversationState;

public class ActiveConversationStateReducer
  implements Store.Reducer<ActiveConversationState>
{
  public static final ActiveConversationState INITIAL_STATE = ActiveConversationState.create("", false, false);
  
  public ActiveConversationState reduce(Action<?> paramAction, ActiveConversationState paramActiveConversationState)
  {
    switch (paramAction.type())
    {
    default: 
      return paramActiveConversationState;
    case ???: 
      return ActiveConversationState.create(paramActiveConversationState.getConversationId(), paramActiveConversationState.hasSwitchedInputType(), true);
    case ???: 
      return ActiveConversationState.create(paramActiveConversationState.getConversationId(), paramActiveConversationState.hasSwitchedInputType(), false);
    case ???: 
      return ActiveConversationState.create(paramActiveConversationState.getConversationId(), true, paramActiveConversationState.hasTextInComposer());
    case ???: 
      return ActiveConversationState.create(paramActiveConversationState.getConversationId(), INITIAL_STATE.hasSwitchedInputType(), INITIAL_STATE.hasTextInComposer());
    case ???: 
    case ???: 
      return ActiveConversationState.create(((Conversation)paramAction.value()).getId(), paramActiveConversationState.hasSwitchedInputType(), paramActiveConversationState.hasTextInComposer());
    case ???: 
      return ActiveConversationState.create((String)paramAction.value(), paramActiveConversationState.hasSwitchedInputType(), paramActiveConversationState.hasTextInComposer());
    }
    return INITIAL_STATE;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/ActiveConversationStateReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */