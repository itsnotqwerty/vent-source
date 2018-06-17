package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.state.UiState;
import io.intercom.android.sdk.state.UiState.Screen;

class LastViewReducer
  implements Store.Reducer<UiState>
{
  static final UiState INITIAL_STATE = UiState.create(UiState.Screen.NONE, null);
  
  public UiState reduce(Action<?> paramAction, UiState paramUiState)
  {
    switch (paramAction.type())
    {
    default: 
      return paramUiState;
    case ???: 
      return UiState.create(UiState.Screen.INBOX, null);
    case ???: 
      return UiState.create(UiState.Screen.COMPOSER, null);
    case ???: 
      return UiState.create(UiState.Screen.CONVERSATION, (String)paramAction.value());
    case ???: 
      return UiState.create(UiState.Screen.CONVERSATION, ((Conversation)paramAction.value()).getId());
    }
    return UiState.create(UiState.Screen.NONE, null);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/LastViewReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */