package io.intercom.android.sdk.transforms;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import io.intercom.android.sdk.commons.utilities.BitmapUtils;
import io.intercom.android.sdk.commons.utilities.BitmapUtils.BitmapCache;
import java.security.MessageDigest;

public class RoundedCornersTransform
  extends io.intercom.a.a.a.c.d.a.e
{
  private static final int VERSION = 1;
  private final String id;
  private final byte[] idBytes;
  private final int radius;
  
  public RoundedCornersTransform(int paramInt)
  {
    this.radius = paramInt;
    this.id = ("io.intercom.android.sdk.transforms.RoundedCornersTransform.(radius=" + paramInt + ")1");
    this.idBytes = this.id.getBytes(cIb);
  }
  
  protected Bitmap transform(final io.intercom.a.a.a.c.b.a.e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    BitmapUtils.transformRoundCorners(paramBitmap, new BitmapUtils.BitmapCache()
    {
      public Bitmap get(int paramAnonymousInt1, int paramAnonymousInt2, Bitmap.Config paramAnonymousConfig)
      {
        return parame.get(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousConfig);
      }
    }, this.radius);
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(this.idBytes);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/transforms/RoundedCornersTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */