package io.intercom.a.a.a.c.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.e;
import io.intercom.a.a.a.i.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class h
  implements b<InputStream>
{
  static final b cIo = new a();
  private InputStream bNE;
  private final io.intercom.a.a.a.c.c.g cIp;
  private final b cIq;
  private HttpURLConnection cIr;
  private volatile boolean cIs;
  private final int cuw;
  
  public h(io.intercom.a.a.a.c.c.g paramg, int paramInt)
  {
    this(paramg, paramInt, cIo);
  }
  
  private h(io.intercom.a.a.a.c.c.g paramg, int paramInt, b paramb)
  {
    this.cIp = paramg;
    this.cuw = paramInt;
    this.cIq = paramb;
  }
  
  private InputStream a(URL paramURL1, int paramInt, URL paramURL2, Map<String, String> paramMap)
    throws IOException
  {
    int i;
    for (;;)
    {
      if (paramInt >= 5) {
        throw new e("Too many (> 5) redirects!");
      }
      if (paramURL2 != null) {
        try
        {
          if (paramURL1.toURI().equals(paramURL2.toURI())) {
            throw new e("In re-direct loop");
          }
        }
        catch (URISyntaxException paramURL2) {}
      }
      this.cIr = this.cIq.h(paramURL1);
      paramURL2 = paramMap.entrySet().iterator();
      while (paramURL2.hasNext())
      {
        localObject = (Map.Entry)paramURL2.next();
        this.cIr.addRequestProperty((String)((Map.Entry)localObject).getKey(), (String)((Map.Entry)localObject).getValue());
      }
      this.cIr.setConnectTimeout(this.cuw);
      this.cIr.setReadTimeout(this.cuw);
      this.cIr.setUseCaches(false);
      this.cIr.setDoInput(true);
      this.cIr.setInstanceFollowRedirects(false);
      this.cIr.connect();
      this.bNE = this.cIr.getInputStream();
      if (this.cIs) {
        return null;
      }
      i = this.cIr.getResponseCode();
      if (i / 100 == 2)
      {
        paramURL1 = this.cIr;
        if (TextUtils.isEmpty(paramURL1.getContentEncoding())) {
          paramInt = paramURL1.getContentLength();
        }
        for (this.bNE = io.intercom.a.a.a.i.b.a(paramURL1.getInputStream(), paramInt);; this.bNE = paramURL1.getInputStream())
        {
          return this.bNE;
          if (Log.isLoggable("HttpUrlFetcher", 3)) {
            Log.d("HttpUrlFetcher", "Got non empty content encoding: " + paramURL1.getContentEncoding());
          }
        }
      }
      if (i / 100 != 3) {
        break;
      }
      paramURL2 = this.cIr.getHeaderField("Location");
      if (TextUtils.isEmpty(paramURL2)) {
        throw new e("Received empty or null redirect url");
      }
      Object localObject = new URL(paramURL1, paramURL2);
      cleanup();
      paramInt += 1;
      paramURL2 = paramURL1;
      paramURL1 = (URL)localObject;
    }
    if (i == -1) {
      throw new e(i);
    }
    throw new e(this.cIr.getResponseMessage(), i);
  }
  
  public final a HT()
  {
    return a.cHD;
  }
  
  public final Class<InputStream> HU()
  {
    return InputStream.class;
  }
  
  public final void a(io.intercom.a.a.a.g paramg, b.a<? super InputStream> parama)
  {
    long l = d.JQ();
    try
    {
      io.intercom.a.a.a.c.c.g localg = this.cIp;
      if (localg.cMJ == null)
      {
        if (TextUtils.isEmpty(localg.cMI))
        {
          String str = localg.cMH;
          paramg = str;
          if (TextUtils.isEmpty(str)) {
            paramg = ((URL)io.intercom.a.a.a.i.h.checkNotNull(localg.url, "Argument must not be null")).toString();
          }
          localg.cMI = Uri.encode(paramg, "@#&=*+-_.,:!?()/~'%;$");
        }
        localg.cMJ = new URL(localg.cMI);
      }
      paramg = a(localg.cMJ, 0, null, this.cIp.cMG.getHeaders());
      if (Log.isLoggable("HttpUrlFetcher", 2)) {
        Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + d.V(l) + " ms and loaded " + paramg);
      }
      parama.as(paramg);
      return;
    }
    catch (IOException paramg)
    {
      if (Log.isLoggable("HttpUrlFetcher", 3)) {
        Log.d("HttpUrlFetcher", "Failed to load data for url", paramg);
      }
      parama.i(paramg);
    }
  }
  
  public final void cancel()
  {
    this.cIs = true;
  }
  
  public final void cleanup()
  {
    if (this.bNE != null) {}
    try
    {
      this.bNE.close();
      if (this.cIr != null) {
        this.cIr.disconnect();
      }
      this.cIr = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  private static final class a
    implements h.b
  {
    public final HttpURLConnection h(URL paramURL)
      throws IOException
    {
      return (HttpURLConnection)paramURL.openConnection();
    }
  }
  
  static abstract interface b
  {
    public abstract HttpURLConnection h(URL paramURL)
      throws IOException;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */