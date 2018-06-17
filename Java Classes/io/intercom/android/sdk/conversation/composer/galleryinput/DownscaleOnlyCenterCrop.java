package io.intercom.android.sdk.conversation.composer.galleryinput;

import android.graphics.Bitmap;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.d.a.g;

class DownscaleOnlyCenterCrop
  extends g
{
  static final DownscaleOnlyCenterCrop INSTANCE = new DownscaleOnlyCenterCrop();
  
  protected Bitmap transform(e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap;
    if (paramBitmap.getHeight() <= paramInt2)
    {
      localBitmap = paramBitmap;
      if (paramBitmap.getWidth() <= paramInt1) {}
    }
    else
    {
      localBitmap = super.transform(parame, paramBitmap, paramInt1, paramInt2);
    }
    return localBitmap;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/DownscaleOnlyCenterCrop.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */