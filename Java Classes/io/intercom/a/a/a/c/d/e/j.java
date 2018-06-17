package io.intercom.a.a.a.c.d.e;

import android.util.Log;
import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.f;
import io.intercom.a.a.a.c.k;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public final class j
  implements k<InputStream, c>
{
  private final List<f> cID;
  private final b cIu;
  private final k<ByteBuffer, c> cOU;
  
  public j(List<f> paramList, k<ByteBuffer, c> paramk, b paramb)
  {
    this.cID = paramList;
    this.cOU = paramk;
    this.cIu = paramb;
  }
  
  private static byte[] q(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    try
    {
      byte[] arrayOfByte = new byte['䀀'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localByteArrayOutputStream.flush();
    }
    catch (IOException paramInputStream)
    {
      if (Log.isLoggable("StreamGifDecoder", 5)) {
        Log.w("StreamGifDecoder", "Error reading data from stream", paramInputStream);
      }
      return null;
    }
    return localByteArrayOutputStream.toByteArray();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */