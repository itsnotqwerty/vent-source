package com.c.a;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.Cache;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.CacheControl.Builder;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.File;
import java.io.IOException;

public final class s
  implements j
{
  private final OkHttpClient bNX;
  
  public s(Context paramContext)
  {
    this(ag.az(paramContext));
  }
  
  private s(OkHttpClient paramOkHttpClient)
  {
    this.bNX = paramOkHttpClient;
  }
  
  private s(File paramFile)
  {
    this(paramFile, ag.g(paramFile));
  }
  
  private s(File paramFile, long paramLong)
  {
    this(localOkHttpClient);
    try
    {
      this.bNX.setCache(new Cache(paramFile, paramLong));
      return;
    }
    catch (IOException paramFile) {}
  }
  
  public final j.a a(Uri paramUri, int paramInt)
    throws IOException
  {
    Object localObject = null;
    if (paramInt != 0) {
      if (!q.ec(paramInt)) {
        break label116;
      }
    }
    for (localObject = CacheControl.FORCE_CACHE;; localObject = ((CacheControl.Builder)localObject).build())
    {
      paramUri = new Request.Builder().url(paramUri.toString());
      if (localObject != null) {
        paramUri.cacheControl((CacheControl)localObject);
      }
      paramUri = this.bNX.newCall(paramUri.build()).execute();
      int i = paramUri.code();
      if (i < 300) {
        break;
      }
      paramUri.body().close();
      throw new j.b(i + " " + paramUri.message(), paramInt, i);
      label116:
      localObject = new CacheControl.Builder();
      if (!q.ea(paramInt)) {
        ((CacheControl.Builder)localObject).noCache();
      }
      if (!q.eb(paramInt)) {
        ((CacheControl.Builder)localObject).noStore();
      }
    }
    if (paramUri.cacheResponse() != null) {}
    for (boolean bool = true;; bool = false)
    {
      paramUri = paramUri.body();
      return new j.a(paramUri.byteStream(), bool, paramUri.contentLength());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */