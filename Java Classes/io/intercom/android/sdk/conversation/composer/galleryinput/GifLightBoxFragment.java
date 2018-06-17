package io.intercom.android.sdk.conversation.composer.galleryinput;

import com.intercom.composer.e;
import com.intercom.input.gallery.h;
import com.intercom.input.gallery.h.a;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.c.b.i;

public class GifLightBoxFragment
  extends h
{
  protected h.a getInjector(h paramh)
  {
    new h.a()
    {
      public e getImageLoader(h paramAnonymoush)
      {
        return GalleryImageLoader.create(i.cKd, null, c.r(paramAnonymoush));
      }
    };
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/GifLightBoxFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */