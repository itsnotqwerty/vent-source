package okhttp3.internal.c;

import d.d;
import d.l;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.n;
import okhttp3.r.a;
import okhttp3.w;
import okhttp3.x;
import okhttp3.y;
import okhttp3.y.a;
import okhttp3.z;

public final class b
  implements okhttp3.r
{
  private final boolean forWebSocket;
  
  public b(boolean paramBoolean)
  {
    this.forWebSocket = paramBoolean;
  }
  
  public final y a(r.a parama)
    throws IOException
  {
    parama = (g)parama;
    c localc = parama.dal;
    okhttp3.internal.b.g localg = parama.dak;
    Object localObject = (okhttp3.internal.b.c)parama.dai;
    w localw = parama.cZt;
    long l = System.currentTimeMillis();
    n.Mp();
    localc.d(localw);
    n.Mq();
    if ((f.permitsRequestBody(localw.method)) && (localw.cZp != null)) {
      if ("100-continue".equalsIgnoreCase(localw.header("Expect")))
      {
        localc.flushRequest();
        n.Mt();
        parama = localc.bz(true);
        if (parama == null)
        {
          n.Mr();
          localObject = l.a(new a(localc.a(localw, localw.cZp.contentLength())));
          localw.cZp.a((d)localObject);
          ((d)localObject).close();
          n.Ms();
        }
      }
    }
    for (;;)
    {
      localc.finishRequest();
      localObject = parama;
      if (parama == null)
      {
        n.Mt();
        localObject = localc.bz(false);
      }
      ((y.a)localObject).cZt = localw;
      ((y.a)localObject).cWs = localg.MR().cWs;
      ((y.a)localObject).sentRequestAtMillis = l;
      ((y.a)localObject).receivedResponseAtMillis = System.currentTimeMillis();
      parama = ((y.a)localObject).MJ();
      int j = parama.code;
      int i = j;
      if (j == 100)
      {
        parama = localc.bz(false);
        parama.cZt = localw;
        parama.cWs = localg.MR().cWs;
        parama.sentRequestAtMillis = l;
        parama.receivedResponseAtMillis = System.currentTimeMillis();
        parama = parama.MJ();
        i = parama.code;
      }
      n.Mu();
      if ((this.forWebSocket) && (i == 101))
      {
        parama = parama.MI();
        parama.cZu = okhttp3.internal.c.cZH;
      }
      for (parama = parama.MJ();; parama = ((y.a)localObject).MJ())
      {
        if (("close".equalsIgnoreCase(parama.cZt.header("Connection"))) || ("close".equalsIgnoreCase(parama.header("Connection", null)))) {
          localg.noNewStreams();
        }
        if (((i != 204) && (i != 205)) || (parama.cZu.contentLength() <= 0L)) {
          break label471;
        }
        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + parama.cZu.contentLength());
        if (!((okhttp3.internal.b.c)localObject).isMultiplexed()) {
          localg.noNewStreams();
        }
        break;
        localObject = parama.MI();
        ((y.a)localObject).cZu = localc.e(parama);
      }
      label471:
      return parama;
      parama = null;
      break;
      parama = null;
    }
  }
  
  static final class a
    extends d.g
  {
    long successfulCount;
    
    a(d.r paramr)
    {
      super();
    }
    
    public final void b(d.c paramc, long paramLong)
      throws IOException
    {
      super.b(paramc, paramLong);
      this.successfulCount += paramLong;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */