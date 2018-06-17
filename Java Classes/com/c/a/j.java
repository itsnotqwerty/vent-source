package com.c.a;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

public abstract interface j
{
  public abstract a a(Uri paramUri, int paramInt)
    throws IOException;
  
  public static final class a
  {
    final Bitmap avo;
    final boolean avu;
    final InputStream bNE;
    final long contentLength;
    
    public a(InputStream paramInputStream, boolean paramBoolean, long paramLong)
    {
      if (paramInputStream == null) {
        throw new IllegalArgumentException("Stream may not be null.");
      }
      this.bNE = paramInputStream;
      this.avo = null;
      this.avu = paramBoolean;
      this.contentLength = paramLong;
    }
  }
  
  public static final class b
    extends IOException
  {
    final boolean bNF;
    final int responseCode;
    
    public b(String paramString, int paramInt1, int paramInt2)
    {
      super();
      this.bNF = q.ec(paramInt1);
      this.responseCode = paramInt2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */