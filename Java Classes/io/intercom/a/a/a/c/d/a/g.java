package io.intercom.a.a.a.c.d.a;

import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;

public class g
  extends e
{
  private static final String ID = "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterCrop";
  private static final byte[] ID_BYTES = "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(cIb);
  
  public g() {}
  
  @Deprecated
  public g(Context paramContext)
  {
    this();
  }
  
  @Deprecated
  public g(io.intercom.a.a.a.c.b.a.e parame)
  {
    this();
  }
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof g;
  }
  
  public int hashCode()
  {
    return "io.intercom.com.bumptech.glide.load.resource.bitmap.CenterCrop".hashCode();
  }
  
  protected Bitmap transform(io.intercom.a.a.a.c.b.a.e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return t.a(parame, paramBitmap, paramInt1, paramInt2);
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(ID_BYTES);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */