package io.intercom.android.sdk.models.events;

import io.intercom.android.sdk.models.Upload;

public class UploadEvent
{
  private final long size;
  private final String tempPartId;
  private final int tempPartPosition;
  private final Upload upload;
  
  public UploadEvent(Upload paramUpload, long paramLong, int paramInt, String paramString)
  {
    this.upload = paramUpload;
    this.size = paramLong;
    this.tempPartPosition = paramInt;
    this.tempPartId = paramString;
  }
  
  public long getSize()
  {
    return this.size;
  }
  
  public String getTempPartId()
  {
    return this.tempPartId;
  }
  
  public int getTempPartPosition()
  {
    return this.tempPartPosition;
  }
  
  public Upload getUpload()
  {
    return this.upload;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/events/UploadEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */