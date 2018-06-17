package io.intercom.a.a.a.c.d.e;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import io.intercom.a.a.a.b.a.a;
import io.intercom.a.a.a.c.b.a.e;

public final class b
  implements a.a
{
  private final e cFr;
  private final io.intercom.a.a.a.c.b.a.b cFw;
  
  public b(e parame, io.intercom.a.a.a.c.b.a.b paramb)
  {
    this.cFr = parame;
    this.cFw = paramb;
  }
  
  public final void B(byte[] paramArrayOfByte)
  {
    if (this.cFw == null) {
      return;
    }
    this.cFw.put(paramArrayOfByte);
  }
  
  public final Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return this.cFr.e(paramInt1, paramInt2, paramConfig);
  }
  
  public final void f(Bitmap paramBitmap)
  {
    this.cFr.g(paramBitmap);
  }
  
  public final byte[] fd(int paramInt)
  {
    if (this.cFw == null) {
      return new byte[paramInt];
    }
    return (byte[])this.cFw.a(paramInt, byte[].class);
  }
  
  public final int[] fe(int paramInt)
  {
    if (this.cFw == null) {
      return new int[paramInt];
    }
    return (int[])this.cFw.a(paramInt, int[].class);
  }
  
  public final void h(int[] paramArrayOfInt)
  {
    if (this.cFw == null) {
      return;
    }
    this.cFw.put(paramArrayOfInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */