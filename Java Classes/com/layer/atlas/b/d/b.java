package com.layer.atlas.b.d;

import android.content.Context;
import com.layer.atlas.b.i;
import com.layer.atlas.b.c.a;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.MessageOptions;
import com.layer.sdk.messaging.MessagePart;
import com.layer.sdk.messaging.PushNotificationPayload;
import com.layer.sdk.messaging.PushNotificationPayload.Builder;

public final class b
  extends com.layer.atlas.b.c
{
  private final int bpf;
  
  public b(Identity paramIdentity)
  {
    this(paramIdentity, (byte)0);
  }
  
  private b(Identity paramIdentity, byte paramByte)
  {
    this.bov = paramIdentity;
    this.bpf = 200;
  }
  
  public final boolean dt(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      if (com.layer.atlas.util.b.dm(6)) {
        com.layer.atlas.util.b.e("No text to send");
      }
      return false;
    }
    if (com.layer.atlas.util.b.dm(2)) {
      com.layer.atlas.util.b.du("Sending text message");
    }
    Object localObject;
    Context localContext;
    int i;
    if (this.bov == null)
    {
      localObject = "";
      localContext = this.mContext;
      i = b.i.atlas_notification_text;
      if (paramString.length() >= this.bpf) {
        break label218;
      }
    }
    label218:
    for (String str = paramString;; str = paramString.substring(0, this.bpf) + "…")
    {
      localObject = localContext.getString(i, new Object[] { localObject, str });
      paramString = this.bmU.newMessagePart(paramString);
      localObject = new PushNotificationPayload.Builder().text((String)localObject).build();
      paramString = this.bmU.newMessage(new MessageOptions().defaultPushNotificationPayload((PushNotificationPayload)localObject), new MessagePart[] { paramString });
      if ((this.bou != null) && (!this.bou.wn())) {
        break label250;
      }
      this.bmV.send(paramString);
      if (com.layer.atlas.util.b.dm(2)) {
        com.layer.atlas.util.b.du("Message sent by " + getClass().getSimpleName());
      }
      return true;
      localObject = com.layer.atlas.util.c.b(this.bov);
      break;
    }
    label250:
    if (com.layer.atlas.util.b.dm(2)) {
      com.layer.atlas.util.b.du("Message sending aborted by " + getClass().getSimpleName());
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/b/d/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */