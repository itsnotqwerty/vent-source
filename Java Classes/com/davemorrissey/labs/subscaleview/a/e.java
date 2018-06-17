package com.davemorrissey.labs.subscaleview.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.text.TextUtils;
import java.io.InputStream;
import java.util.List;

public class e
  implements c
{
  public final Bitmap c(Context paramContext, Uri paramUri)
    throws Exception
  {
    Object localObject1 = null;
    Object localObject2 = paramUri.toString();
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
    int i;
    if (((String)localObject2).startsWith("android.resource://"))
    {
      localObject2 = paramUri.getAuthority();
      if (paramContext.getPackageName().equals(localObject2))
      {
        localObject1 = paramContext.getResources();
        paramUri = paramUri.getPathSegments();
        i = paramUri.size();
        if ((i != 2) || (!((String)paramUri.get(0)).equals("drawable"))) {
          break label154;
        }
        i = ((Resources)localObject1).getIdentifier((String)paramUri.get(1), "drawable", (String)localObject2);
        label115:
        paramContext = BitmapFactory.decodeResource(paramContext.getResources(), i, localOptions);
      }
    }
    for (;;)
    {
      if (paramContext != null) {
        return paramContext;
      }
      throw new RuntimeException("Skia image region decoder returned null bitmap - image format may not be supported");
      localObject1 = paramContext.getPackageManager().getResourcesForApplication((String)localObject2);
      break;
      label154:
      if ((i == 1) && (TextUtils.isDigitsOnly((CharSequence)paramUri.get(0)))) {
        try
        {
          i = Integer.parseInt((String)paramUri.get(0));
        }
        catch (NumberFormatException paramUri) {}
      }
      i = 0;
      break label115;
      if (((String)localObject2).startsWith("file:///android_asset/"))
      {
        paramUri = ((String)localObject2).substring(22);
        paramContext = BitmapFactory.decodeStream(paramContext.getAssets().open(paramUri), null, localOptions);
      }
      else if (((String)localObject2).startsWith("file://"))
      {
        paramContext = BitmapFactory.decodeFile(((String)localObject2).substring(7), localOptions);
      }
      else
      {
        try
        {
          localObject2 = paramContext.getContentResolver().openInputStream(paramUri);
          localObject1 = localObject2;
          paramUri = BitmapFactory.decodeStream((InputStream)localObject2, null, localOptions);
          paramContext = paramUri;
          if (localObject2 != null) {
            try
            {
              ((InputStream)localObject2).close();
              paramContext = paramUri;
            }
            catch (Exception paramContext)
            {
              paramContext = paramUri;
            }
          }
        }
        finally
        {
          if (localObject1 == null) {}
        }
      }
    }
    try
    {
      ((InputStream)localObject1).close();
      throw paramContext;
    }
    catch (Exception paramUri)
    {
      for (;;) {}
    }
    return paramContext;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/davemorrissey/labs/subscaleview/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */