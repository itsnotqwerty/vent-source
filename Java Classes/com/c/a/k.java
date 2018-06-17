package com.c.a;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

final class k
  extends g
{
  k(Context paramContext)
  {
    super(paramContext);
  }
  
  public final y.a a(w paramw, int paramInt)
    throws IOException
  {
    InputStream localInputStream = b(paramw);
    t.d locald = t.d.bOo;
    switch (new ExifInterface(paramw.uri.getPath()).getAttributeInt("Orientation", 1))
    {
    case 4: 
    case 5: 
    case 7: 
    default: 
      paramInt = 0;
    }
    for (;;)
    {
      return new y.a(null, localInputStream, locald, paramInt);
      paramInt = 90;
      continue;
      paramInt = 180;
      continue;
      paramInt = 270;
    }
  }
  
  public final boolean a(w paramw)
  {
    return "file".equals(paramw.uri.getScheme());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */