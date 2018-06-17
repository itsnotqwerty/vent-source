package com.davemorrissey.labs.subscaleview.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import java.io.InputStream;
import java.util.List;

public class f
  implements d
{
  private final Object awg = new Object();
  private BitmapRegionDecoder axg;
  
  public final Bitmap a(Rect paramRect, int paramInt)
  {
    synchronized (this.awg)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inSampleSize = paramInt;
      localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
      paramRect = this.axg.decodeRegion(paramRect, localOptions);
      if (paramRect == null) {
        throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
      }
    }
    return paramRect;
  }
  
  public final Point d(Context paramContext, Uri paramUri)
    throws Exception
  {
    Object localObject = paramUri.toString();
    String str;
    int i;
    if (((String)localObject).startsWith("android.resource://"))
    {
      str = paramUri.getAuthority();
      if (paramContext.getPackageName().equals(str))
      {
        localObject = paramContext.getResources();
        paramUri = paramUri.getPathSegments();
        i = paramUri.size();
        if ((i != 2) || (!((String)paramUri.get(0)).equals("drawable"))) {
          break label147;
        }
        i = ((Resources)localObject).getIdentifier((String)paramUri.get(1), "drawable", str);
        label95:
        this.axg = BitmapRegionDecoder.newInstance(paramContext.getResources().openRawResource(i), false);
      }
    }
    for (;;)
    {
      return new Point(this.axg.getWidth(), this.axg.getHeight());
      localObject = paramContext.getPackageManager().getResourcesForApplication(str);
      break;
      label147:
      if ((i == 1) && (TextUtils.isDigitsOnly((CharSequence)paramUri.get(0)))) {
        try
        {
          i = Integer.parseInt((String)paramUri.get(0));
        }
        catch (NumberFormatException paramUri) {}
      }
      i = 0;
      break label95;
      if (((String)localObject).startsWith("file:///android_asset/"))
      {
        paramUri = ((String)localObject).substring(22);
        this.axg = BitmapRegionDecoder.newInstance(paramContext.getAssets().open(paramUri, 1), false);
      }
      else if (((String)localObject).startsWith("file://"))
      {
        this.axg = BitmapRegionDecoder.newInstance(((String)localObject).substring(7), false);
      }
      else
      {
        localObject = null;
        try
        {
          paramContext = paramContext.getContentResolver().openInputStream(paramUri);
          localObject = paramContext;
          this.axg = BitmapRegionDecoder.newInstance(paramContext, false);
          if (paramContext != null) {
            try
            {
              paramContext.close();
            }
            catch (Exception paramContext) {}
          }
        }
        finally
        {
          if (localObject == null) {}
        }
      }
    }
    try
    {
      ((InputStream)localObject).close();
      throw paramContext;
    }
    catch (Exception paramUri)
    {
      for (;;) {}
    }
  }
  
  public final boolean kC()
  {
    return (this.axg != null) && (!this.axg.isRecycled());
  }
  
  public final void recycle()
  {
    this.axg.recycle();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/davemorrissey/labs/subscaleview/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */