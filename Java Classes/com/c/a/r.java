package com.c.a;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
import java.io.InputStream;

final class r
  extends y
{
  private final aa bMZ;
  private final j bNs;
  
  public r(j paramj, aa paramaa)
  {
    this.bNs = paramj;
    this.bMZ = paramaa;
  }
  
  final boolean At()
  {
    return true;
  }
  
  public final y.a a(w paramw, int paramInt)
    throws IOException
  {
    j.a locala = this.bNs.a(paramw.uri, paramw.bMK);
    if (locala.avu) {}
    for (paramw = t.d.bOo;; paramw = t.d.bOp)
    {
      localObject = locala.avo;
      if (localObject == null) {
        break;
      }
      return new y.a((Bitmap)localObject, paramw);
    }
    Object localObject = locala.bNE;
    if (localObject == null) {
      return null;
    }
    if ((paramw == t.d.bOo) && (locala.contentLength == 0L))
    {
      ag.m((InputStream)localObject);
      throw new a("Received response with 0 content-length header.");
    }
    if ((paramw == t.d.bOp) && (locala.contentLength > 0L))
    {
      aa localaa = this.bMZ;
      long l = locala.contentLength;
      localaa.handler.sendMessage(localaa.handler.obtainMessage(4, Long.valueOf(l)));
    }
    return new y.a((InputStream)localObject, paramw);
  }
  
  public final boolean a(w paramw)
  {
    paramw = paramw.uri.getScheme();
    return ("http".equals(paramw)) || ("https".equals(paramw));
  }
  
  final boolean b(NetworkInfo paramNetworkInfo)
  {
    return (paramNetworkInfo == null) || (paramNetworkInfo.isConnected());
  }
  
  final int getRetryCount()
  {
    return 2;
  }
  
  static final class a
    extends IOException
  {
    public a(String paramString)
    {
      super();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */