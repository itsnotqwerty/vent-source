package io.intercom.a.a.a.c.c;

import android.util.Log;
import io.intercom.a.a.a.c.d;
import io.intercom.a.a.a.i.a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class c
  implements d<ByteBuffer>
{
  private static boolean a(ByteBuffer paramByteBuffer, File paramFile)
  {
    boolean bool = false;
    try
    {
      a.b(paramByteBuffer, paramFile);
      bool = true;
    }
    catch (IOException paramByteBuffer)
    {
      while (!Log.isLoggable("ByteBufferEncoder", 3)) {}
      Log.d("ByteBufferEncoder", "Failed to write data", paramByteBuffer);
    }
    return bool;
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */