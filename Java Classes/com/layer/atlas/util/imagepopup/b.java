package com.layer.atlas.util.imagepopup;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import com.davemorrissey.labs.subscaleview.a.d;
import com.layer.atlas.util.c;
import com.layer.sdk.LayerClient;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import java.util.concurrent.TimeUnit;

public final class b
  implements d
{
  private static LayerClient bpt;
  private BitmapRegionDecoder bpw;
  private MessagePart bpx;
  private final Object mLock = new Object();
  
  public static void b(LayerClient paramLayerClient)
  {
    bpt = paramLayerClient;
  }
  
  public final Bitmap a(Rect paramRect, int paramInt)
  {
    synchronized (this.mLock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inSampleSize = paramInt;
      localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
      paramRect = this.bpw.decodeRegion(paramRect, localOptions);
      if (paramRect == null) {
        throw new IllegalStateException("Could not decode bitmap region");
      }
    }
    return paramRect;
  }
  
  public final Point d(Context arg1, Uri paramUri)
    throws Exception
  {
    ??? = (MessagePart)bpt.get(paramUri);
    if (??? == null)
    {
      if (com.layer.atlas.util.b.dm(6)) {
        com.layer.atlas.util.b.e("No message part with ID: " + paramUri);
      }
      return null;
    }
    if (???.getMessage().isDeleted())
    {
      if (com.layer.atlas.util.b.dm(6)) {
        com.layer.atlas.util.b.e("Message part is deleted: " + paramUri);
      }
      return null;
    }
    this.bpx = ???;
    if (!c.a(this.bpx, TimeUnit.MINUTES))
    {
      if (com.layer.atlas.util.b.dm(6)) {
        com.layer.atlas.util.b.e("Timed out while downloading: " + paramUri);
      }
      return null;
    }
    synchronized (this.mLock)
    {
      this.bpw = BitmapRegionDecoder.newInstance(this.bpx.getDataStream(), false);
      paramUri = new Point(this.bpw.getWidth(), this.bpw.getHeight());
      return paramUri;
    }
  }
  
  public final boolean kC()
  {
    return (this.bpw != null) && (!this.bpw.isRecycled()) && (this.bpx.isContentReady());
  }
  
  public final void recycle()
  {
    this.bpw.recycle();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/imagepopup/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */