package com.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import java.io.IOException;

final class z
  extends y
{
  private final Context context;
  
  z(Context paramContext)
  {
    this.context = paramContext;
  }
  
  public final y.a a(w paramw, int paramInt)
    throws IOException
  {
    Resources localResources = ag.a(this.context, paramw);
    paramInt = ag.a(localResources, paramw);
    BitmapFactory.Options localOptions = d(paramw);
    if (a(localOptions))
    {
      BitmapFactory.decodeResource(localResources, paramInt, localOptions);
      a(paramw.bOG, paramw.bOH, localOptions, paramw);
    }
    return new y.a(BitmapFactory.decodeResource(localResources, paramInt, localOptions), t.d.bOo);
  }
  
  public final boolean a(w paramw)
  {
    if (paramw.resourceId != 0) {
      return true;
    }
    return "android.resource".equals(paramw.uri.getScheme());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */