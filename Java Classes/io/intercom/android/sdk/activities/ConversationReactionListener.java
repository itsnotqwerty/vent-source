package io.intercom.android.sdk.activities;

import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.conversation.ReactionListener;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.metrics.MetricTracker.ReactionLocation;
import io.intercom.android.sdk.models.Reaction;

public class ConversationReactionListener
  implements ReactionListener
{
  private final Api api;
  private final String conversationId;
  private final MetricTracker.ReactionLocation location;
  private final MetricTracker metricTracker;
  private final String partId;
  
  public ConversationReactionListener(MetricTracker.ReactionLocation paramReactionLocation, String paramString1, String paramString2, Api paramApi, MetricTracker paramMetricTracker)
  {
    this.conversationId = paramString2;
    this.partId = paramString1;
    this.location = paramReactionLocation;
    this.api = paramApi;
    this.metricTracker = paramMetricTracker;
  }
  
  public void onReactionSelected(Reaction paramReaction)
  {
    this.api.reactToConversation(this.conversationId, paramReaction.getIndex());
    this.metricTracker.sentReaction(this.conversationId, this.partId, paramReaction.getIndex(), this.location);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/ConversationReactionListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */