package com.vent.a;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.Metadata;
import com.vent.bb;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class f
  extends a
  implements Comparator<f>
{
  public static final Parcelable.Creator<f> CREATOR = new a.a(f.class);
  public e bUb;
  public Uri cjL;
  public Long cjM;
  public String cjN;
  public Date cjO;
  
  public f() {}
  
  public f(Parcel paramParcel)
  {
    Object localObject = paramParcel.readString();
    if (localObject == null) {}
    for (localObject = null;; localObject = Uri.parse((String)localObject))
    {
      this.cjL = ((Uri)localObject);
      this.bUb = ((e)paramParcel.readParcelable(e.class.getClassLoader()));
      return;
    }
  }
  
  public f(JSONObject paramJSONObject)
  {
    try
    {
      if (!paramJSONObject.isNull("layerConversationId")) {}
      for (Object localObject1 = Uri.parse(paramJSONObject.getString("layerConversationId"));; localObject1 = null)
      {
        this.cjL = ((Uri)localObject1);
        localObject1 = localObject2;
        if (!paramJSONObject.isNull("conversation")) {
          localObject1 = new e(paramJSONObject.getJSONObject("conversation"));
        }
        this.bUb = ((e)localObject1);
        return;
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public static boolean a(LayerClient paramLayerClient, Uri paramUri)
  {
    if ((paramUri != null) && (paramLayerClient != null) && (paramLayerClient.isAuthenticated())) {
      try
      {
        paramLayerClient = paramLayerClient.getConversation(paramUri);
        if (paramLayerClient != null)
        {
          boolean bool = d(paramLayerClient);
          return bool;
        }
      }
      catch (Exception paramLayerClient)
      {
        paramLayerClient.printStackTrace();
      }
    }
    return false;
  }
  
  public static boolean d(Conversation paramConversation)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramConversation != null)
    {
      y localy = bb.ceP;
      bool1 = bool2;
      if (localy != null)
      {
        paramConversation = paramConversation.getMetadata();
        bool1 = bool2;
        if (paramConversation != null)
        {
          paramConversation = paramConversation.get("muted_" + localy.cjy);
          bool1 = bool2;
          if (paramConversation != null)
          {
            bool1 = bool2;
            if ((paramConversation instanceof String))
            {
              bool1 = bool2;
              if (paramConversation.equals("true")) {
                bool1 = true;
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  private boolean eg(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      if (paramString.contains("://")) {}
      try
      {
        paramString = Uri.parse(paramString);
        if (paramString != null)
        {
          boolean bool = n(paramString);
          return bool;
        }
      }
      catch (Exception paramString) {}
    }
    return b(new m(paramString));
    return false;
  }
  
  public final JSONObject EK()
    throws JSONException
  {
    Object localObject2 = null;
    JSONObject localJSONObject = new JSONObject();
    if (this.cjL != null) {}
    for (Object localObject1 = this.cjL.toString();; localObject1 = null)
    {
      localJSONObject.put("layerConversationId", localObject1);
      localObject1 = localObject2;
      if (this.bUb != null) {
        localObject1 = this.bUb.EK();
      }
      localJSONObject.put("conversation", localObject1);
      return localJSONObject;
    }
  }
  
  public final x EQ()
  {
    if (this.bUb == null) {
      return null;
    }
    return this.bUb.EQ();
  }
  
  public final void b(Context paramContext, Message paramMessage)
  {
    if (paramMessage == null)
    {
      this.cjN = "";
      this.cjO = null;
    }
    do
    {
      return;
      this.cjN = com.vent.d.e.ex(com.layer.atlas.util.c.a(paramContext, paramMessage).trim());
      this.cjO = paramMessage.getSentAt();
    } while (this.cjO != null);
    this.cjO = paramMessage.getReceivedAt();
  }
  
  public final boolean b(m paramm)
  {
    return (this.bUb != null) && (paramm != null) && (m.b(this.bUb.cjy, paramm));
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (!(paramObject instanceof f)) {
          break;
        }
        paramObject = (f)paramObject;
      } while ((paramObject != null) && (n(((f)paramObject).cjL)));
      return false;
      if (!(paramObject instanceof e)) {
        break;
      }
      paramObject = (e)paramObject;
    } while ((paramObject != null) && (b(((e)paramObject).cjy)));
    return false;
    if ((paramObject instanceof Uri)) {
      return n((Uri)paramObject);
    }
    if ((paramObject instanceof m)) {
      return b((m)paramObject);
    }
    if ((paramObject instanceof String)) {
      return eg((String)paramObject);
    }
    return false;
  }
  
  public final boolean n(Uri paramUri)
  {
    return (this.cjL != null) && (paramUri != null) && (this.cjL.equals(paramUri));
  }
  
  public final String toString()
  {
    String str = this.cjL.toString();
    if ((this.bUb != null) && (!com.vent.d.c.f(this.bUb.cjI)) && (bb.ciL != null))
    {
      x localx2 = (x)bb.ciL.get(this.bUb.cjI.get(0));
      x localx1 = localx2;
      if (bb.c(localx2))
      {
        localx1 = localx2;
        if (this.bUb.cjI.size() >= 2) {
          localx1 = (x)bb.ciL.get(this.bUb.cjI.get(1));
        }
      }
      if (localx1 != null) {
        return str + " " + localx1.username;
      }
    }
    return str;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.cjL != null) {}
    for (String str = this.cjL.toString();; str = null)
    {
      paramParcel.writeString(str);
      paramParcel.writeParcelable(this.bUb, paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */