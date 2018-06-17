package io.intercom.android.sdk.conversation.composer.galleryinput;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.text.TextUtils;
import android.widget.ImageView;
import io.intercom.a.a.a.c.b.p;
import io.intercom.a.a.a.c.d.a.k;
import io.intercom.a.a.a.c.d.c.c;
import io.intercom.a.a.a.g.f;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.j;
import io.intercom.a.a.a.j.a;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ImageUtils;

class GalleryImageLoader
  implements com.intercom.composer.e
{
  private static final float GIF_SIZE_MULTIPLIER = 0.5F;
  private final io.intercom.a.a.a.c.b.i diskCacheStrategy;
  private final j requestManager;
  private final io.intercom.a.a.a.c.d.a.e transformation;
  
  GalleryImageLoader(io.intercom.a.a.a.c.b.i parami, io.intercom.a.a.a.c.d.a.e parame, j paramj)
  {
    this.diskCacheStrategy = parami;
    this.transformation = parame;
    this.requestManager = paramj;
  }
  
  static GalleryImageLoader create(io.intercom.a.a.a.c.b.i parami, io.intercom.a.a.a.c.d.a.e parame, j paramj)
  {
    return new GalleryImageLoader(parami, parame, paramj);
  }
  
  private Bitmap getBitmapFromDrawable(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof BitmapDrawable)) {
      return ((BitmapDrawable)paramDrawable).getBitmap();
    }
    return null;
  }
  
  private void logErrorMessageForUrl(Exception paramException, String paramString)
  {
    Twig localTwig = LumberMill.getLogger();
    paramString = "Failed to load image for URL: " + paramString + " - ";
    if (paramException == null)
    {
      localTwig.e(paramString + "no error message, data probably failed to decode", new Object[0]);
      return;
    }
    localTwig.e(paramString + paramException.getMessage(), new Object[0]);
  }
  
  public void clear(ImageView paramImageView)
  {
    this.requestManager.b(new j.a(paramImageView));
  }
  
  public Bitmap getBitmapFromView(ImageView paramImageView)
  {
    paramImageView = paramImageView.getDrawable();
    if ((paramImageView instanceof TransitionDrawable))
    {
      paramImageView = (TransitionDrawable)paramImageView;
      int i = paramImageView.getNumberOfLayers() - 1;
      while (i >= 0)
      {
        Bitmap localBitmap = getBitmapFromDrawable(paramImageView.getDrawable(i));
        if (localBitmap != null) {
          return localBitmap;
        }
        i -= 1;
      }
      return null;
    }
    return getBitmapFromDrawable(paramImageView);
  }
  
  public void loadImageIntoView(com.intercom.input.gallery.b paramb, ImageView paramImageView)
  {
    if (TextUtils.isEmpty(paramb.bme)) {}
    for (final String str = paramb.path;; str = paramb.bme)
    {
      paramb = paramImageView.getContext();
      Object localObject = new g().b(this.diskCacheStrategy).o(new ColorDrawable(android.support.v4.content.a.c(paramb, R.color.intercom_search_bg_grey)));
      paramb = (com.intercom.input.gallery.b)localObject;
      if (this.transformation != null) {
        paramb = ((g)localObject).a(this.transformation, true);
      }
      io.intercom.a.a.a.i locali = this.requestManager.eT(str);
      localObject = paramb;
      if (ImageUtils.isGif(str))
      {
        paramb = paramb.C(0.5F);
        localObject = io.intercom.a.a.a.c.b.cHK;
        io.intercom.a.a.a.i.h.checkNotNull(localObject, "Argument must not be null");
        localObject = paramb.b(k.cNP, localObject).b(io.intercom.a.a.a.c.d.e.i.cNP, localObject);
      }
      paramb = locali.a((g)localObject).a(c.Ji());
      paramb.cGl = new f()
      {
        public boolean onLoadFailed(p paramAnonymousp, Object paramAnonymousObject, io.intercom.a.a.a.g.a.h<Drawable> paramAnonymoush, boolean paramAnonymousBoolean)
        {
          GalleryImageLoader.this.logErrorMessageForUrl(paramAnonymousp, str);
          return false;
        }
        
        public boolean onResourceReady(Drawable paramAnonymousDrawable, Object paramAnonymousObject, io.intercom.a.a.a.g.a.h<Drawable> paramAnonymoush, io.intercom.a.a.a.c.a paramAnonymousa, boolean paramAnonymousBoolean)
        {
          return false;
        }
      };
      paramb.c(paramImageView);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/GalleryImageLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */