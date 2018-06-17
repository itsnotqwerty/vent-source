package io.intercom.android.sdk.imageloader;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.widget.ImageView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.identity.AppConfig;
import java.io.IOException;

public class WallpaperLoader
{
  private final Provider<AppConfig> appConfigProvider;
  private final LongTermImageLoader imageLoader;
  private final j requestManager;
  
  WallpaperLoader(LongTermImageLoader paramLongTermImageLoader, Provider<AppConfig> paramProvider, j paramj)
  {
    this.imageLoader = paramLongTermImageLoader;
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
  }
  
  public static WallpaperLoader create(Context paramContext, Provider<AppConfig> paramProvider, j paramj)
  {
    return new WallpaperLoader(LongTermImageLoader.newInstance(paramContext), paramProvider, paramj);
  }
  
  public void close()
    throws IOException
  {
    this.imageLoader.close();
  }
  
  public void loadWallpaperInto(final ImageView paramImageView, final Listener paramListener)
  {
    String str = ((AppConfig)this.appConfigProvider.get()).getWallpaper();
    if (TextUtils.isEmpty(str)) {
      return;
    }
    this.imageLoader.loadImage(str, new LongTermImageLoader.OnImageReadyListener()
    {
      public void onImageReady(Bitmap paramAnonymousBitmap)
      {
        Context localContext = paramImageView.getContext();
        if (localContext == null) {
          return;
        }
        paramAnonymousBitmap.setDensity(160);
        paramAnonymousBitmap = new BitmapDrawable(localContext.getResources(), paramAnonymousBitmap);
        paramAnonymousBitmap.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
        paramImageView.setImageDrawable(paramAnonymousBitmap);
        paramListener.onLoadComplete();
      }
    }, this.requestManager);
  }
  
  public static abstract interface Listener
  {
    public abstract void onLoadComplete();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/imageloader/WallpaperLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */