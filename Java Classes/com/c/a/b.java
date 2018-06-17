package com.c.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.IOException;
import java.util.List;

final class b
  extends y
{
  private static final int bMQ = 22;
  private final AssetManager bMR;
  
  public b(Context paramContext)
  {
    this.bMR = paramContext.getAssets();
  }
  
  public final y.a a(w paramw, int paramInt)
    throws IOException
  {
    return new y.a(this.bMR.open(paramw.uri.toString().substring(bMQ)), t.d.bOo);
  }
  
  public final boolean a(w paramw)
  {
    boolean bool2 = false;
    paramw = paramw.uri;
    boolean bool1 = bool2;
    if ("file".equals(paramw.getScheme()))
    {
      bool1 = bool2;
      if (!paramw.getPathSegments().isEmpty())
      {
        bool1 = bool2;
        if ("android_asset".equals(paramw.getPathSegments().get(0))) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */