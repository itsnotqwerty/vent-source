package com.layer.sdk.internal.lsdkd;

import android.net.Uri;
import com.layer.sdk.internal.lsdkd.lsdka.d;
import com.layer.sdk.internal.lsdkd.lsdka.l;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.Message.RecipientStatus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract interface a<Tin, Tout>
{
  public abstract Tout a(f paramf, Tin paramTin);
  
  public static class a
    implements a<Uri, Message>
  {
    public Message a(f paramf, Uri paramUri)
    {
      if (paramUri == null) {
        return null;
      }
      return (Message)paramf.a(paramUri, true);
    }
  }
  
  public static class b
    implements a<List<d>, List<String>>
  {
    public List<String> a(f paramf, List<d> paramList)
    {
      if (paramList == null) {
        return null;
      }
      paramf = new ArrayList(paramList.size());
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramf.add(((d)paramList.next()).a());
      }
      return paramf;
    }
  }
  
  public static class c
    implements a<Map<String, l>, Map<String, Message.RecipientStatus>>
  {
    public Map<String, Message.RecipientStatus> a(f paramf, Map<String, l> paramMap)
    {
      if (paramMap == null) {
        return null;
      }
      paramf = new HashMap(paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        paramf.put(localEntry.getKey(), ((l)localEntry.getValue()).d());
      }
      return paramf;
    }
  }
  
  public static class d
    implements a<Object, Object>
  {
    public Object a(f paramf, Object paramObject)
    {
      return paramObject;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */