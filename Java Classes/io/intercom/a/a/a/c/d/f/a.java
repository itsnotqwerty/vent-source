package io.intercom.a.a.a.c.d.f;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.d.b.b;
import java.io.ByteArrayOutputStream;

public final class a
  implements d<Bitmap, byte[]>
{
  private final Bitmap.CompressFormat cOV;
  private final int quality;
  
  public a()
  {
    this(Bitmap.CompressFormat.JPEG);
  }
  
  private a(Bitmap.CompressFormat paramCompressFormat)
  {
    this.cOV = paramCompressFormat;
    this.quality = 100;
  }
  
  public final u<byte[]> e(u<Bitmap> paramu)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ((Bitmap)paramu.get()).compress(this.cOV, this.quality, localByteArrayOutputStream);
    paramu.recycle();
    return new b(localByteArrayOutputStream.toByteArray());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/f/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */