package io.intercom.a.a.a.c.d.a;

import android.graphics.Bitmap;
import java.security.MessageDigest;

public final class h
  extends e
{
  private static final byte[] ID_BYTES = "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(cIb);
  
  public final boolean equals(Object paramObject)
  {
    return paramObject instanceof h;
  }
  
  public final int hashCode()
  {
    return "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterInside".hashCode();
  }
  
  protected final Bitmap transform(io.intercom.a.a.a.c.b.a.e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return t.c(parame, paramBitmap, paramInt1, paramInt2);
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(ID_BYTES);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */