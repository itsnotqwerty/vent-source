package io.intercom.android.sdk.metrics.ops;

import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.metrics.MetricsStore;
import io.intercom.android.sdk.utilities.UuidStringProvider;
import java.util.ArrayList;
import java.util.List;

public class OpsMetricTracker
{
  public static final String FINISH = "finish";
  public static final String LOAD_CONVERSATION_TIME_TO_COMPLETE_REQUEST = "time-to-complete-request-load-conversation-ms";
  public static final String LOAD_CONVERSATION_TIME_TO_PROCESS_ACTION = "time-to-process-action-load-conversation-ms";
  public static final String LOAD_CONVERSATION_TIME_TO_RENDER_RESULT = "time-to-render-result-load-conversation-ms";
  public static final String SEND_PART_TIME_TO_COMPLETE_REQUEST = "time-to-complete-request-send-part-ms";
  public static final String SEND_PART_TIME_TO_PROCESS_ACTION = "time-to-process-action-send-part-ms";
  public static final String SEND_PART_TIME_TO_RENDER_RESULT = "time-to-render-result-send-part-ms";
  public static final String START = "start";
  public static final String TIMING_TYPE = "timing";
  final List<OpsEvent> events = new ArrayList();
  private final MetricsStore store;
  private final TimeProvider timeProvider;
  private final UuidStringProvider uuidStringProvider;
  
  public OpsMetricTracker(MetricsStore paramMetricsStore, TimeProvider paramTimeProvider, UuidStringProvider paramUuidStringProvider)
  {
    this.store = paramMetricsStore;
    this.timeProvider = paramTimeProvider;
    this.uuidStringProvider = paramUuidStringProvider;
  }
  
  private OpsEvent findStartEvent(String paramString)
  {
    int i = this.events.size() - 1;
    while (i >= 0)
    {
      OpsEvent localOpsEvent = (OpsEvent)this.events.get(i);
      if (("start".equals(localOpsEvent.getEventType())) && (paramString.equals(localOpsEvent.getName()))) {
        return localOpsEvent;
      }
      i -= 1;
    }
    return null;
  }
  
  private void trackOpsEvent(OpsEvent paramOpsEvent)
  {
    OpsEvent localOpsEvent = findStartEvent(paramOpsEvent.getName());
    if (localOpsEvent == null) {
      return;
    }
    this.events.remove(localOpsEvent);
    this.store.track(new OpsMetricObject("timing", localOpsEvent.getName(), paramOpsEvent.getTimestamp() - localOpsEvent.getTimestamp(), this.uuidStringProvider.newUuidString()));
  }
  
  public void clear()
  {
    this.events.clear();
  }
  
  public void trackEvent(String paramString1, String paramString2)
  {
    paramString2 = new OpsEvent(paramString1, paramString2, this.timeProvider.currentTimeMillis());
    if ("finish".equals(paramString1))
    {
      trackOpsEvent(paramString2);
      return;
    }
    this.events.add(paramString2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/ops/OpsMetricTracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */