package io.intercom.a.a.a.c.a.a;

import android.net.Uri;
import java.util.List;

public final class b
{
  public static boolean aL(int paramInt1, int paramInt2)
  {
    return (paramInt1 != Integer.MIN_VALUE) && (paramInt2 != Integer.MIN_VALUE) && (paramInt1 <= 512) && (paramInt2 <= 384);
  }
  
  public static boolean o(Uri paramUri)
  {
    return (paramUri != null) && ("content".equals(paramUri.getScheme())) && ("media".equals(paramUri.getAuthority()));
  }
  
  public static boolean p(Uri paramUri)
  {
    return paramUri.getPathSegments().contains("video");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */