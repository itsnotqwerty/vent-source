package com.layer.atlas.util.imagepopup;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.layer.atlas.util.b;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import java.util.concurrent.TimeUnit;

public final class a
  implements com.davemorrissey.labs.subscaleview.a.c
{
  private static LayerClient bpt;
  
  public static void b(LayerClient paramLayerClient)
  {
    bpt = paramLayerClient;
  }
  
  public final Bitmap c(Context paramContext, Uri paramUri)
    throws Exception
  {
    paramContext = (MessagePart)bpt.get(paramUri);
    if (paramContext == null)
    {
      if (b.dm(6)) {
        b.e("No message part with ID: " + paramUri);
      }
      return null;
    }
    if (paramContext.getMessage().isDeleted())
    {
      if (b.dm(6)) {
        b.e("Message part is deleted: " + paramUri);
      }
      return null;
    }
    if (!com.layer.atlas.util.c.a(paramContext, TimeUnit.MINUTES))
    {
      if (b.dm(6)) {
        b.e("Timed out while downloading: " + paramUri);
      }
      return null;
    }
    return BitmapFactory.decodeStream(paramContext.getDataStream());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/imagepopup/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */