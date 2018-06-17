package io.intercom.a.a.a.c.d.a;

import android.graphics.Bitmap;
import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.i.c;
import io.intercom.a.a.a.i.f;
import java.io.IOException;
import java.io.InputStream;

public final class s
  implements io.intercom.a.a.a.c.k<InputStream, Bitmap>
{
  private final b cIu;
  private final k cNB;
  
  public s(k paramk, b paramb)
  {
    this.cNB = paramk;
    this.cIu = paramb;
  }
  
  private u<Bitmap> a(InputStream paramInputStream, int paramInt1, int paramInt2, j paramj)
    throws IOException
  {
    if ((paramInputStream instanceof q)) {
      paramInputStream = (q)paramInputStream;
    }
    for (i = 0;; i = 1)
    {
      localc = c.r(paramInputStream);
      f localf = new f(localc);
      a locala = new a(paramInputStream, localc);
      try
      {
        paramj = this.cNB.a(localf, paramInt1, paramInt2, paramj, locala);
        return paramj;
      }
      finally
      {
        localc.release();
        if (i == 0) {
          break;
        }
        paramInputStream.release();
      }
      paramInputStream = new q(paramInputStream, this.cIu);
    }
  }
  
  static final class a
    implements k.a
  {
    private final q cIt;
    private final c cOh;
    
    a(q paramq, c paramc)
    {
      this.cIt = paramq;
      this.cOh = paramc;
    }
    
    public final void Jc()
    {
      this.cIt.Jg();
    }
    
    public final void a(e parame, Bitmap paramBitmap)
      throws IOException
    {
      IOException localIOException = this.cOh.cQT;
      if (localIOException != null)
      {
        if (paramBitmap != null) {
          parame.g(paramBitmap);
        }
        throw localIOException;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */