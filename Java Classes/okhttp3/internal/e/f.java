package okhttp3.internal.e;

import d.l;
import d.r;
import d.s;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.a;
import okhttp3.internal.c.e;
import okhttp3.internal.c.k;
import okhttp3.n;
import okhttp3.p;
import okhttp3.p.a;
import okhttp3.q;
import okhttp3.r.a;
import okhttp3.u;
import okhttp3.w;
import okhttp3.y;
import okhttp3.y.a;
import okhttp3.z;

public final class f
  implements okhttp3.internal.c.c
{
  private static final List<d.f> HTTP_2_SKIPPED_REQUEST_HEADERS = okhttp3.internal.c.immutableList(new d.f[] { daM, daN, daO, daP, daR, daQ, daS, daT, c.daC, c.daD, c.daE, c.daF });
  private static final List<d.f> HTTP_2_SKIPPED_RESPONSE_HEADERS = okhttp3.internal.c.immutableList(new d.f[] { daM, daN, daO, daP, daR, daQ, daS, daT });
  private static final d.f daM = d.f.fG("connection");
  private static final d.f daN = d.f.fG("host");
  private static final d.f daO = d.f.fG("keep-alive");
  private static final d.f daP = d.f.fG("proxy-connection");
  private static final d.f daQ = d.f.fG("transfer-encoding");
  private static final d.f daR = d.f.fG("te");
  private static final d.f daS = d.f.fG("encoding");
  private static final d.f daT = d.f.fG("upgrade");
  private final okhttp3.t cgQ;
  private final r.a daU;
  private final g daV;
  private i daW;
  final okhttp3.internal.b.g dak;
  
  public f(okhttp3.t paramt, r.a parama, okhttp3.internal.b.g paramg, g paramg1)
  {
    this.cgQ = paramt;
    this.daU = parama;
    this.dak = paramg;
    this.daV = paramg1;
  }
  
  public final r a(w paramw, long paramLong)
  {
    return this.daW.MX();
  }
  
  public final y.a bz(boolean paramBoolean)
    throws IOException
  {
    Object localObject2 = this.daW.takeResponseHeaders();
    Object localObject1 = new p.a();
    int j = ((List)localObject2).size();
    int i = 0;
    k localk = null;
    if (i < j)
    {
      Object localObject3 = (c)((List)localObject2).get(i);
      if (localObject3 == null)
      {
        if ((localk == null) || (localk.code != 100)) {
          break label169;
        }
        localObject1 = new p.a();
        localk = null;
      }
      label169:
      for (;;)
      {
        i += 1;
        break;
        d.f localf = ((c)localObject3).daG;
        localObject3 = ((c)localObject3).daH.KE();
        if (localf.equals(c.daB)) {
          localk = k.fD("HTTP/1.1 " + (String)localObject3);
        } else if (!HTTP_2_SKIPPED_RESPONSE_HEADERS.contains(localf)) {
          a.cZG.a((p.a)localObject1, localf.KE(), (String)localObject3);
        }
      }
    }
    if (localk == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    localObject2 = new y.a();
    ((y.a)localObject2).cWq = u.cZh;
    ((y.a)localObject2).code = localk.code;
    ((y.a)localObject2).message = localk.message;
    localObject1 = ((y.a)localObject2).c(((p.a)localObject1).MB());
    if ((paramBoolean) && (a.cZG.a((y.a)localObject1) == 100)) {
      return null;
    }
    return (y.a)localObject1;
  }
  
  public final void d(w paramw)
    throws IOException
  {
    int i = 0;
    if (this.daW != null) {
      return;
    }
    if (paramw.cZp != null) {}
    ArrayList localArrayList;
    for (boolean bool = true;; bool = false)
    {
      p localp = paramw.cZo;
      localArrayList = new ArrayList(localp.namesAndValues.length / 2 + 4);
      localArrayList.add(new c(c.daC, paramw.method));
      localArrayList.add(new c(c.daD, okhttp3.internal.c.i.d(paramw.cVX)));
      String str = paramw.header("Host");
      if (str != null) {
        localArrayList.add(new c(c.daF, str));
      }
      localArrayList.add(new c(c.daE, paramw.cVX.scheme));
      int j = localp.namesAndValues.length / 2;
      while (i < j)
      {
        paramw = d.f.fG(localp.name(i).toLowerCase(Locale.US));
        if (!HTTP_2_SKIPPED_REQUEST_HEADERS.contains(paramw)) {
          localArrayList.add(new c(paramw, localp.value(i)));
        }
        i += 1;
      }
    }
    this.daW = this.daV.c(localArrayList, bool);
    this.daW.dbx.d(this.daU.readTimeoutMillis(), TimeUnit.MILLISECONDS);
    this.daW.dby.d(this.daU.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
  }
  
  public final z e(y paramy)
    throws IOException
  {
    Object localObject = this.dak.cZl;
    localObject = this.dak.daf;
    n.Mv();
    return new okhttp3.internal.c.h(paramy.header("Content-Type", null), e.f(paramy), l.b(new a(this.daW.dbv)));
  }
  
  public final void finishRequest()
    throws IOException
  {
    this.daW.MX().close();
  }
  
  public final void flushRequest()
    throws IOException
  {
    this.daV.dbf.flush();
  }
  
  final class a
    extends d.h
  {
    long bytesRead = 0L;
    boolean completed = false;
    
    a(s params)
    {
      super();
    }
    
    private void endOfInput(IOException paramIOException)
    {
      if (this.completed) {
        return;
      }
      this.completed = true;
      f.this.dak.a(false, f.this, paramIOException);
    }
    
    public final long a(d.c paramc, long paramLong)
      throws IOException
    {
      try
      {
        paramLong = this.dcd.a(paramc, paramLong);
        if (paramLong > 0L) {
          this.bytesRead += paramLong;
        }
        return paramLong;
      }
      catch (IOException paramc)
      {
        endOfInput(paramc);
        throw paramc;
      }
    }
    
    public final void close()
      throws IOException
    {
      super.close();
      endOfInput(null);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */