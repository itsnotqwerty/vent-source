package io.intercom.a.a.a.c.d.e;

import android.util.Log;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.l;
import io.intercom.a.a.a.i.a;
import java.io.File;
import java.io.IOException;

public final class d
  implements l<c>
{
  private static boolean a(u<c> paramu, File paramFile)
  {
    paramu = (c)paramu.get();
    try
    {
      a.b(paramu.getBuffer(), paramFile);
      return true;
    }
    catch (IOException paramu)
    {
      if (Log.isLoggable("GifEncoder", 5)) {
        Log.w("GifEncoder", "Failed to encode GIF drawable data", paramu);
      }
    }
    return false;
  }
  
  public final io.intercom.a.a.a.c.c b(j paramj)
  {
    return io.intercom.a.a.a.c.c.cHN;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */