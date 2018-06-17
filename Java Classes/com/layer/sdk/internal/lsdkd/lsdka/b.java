package com.layer.sdk.internal.lsdkd.lsdka;

import android.net.Uri;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.messaging.Announcement;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Message.RecipientStatus;
import java.util.HashMap;
import java.util.Map;

public class b
  extends i
  implements Announcement
{
  public b(Uri paramUri, Long paramLong)
  {
    super(paramUri, paramLong);
  }
  
  public Message.RecipientStatus a(String paramString)
  {
    synchronized (this.a)
    {
      if (!this.b.i().equals(paramString)) {
        return null;
      }
      if (this.c.containsKey(paramString))
      {
        paramString = ((l)this.c.get(paramString)).d();
        return paramString;
      }
    }
    paramString = Message.RecipientStatus.SENT;
    return paramString;
  }
  
  public Conversation getConversation()
  {
    return null;
  }
  
  public Map<Identity, Message.RecipientStatus> getRecipientStatus()
  {
    HashMap localHashMap = new HashMap();
    e locale = this.b.j();
    localHashMap.put(locale, getRecipientStatus(locale));
    return localHashMap;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */