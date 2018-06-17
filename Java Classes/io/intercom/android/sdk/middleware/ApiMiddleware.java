package io.intercom.android.sdk.middleware;

import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;
import java.util.List;

public class ApiMiddleware
  implements Store.Middleware<State>
{
  private final Provider<Api> apiProvider;
  
  public ApiMiddleware(Provider<Api> paramProvider)
  {
    this.apiProvider = paramProvider;
  }
  
  private Api api()
  {
    return (Api)this.apiProvider.get();
  }
  
  private void fetchDataForCurrentScreen(Store<State> paramStore, String paramString)
  {
    if ((((OverlayState)paramStore.select(Selectors.OVERLAY)).resumedHostActivity() != null) || (((Boolean)paramStore.select(Selectors.APP_IS_BACKGROUNDED)).booleanValue()))
    {
      api().getUnreadConversations();
      return;
    }
    api().getConversation(paramString);
  }
  
  public void dispatch(Store<State> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    paramNextDispatcher.dispatch(paramAction);
    switch (paramAction.type())
    {
    default: 
    case ???: 
    case ???: 
      int i;
      do
      {
        return;
        paramStore = (Conversation)paramAction.value();
        api().markConversationAsDismissed(paramStore.getId());
        return;
        i = ((OverlayState)paramStore.select(Selectors.OVERLAY)).conversations().size();
      } while ((i != 1) || (((Integer)paramStore.select(Selectors.UNREAD_COUNT)).intValue() <= i));
      api().getUnreadConversations();
      return;
    case ???: 
      api().getInbox();
      return;
    case ???: 
      api().getInboxBefore(((Long)paramAction.value()).longValue());
      return;
    }
    fetchDataForCurrentScreen(paramStore, (String)paramAction.value());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/ApiMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */