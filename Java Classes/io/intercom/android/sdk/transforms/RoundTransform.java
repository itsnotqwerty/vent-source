package io.intercom.android.sdk.transforms;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import io.intercom.android.sdk.commons.utilities.BitmapUtils;
import io.intercom.android.sdk.commons.utilities.BitmapUtils.BitmapCache;
import java.security.MessageDigest;

public class RoundTransform
  extends io.intercom.a.a.a.c.d.a.e
{
  private static final String ID = "io.intercom.android.sdk.transforms.RoundTransform.1";
  private static final byte[] ID_BYTES = "io.intercom.android.sdk.transforms.RoundTransform.1".getBytes(cIb);
  private static final int VERSION = 1;
  
  protected Bitmap transform(final io.intercom.a.a.a.c.b.a.e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    BitmapUtils.transformRound(paramBitmap, new BitmapUtils.BitmapCache()
    {
      public Bitmap get(int paramAnonymousInt1, int paramAnonymousInt2, Bitmap.Config paramAnonymousConfig)
      {
        return parame.get(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousConfig);
      }
    });
  }
  
  public void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(ID_BYTES);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/transforms/RoundTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */