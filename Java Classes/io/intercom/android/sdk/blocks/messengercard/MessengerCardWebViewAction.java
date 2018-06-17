package io.intercom.android.sdk.blocks.messengercard;

import java.util.Map;

public class MessengerCardWebViewAction
{
  private final Map<String, Object> payload;
  private final String type;
  
  public MessengerCardWebViewAction(String paramString, Map<String, Object> paramMap)
  {
    this.type = paramString;
    this.payload = paramMap;
  }
  
  public Map<String, Object> getPayload()
  {
    return this.payload;
  }
  
  public String getType()
  {
    return this.type;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */