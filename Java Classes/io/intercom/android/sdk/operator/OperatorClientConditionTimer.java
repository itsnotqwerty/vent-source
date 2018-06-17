package io.intercom.android.sdk.operator;

import android.os.Handler;
import io.intercom.android.sdk.views.ClientConditionListener;

public class OperatorClientConditionTimer
{
  private static final int LONG_DELAY_MILLIS = 10000;
  private static final int SHORT_DELAY_MILLIS = 2000;
  private final String condition;
  private final String conversationId;
  private final Handler handler;
  private final Runnable runnable;
  
  public OperatorClientConditionTimer(final String paramString1, final String paramString2, Handler paramHandler, final ClientConditionListener paramClientConditionListener)
  {
    this.conversationId = paramString1;
    this.condition = paramString2;
    this.handler = paramHandler;
    this.runnable = new Runnable()
    {
      public void run()
      {
        paramClientConditionListener.conditionSatisfied(paramString1, paramString2);
      }
    };
  }
  
  public void beginCountdown()
  {
    this.handler.postDelayed(this.runnable, 2000L);
  }
  
  public String getCondition()
  {
    return this.condition;
  }
  
  public String getConversationId()
  {
    return this.conversationId;
  }
  
  public void interrupt()
  {
    this.handler.removeCallbacks(this.runnable);
    this.handler.postDelayed(this.runnable, 10000L);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/operator/OperatorClientConditionTimer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */