package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.BaseResponse;

class HasConversationsReducer
  implements Store.Reducer<Boolean>
{
  static final boolean INITIAL_STATE = false;
  
  public Boolean reduce(Action<?> paramAction, Boolean paramBoolean)
  {
    switch (paramAction.type())
    {
    default: 
      return paramBoolean;
    case ???: 
      return Boolean.valueOf(((BaseResponse)paramAction.value()).hasConversations());
    }
    return Boolean.valueOf(false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/HasConversationsReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */