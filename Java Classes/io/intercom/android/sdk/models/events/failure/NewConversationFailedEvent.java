package io.intercom.android.sdk.models.events.failure;

public class NewConversationFailedEvent
{
  private final String partId;
  private final int position;
  
  public NewConversationFailedEvent(int paramInt, String paramString)
  {
    this.position = paramInt;
    this.partId = paramString;
  }
  
  public String getPartId()
  {
    return this.partId;
  }
  
  public int getPosition()
  {
    return this.position;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/events/failure/NewConversationFailedEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */