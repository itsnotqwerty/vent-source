package okhttp3.internal.a;

import d.l;
import d.s;
import d.t;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.c.h;
import okhttp3.p;
import okhttp3.p.a;
import okhttp3.q;
import okhttp3.r.a;
import okhttp3.u;
import okhttp3.w;
import okhttp3.w.a;
import okhttp3.y;
import okhttp3.y.a;
import okhttp3.z;

public final class a
  implements okhttp3.r
{
  final f cZO;
  
  public a(f paramf)
  {
    this.cZO = paramf;
  }
  
  private static p a(p paramp1, p paramp2)
  {
    int j = 0;
    p.a locala = new p.a();
    int k = paramp1.namesAndValues.length / 2;
    int i = 0;
    while (i < k)
    {
      String str1 = paramp1.name(i);
      String str2 = paramp1.value(i);
      if (((!"Warning".equalsIgnoreCase(str1)) || (!str2.startsWith("1"))) && ((fB(str1)) || (!isEndToEnd(str1)) || (paramp2.get(str1) == null))) {
        okhttp3.internal.a.cZG.a(locala, str1, str2);
      }
      i += 1;
    }
    k = paramp2.namesAndValues.length / 2;
    i = j;
    while (i < k)
    {
      paramp1 = paramp2.name(i);
      if ((!fB(paramp1)) && (isEndToEnd(paramp1))) {
        okhttp3.internal.a.cZG.a(locala, paramp1, paramp2.value(i));
      }
      i += 1;
    }
    return locala.MB();
  }
  
  private static y d(y paramy)
  {
    y localy = paramy;
    if (paramy != null)
    {
      localy = paramy;
      if (paramy.cZu != null)
      {
        paramy = paramy.MI();
        paramy.cZu = null;
        localy = paramy.MJ();
      }
    }
    return localy;
  }
  
  private static boolean fB(String paramString)
  {
    return ("Content-Length".equalsIgnoreCase(paramString)) || ("Content-Encoding".equalsIgnoreCase(paramString)) || ("Content-Type".equalsIgnoreCase(paramString));
  }
  
  private static boolean isEndToEnd(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }
  
  public final y a(r.a parama)
    throws IOException
  {
    Object localObject3;
    Object localObject4;
    Object localObject1;
    label67:
    final Object localObject2;
    if (this.cZO != null)
    {
      localObject3 = this.cZO.a(parama.MD());
      localObject4 = new c.a(System.currentTimeMillis(), parama.MD(), (y)localObject3);
      if (((c.a)localObject4).cZw != null) {
        break label249;
      }
      localObject1 = new c(((c.a)localObject4).cZt, null);
      localObject2 = localObject1;
      if (((c)localObject1).cZT != null)
      {
        localObject2 = localObject1;
        if (((c.a)localObject4).cZt.MG().onlyIfCached) {
          localObject2 = new c(null, null);
        }
      }
      localObject4 = ((c)localObject2).cZT;
      localObject1 = ((c)localObject2).cZw;
      if (this.cZO != null) {
        this.cZO.a((c)localObject2);
      }
      if ((localObject3 != null) && (localObject1 == null)) {
        okhttp3.internal.c.closeQuietly(((y)localObject3).cZu);
      }
      if ((localObject4 != null) || (localObject1 != null)) {
        break label1109;
      }
      localObject1 = new y.a();
      ((y.a)localObject1).cZt = parama.MD();
      ((y.a)localObject1).cWq = u.cZf;
      ((y.a)localObject1).code = 504;
      ((y.a)localObject1).message = "Unsatisfiable Request (only-if-cached)";
      ((y.a)localObject1).cZu = okhttp3.internal.c.cZH;
      ((y.a)localObject1).sentRequestAtMillis = -1L;
      ((y.a)localObject1).receivedResponseAtMillis = System.currentTimeMillis();
      parama = ((y.a)localObject1).MJ();
    }
    label249:
    label395:
    label400:
    label463:
    label553:
    label773:
    label866:
    label943:
    label952:
    label957:
    label962:
    label967:
    label1091:
    label1109:
    label1290:
    label1454:
    do
    {
      do
      {
        do
        {
          do
          {
            return parama;
            localObject3 = null;
            break;
            if ((((c.a)localObject4).cZt.cVX.isHttps()) && (((c.a)localObject4).cZw.cWs == null))
            {
              localObject1 = new c(((c.a)localObject4).cZt, null);
              break label67;
            }
            if (!c.a(((c.a)localObject4).cZw, ((c.a)localObject4).cZt))
            {
              localObject1 = new c(((c.a)localObject4).cZt, null);
              break label67;
            }
            localObject2 = ((c.a)localObject4).cZt.MG();
            if (!((okhttp3.d)localObject2).noCache)
            {
              localObject1 = ((c.a)localObject4).cZt;
              if ((((w)localObject1).header("If-Modified-Since") == null) && (((w)localObject1).header("If-None-Match") == null)) {
                break label395;
              }
            }
            for (int i = 1;; i = 0)
            {
              if (i == 0) {
                break label400;
              }
              localObject1 = new c(((c.a)localObject4).cZt, null);
              break;
            }
            Object localObject5 = ((c.a)localObject4).cZw.MG();
            if (((okhttp3.d)localObject5).immutable)
            {
              localObject1 = new c(null, ((c.a)localObject4).cZw);
              break label67;
            }
            long l2;
            if (((c.a)localObject4).servedDate != null)
            {
              l1 = Math.max(0L, ((c.a)localObject4).receivedResponseMillis - ((c.a)localObject4).servedDate.getTime());
              l2 = l1;
              if (((c.a)localObject4).ageSeconds != -1) {
                l2 = Math.max(l1, TimeUnit.SECONDS.toMillis(((c.a)localObject4).ageSeconds));
              }
              long l5 = l2 + (((c.a)localObject4).receivedResponseMillis - ((c.a)localObject4).sentRequestMillis) + (((c.a)localObject4).nowMillis - ((c.a)localObject4).receivedResponseMillis);
              localObject1 = ((c.a)localObject4).cZw.MG();
              if (((okhttp3.d)localObject1).maxAgeSeconds == -1) {
                break label773;
              }
              l1 = TimeUnit.SECONDS.toMillis(((okhttp3.d)localObject1).maxAgeSeconds);
              l2 = l1;
              if (((okhttp3.d)localObject2).maxAgeSeconds != -1) {
                l2 = Math.min(l1, TimeUnit.SECONDS.toMillis(((okhttp3.d)localObject2).maxAgeSeconds));
              }
              l1 = 0L;
              if (((okhttp3.d)localObject2).minFreshSeconds != -1) {
                l1 = TimeUnit.SECONDS.toMillis(((okhttp3.d)localObject2).minFreshSeconds);
              }
              long l4 = 0L;
              long l3 = l4;
              if (!((okhttp3.d)localObject5).mustRevalidate)
              {
                l3 = l4;
                if (((okhttp3.d)localObject2).maxStaleSeconds != -1) {
                  l3 = TimeUnit.SECONDS.toMillis(((okhttp3.d)localObject2).maxStaleSeconds);
                }
              }
              if ((((okhttp3.d)localObject5).noCache) || (l5 + l1 >= l3 + l2)) {
                break label967;
              }
              localObject1 = ((c.a)localObject4).cZw.MI();
              if (l1 + l5 >= l2) {
                ((y.a)localObject1).aa("Warning", "110 HttpURLConnection \"Response is stale\"");
              }
              if (l5 > 86400000L) {
                if ((((c.a)localObject4).cZw.MG().maxAgeSeconds != -1) || (((c.a)localObject4).expires != null)) {
                  break label962;
                }
              }
            }
            for (i = 1;; i = 0)
            {
              if (i != 0) {
                ((y.a)localObject1).aa("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
              }
              localObject1 = new c(null, ((y.a)localObject1).MJ());
              break;
              l1 = 0L;
              break label463;
              if (((c.a)localObject4).expires != null)
              {
                if (((c.a)localObject4).servedDate != null) {}
                for (l1 = ((c.a)localObject4).servedDate.getTime();; l1 = ((c.a)localObject4).receivedResponseMillis)
                {
                  l2 = ((c.a)localObject4).expires.getTime() - l1;
                  l1 = l2;
                  if (l2 > 0L) {
                    break;
                  }
                  l1 = 0L;
                  break;
                }
              }
              if (((c.a)localObject4).lastModified != null)
              {
                localObject1 = ((c.a)localObject4).cZw.cZt.cVX;
                if (((q)localObject1).queryNamesAndValues == null)
                {
                  localObject1 = null;
                  if (localObject1 != null) {
                    break label957;
                  }
                  if (((c.a)localObject4).servedDate == null) {
                    break label943;
                  }
                }
                for (l1 = ((c.a)localObject4).servedDate.getTime();; l1 = ((c.a)localObject4).sentRequestMillis)
                {
                  l1 -= ((c.a)localObject4).lastModified.getTime();
                  if (l1 <= 0L) {
                    break label952;
                  }
                  l1 /= 10L;
                  break;
                  StringBuilder localStringBuilder = new StringBuilder();
                  q.namesAndValuesToQueryString(localStringBuilder, ((q)localObject1).queryNamesAndValues);
                  localObject1 = localStringBuilder.toString();
                  break label866;
                }
                l1 = 0L;
                break label553;
              }
              l1 = 0L;
              break label553;
            }
            if (((c.a)localObject4).etag != null)
            {
              localObject2 = "If-None-Match";
              localObject1 = ((c.a)localObject4).etag;
            }
            for (;;)
            {
              localObject5 = ((c.a)localObject4).cZt.cZo.MA();
              okhttp3.internal.a.cZG.a((p.a)localObject5, (String)localObject2, (String)localObject1);
              localObject1 = new c(((c.a)localObject4).cZt.MF().b(((p.a)localObject5).MB()).MH(), ((c.a)localObject4).cZw);
              break;
              if (((c.a)localObject4).lastModified != null)
              {
                localObject2 = "If-Modified-Since";
                localObject1 = ((c.a)localObject4).lastModifiedString;
              }
              else
              {
                if (((c.a)localObject4).servedDate == null) {
                  break label1091;
                }
                localObject2 = "If-Modified-Since";
                localObject1 = ((c.a)localObject4).servedDateString;
              }
            }
            localObject1 = new c(((c.a)localObject4).cZt, null);
            break label67;
            if (localObject4 == null) {
              return ((y)localObject1).MI().c(d((y)localObject1)).MJ();
            }
            try
            {
              parama = parama.c((w)localObject4);
              if ((parama == null) && (localObject3 != null)) {
                okhttp3.internal.c.closeQuietly(((y)localObject3).cZu);
              }
              if (localObject1 == null) {
                break label1290;
              }
              if (parama.code == 304)
              {
                localObject2 = ((y)localObject1).MI().c(a(((y)localObject1).cZo, parama.cZo));
                ((y.a)localObject2).sentRequestAtMillis = parama.sentRequestAtMillis;
                ((y.a)localObject2).receivedResponseAtMillis = parama.receivedResponseAtMillis;
                localObject2 = ((y.a)localObject2).c(d((y)localObject1)).b(d(parama)).MJ();
                parama.cZu.close();
                this.cZO.trackConditionalCacheHit();
                this.cZO.a((y)localObject1, (y)localObject2);
                return (y)localObject2;
              }
            }
            finally
            {
              if (localObject3 != null) {
                okhttp3.internal.c.closeQuietly(((y)localObject3).cZu);
              }
            }
            okhttp3.internal.c.closeQuietly(((y)localObject1).cZu);
            localObject1 = parama.MI().c(d((y)localObject1)).b(d(parama)).MJ();
            parama = (r.a)localObject1;
          } while (this.cZO == null);
          if ((!okhttp3.internal.c.e.i((y)localObject1)) || (!c.a((y)localObject1, (w)localObject4))) {
            break label1454;
          }
          localObject2 = this.cZO.a((y)localObject1);
          parama = (r.a)localObject1;
        } while (localObject2 == null);
        localObject3 = ((b)localObject2).LW();
        parama = (r.a)localObject1;
      } while (localObject3 == null);
      parama = new s()
      {
        boolean cacheRequestClosed;
        
        public final t MK()
        {
          return this.cZP.MK();
        }
        
        public final long a(d.c paramAnonymousc, long paramAnonymousLong)
          throws IOException
        {
          try
          {
            paramAnonymousLong = this.cZP.a(paramAnonymousc, paramAnonymousLong);
            if (paramAnonymousLong == -1L)
            {
              if (!this.cacheRequestClosed)
              {
                this.cacheRequestClosed = true;
                this.cZR.close();
              }
              return -1L;
            }
          }
          catch (IOException paramAnonymousc)
          {
            if (!this.cacheRequestClosed)
            {
              this.cacheRequestClosed = true;
              localObject2.abort();
            }
            throw paramAnonymousc;
          }
          paramAnonymousc.a(this.cZR.Nj(), paramAnonymousc.size - paramAnonymousLong, paramAnonymousLong);
          this.cZR.Nk();
          return paramAnonymousLong;
        }
        
        public final void close()
          throws IOException
        {
          if ((!this.cacheRequestClosed) && (!okhttp3.internal.c.a(this, TimeUnit.MILLISECONDS)))
          {
            this.cacheRequestClosed = true;
            localObject2.abort();
          }
          this.cZP.close();
        }
      };
      localObject2 = ((y)localObject1).header("Content-Type");
      long l1 = ((y)localObject1).cZu.contentLength();
      localObject1 = ((y)localObject1).MI();
      ((y.a)localObject1).cZu = new h((String)localObject2, l1, l.b(parama));
      return ((y.a)localObject1).MJ();
      parama = (r.a)localObject1;
    } while (!okhttp3.internal.c.f.invalidatesCache(((w)localObject4).method));
    try
    {
      this.cZO.b((w)localObject4);
      return (y)localObject1;
    }
    catch (IOException parama) {}
    return (y)localObject1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */