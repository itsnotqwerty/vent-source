package io.intercom.android.sdk.models.events.failure;

public class ReplyFailedEvent
{
  private final boolean isUpload;
  private final String partId;
  private final int position;
  
  public ReplyFailedEvent(int paramInt, boolean paramBoolean, String paramString)
  {
    this.position = paramInt;
    this.partId = paramString;
    this.isUpload = paramBoolean;
  }
  
  public String getPartId()
  {
    return this.partId;
  }
  
  public int getPosition()
  {
    return this.position;
  }
  
  public boolean isUpload()
  {
    return this.isUpload;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/events/failure/ReplyFailedEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */