package com.layer.sdk.messaging;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class MessageOptions
{
  private PushNotificationPayload a;
  private Map<Identity, PushNotificationPayload> b;
  
  public MessageOptions defaultPushNotificationPayload(PushNotificationPayload paramPushNotificationPayload)
  {
    this.a = paramPushNotificationPayload;
    return this;
  }
  
  public PushNotificationPayload getDefaultPushNotificationPayload()
  {
    return this.a;
  }
  
  public PushNotificationPayload getUserPushNotificationPayload(Identity paramIdentity)
  {
    if (this.b == null) {
      return null;
    }
    return (PushNotificationPayload)this.b.get(paramIdentity);
  }
  
  public Map<Identity, PushNotificationPayload> getUserPushNotificationPayloads()
  {
    return this.b;
  }
  
  public MessageOptions userPushNotificationPayload(Identity paramIdentity, PushNotificationPayload paramPushNotificationPayload)
  {
    if (this.b == null) {
      this.b = new HashMap();
    }
    this.b.put(paramIdentity, paramPushNotificationPayload);
    return this;
  }
  
  public MessageOptions userPushNotificationPayloads(Map<Identity, PushNotificationPayload> paramMap)
  {
    if (this.b == null) {
      this.b = new HashMap();
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      this.b.put(localEntry.getKey(), localEntry.getValue());
    }
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/messaging/MessageOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */