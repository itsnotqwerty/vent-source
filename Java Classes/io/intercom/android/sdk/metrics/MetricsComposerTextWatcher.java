package io.intercom.android.sdk.metrics;

import android.text.Editable;
import android.text.TextUtils;
import io.intercom.android.sdk.utilities.SimpleTextWatcher;

public class MetricsComposerTextWatcher
  extends SimpleTextWatcher
{
  private String conversationId;
  private boolean hasTrackedEvent;
  private final MetricTracker metricTracker;
  
  public MetricsComposerTextWatcher(MetricTracker paramMetricTracker)
  {
    this.metricTracker = paramMetricTracker;
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    if ((this.hasTrackedEvent) || (paramEditable.length() == 0)) {
      return;
    }
    if (TextUtils.isEmpty(this.conversationId)) {
      this.metricTracker.typeInNewConversation();
    }
    for (;;)
    {
      this.hasTrackedEvent = true;
      return;
      this.metricTracker.typeInConversation(this.conversationId);
    }
  }
  
  public void reset()
  {
    this.hasTrackedEvent = false;
  }
  
  public void setConversationId(String paramString)
  {
    this.conversationId = paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/MetricsComposerTextWatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */