package io.intercom.android.sdk.imageloader;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import io.intercom.a.a.a.g.a.f;
import io.intercom.a.a.a.g.b.d;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

public class LongTermImageLoader
  implements Closeable
{
  private static final int CACHE_SIZE = 26214400;
  private static final Twig twig = ;
  private final LongTermImageDiskCache diskCache;
  private final Fetcher imageFetcher;
  
  LongTermImageLoader(LongTermImageDiskCache paramLongTermImageDiskCache, Fetcher paramFetcher)
  {
    this.diskCache = paramLongTermImageDiskCache;
    this.imageFetcher = paramFetcher;
  }
  
  public static LongTermImageLoader newInstance(Context paramContext)
  {
    paramContext = new File(paramContext.getCacheDir(), "intercom-glide");
    if ((!paramContext.exists()) && (!paramContext.mkdir())) {
      twig.e("Could not create directory: " + paramContext.getAbsolutePath(), new Object[0]);
    }
    paramContext = new LongTermImageDiskCache(paramContext, 26214400);
    return new LongTermImageLoader(paramContext, new Fetcher(paramContext));
  }
  
  public void close()
    throws IOException
  {
    this.diskCache.close();
  }
  
  public void loadImage(String paramString, OnImageReadyListener paramOnImageReadyListener, j paramj)
  {
    File localFile = this.diskCache.get(paramString);
    OnImageReadyListener localOnImageReadyListener = paramOnImageReadyListener;
    if (paramOnImageReadyListener == null) {
      localOnImageReadyListener = OnImageReadyListener.NULL;
    }
    if ((localFile != null) && (localFile.exists()))
    {
      this.imageFetcher.loadImageFromFile(paramString, localFile, localOnImageReadyListener, paramj);
      return;
    }
    this.imageFetcher.fetchImageFromWeb(paramString, localOnImageReadyListener, paramj);
  }
  
  static class Fetcher
  {
    final LongTermImageDiskCache diskCache;
    
    Fetcher(LongTermImageDiskCache paramLongTermImageDiskCache)
    {
      this.diskCache = paramLongTermImageDiskCache;
    }
    
    void fetchImageFromWeb(final String paramString, final LongTermImageLoader.OnImageReadyListener paramOnImageReadyListener, j paramj)
    {
      paramj.HC().aq(paramString).a(new g().b(io.intercom.a.a.a.c.b.i.cKc)).a(new f(Integer.MIN_VALUE, Integer.MIN_VALUE)
      {
        public void onResourceReady(Bitmap paramAnonymousBitmap, d<? super Bitmap> paramAnonymousd)
        {
          paramOnImageReadyListener.onImageReady(paramAnonymousBitmap);
          if (!LongTermImageLoader.Fetcher.this.diskCache.isClosed()) {
            LongTermImageLoader.Fetcher.this.diskCache.put(paramString, paramAnonymousBitmap);
          }
        }
      }, null);
    }
    
    void loadImageFromFile(final String paramString, File paramFile, final LongTermImageLoader.OnImageReadyListener paramOnImageReadyListener, final j paramj)
    {
      paramj.HC().aq(paramFile).a(new g().b(io.intercom.a.a.a.c.b.i.cKc)).a(new f(Integer.MIN_VALUE, Integer.MIN_VALUE)
      {
        public void onLoadFailed(Drawable paramAnonymousDrawable)
        {
          LongTermImageLoader.Fetcher.this.fetchImageFromWeb(paramString, paramOnImageReadyListener, paramj);
        }
        
        public void onResourceReady(Bitmap paramAnonymousBitmap, d<? super Bitmap> paramAnonymousd)
        {
          paramOnImageReadyListener.onImageReady(paramAnonymousBitmap);
        }
      }, null);
    }
  }
  
  public static abstract interface OnImageReadyListener
  {
    public static final OnImageReadyListener NULL = new OnImageReadyListener()
    {
      public final void onImageReady(Bitmap paramAnonymousBitmap) {}
    };
    
    public abstract void onImageReady(Bitmap paramBitmap);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/imageloader/LongTermImageLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */