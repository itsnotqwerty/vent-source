package io.intercom.android.sdk.middleware;

import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.ConversationList;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.DeliveryOption;
import io.intercom.android.sdk.models.UsersResponse;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class MetricTrackerMiddleware
  implements Store.Middleware<State>
{
  private final Set<Object> trackedPartIds = new HashSet();
  private final Provider<MetricTracker> trackerProvider;
  
  public MetricTrackerMiddleware(Provider<MetricTracker> paramProvider)
  {
    this.trackerProvider = paramProvider;
  }
  
  private void trackReceivedPart(Part paramPart, String paramString)
  {
    boolean bool1 = paramPart.hasAttachments();
    boolean bool2 = paramPart.isLinkCard();
    String str1 = paramPart.getId();
    String str2 = paramPart.getMessageStyle();
    if (Part.DeliveryOption.SUMMARY != paramPart.getDeliveryOption())
    {
      tracker().receivedMessageFromFullWhenClosed(bool1, bool2, paramString, str1, str2);
      return;
    }
    if (paramPart.isInitialMessage())
    {
      tracker().receivedMessageFromSnippetWhenClosed(bool1, bool2, paramString, str1, str2);
      return;
    }
    tracker().receivedReplyFromSnippetWhenClosed(bool1, bool2, paramString, str1);
  }
  
  private MetricTracker tracker()
  {
    return (MetricTracker)this.trackerProvider.get();
  }
  
  public void dispatch(Store<State> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    switch (paramAction.type())
    {
    }
    for (;;)
    {
      paramNextDispatcher.dispatch(paramAction);
      return;
      paramStore = ((UsersResponse)paramAction.value()).getUnreadConversations().getConversations().iterator();
      while (paramStore.hasNext())
      {
        Conversation localConversation = (Conversation)paramStore.next();
        Part localPart = localConversation.getLastPart();
        if (!this.trackedPartIds.contains(localPart.getId()))
        {
          this.trackedPartIds.add(localPart.getId());
          trackReceivedPart(localPart, localConversation.getId());
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/MetricTrackerMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */