package com.b.a;

import com.b.a.a.a.c.a;
import com.b.a.a.a.g.2;
import com.b.a.a.a.g.a;
import com.b.a.a.a.k;
import com.b.a.a.a.l;
import com.b.a.a.a.n;
import com.b.a.a.a.o;
import com.b.a.a.a.p;
import com.b.a.a.a.t;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class h
{
  public volatile boolean a;
  final x bGe;
  aa bGf;
  com.b.a.a.a.g bGg;
  private boolean e;
  
  h(x paramx, aa paramaa)
  {
    this.bGe = paramx.Ah();
    this.bGf = paramaa;
  }
  
  final ac a(aa paramaa, boolean paramBoolean)
    throws IOException
  {
    Object localObject1 = paramaa.bMp;
    Object localObject4;
    long l1;
    int j;
    label105:
    Object localObject5;
    Object localObject6;
    Object localObject7;
    label419:
    label621:
    label627:
    label759:
    label765:
    label777:
    label856:
    label884:
    long l2;
    if (localObject1 != null)
    {
      paramaa = paramaa.Ak();
      localObject4 = ((ab)localObject1).wt();
      if (localObject4 != null) {
        paramaa.P("Content-Type", ((w)localObject4).toString());
      }
      l1 = ((ab)localObject1).a();
      if (l1 != -1L)
      {
        paramaa.P("Content-Length", Long.toString(l1));
        paramaa.dM("Transfer-Encoding");
      }
      for (;;)
      {
        paramaa = paramaa.An();
        this.bGg = new com.b.a.a.a.g(this.bGe, paramaa, false, false, paramBoolean, null, null, null);
        j = 0;
        if (!this.a) {
          break;
        }
        this.bGg.h();
        throw new IOException("Canceled");
        paramaa.P("Transfer-Encoding", "chunked");
        paramaa.dM("Content-Length");
      }
      for (;;)
      {
        try
        {
          localObject5 = this.bGg;
          if (((com.b.a.a.a.g)localObject5).bJq != null) {
            break label1836;
          }
          if (((com.b.a.a.a.g)localObject5).bJi != null) {
            throw new IllegalStateException();
          }
        }
        catch (l paramaa)
        {
          throw paramaa.zH();
          paramaa = ((com.b.a.a.a.g)localObject5).bJj;
          localObject1 = paramaa.Ak();
          if (paramaa.a("Host") == null) {
            ((aa.a)localObject1).P("Host", com.b.a.a.a.g.d(paramaa.wC()));
          }
          if (((((com.b.a.a.a.g)localObject5).bJd == null) || (((com.b.a.a.a.g)localObject5).bJd.bIl != y.bJR)) && (paramaa.a("Connection") == null)) {
            ((aa.a)localObject1).P("Connection", "Keep-Alive");
          }
          if (paramaa.a("Accept-Encoding") == null)
          {
            ((com.b.a.a.a.g)localObject5).brj = true;
            ((aa.a)localObject1).P("Accept-Encoding", "gzip");
          }
          localObject4 = ((com.b.a.a.a.g)localObject5).bJc.bLX;
          if (localObject4 != null)
          {
            localObject6 = com.b.a.a.a.j.d(((aa.a)localObject1).An().bMo);
            com.b.a.a.a.j.a((aa.a)localObject1, ((CookieHandler)localObject4).get(paramaa.Ad(), (Map)localObject6));
          }
          if (paramaa.a("User-Agent") == null) {
            ((aa.a)localObject1).P("User-Agent", "okhttp/${project.version}");
          }
          localObject6 = ((aa.a)localObject1).An();
          paramaa = com.b.a.a.b.bIs.a(((com.b.a.a.a.g)localObject5).bJc);
          if (paramaa != null)
          {
            localObject1 = paramaa.zu();
            localObject7 = new c.a(System.currentTimeMillis(), (aa)localObject6, (ac)localObject1);
            if (((c.a)localObject7).bIM != null) {
              continue;
            }
            paramaa = new com.b.a.a.a.c(((c.a)localObject7).bGf, null, (byte)0);
            localObject4 = paramaa;
            if (paramaa.bIK != null)
            {
              localObject4 = paramaa;
              if (((c.a)localObject7).bGf.Al().m) {
                localObject4 = new com.b.a.a.a.c(null, null, (byte)0);
              }
            }
            ((com.b.a.a.a.g)localObject5).bJq = ((com.b.a.a.a.c)localObject4);
            ((com.b.a.a.a.g)localObject5).bJk = ((com.b.a.a.a.g)localObject5).bJq.bIK;
            ((com.b.a.a.a.g)localObject5).bJl = ((com.b.a.a.a.g)localObject5).bJq.bIL;
            if ((localObject1 != null) && (((com.b.a.a.a.g)localObject5).bJl == null)) {
              com.b.a.a.i.a(((ac)localObject1).bMz);
            }
            if (((com.b.a.a.a.g)localObject5).bJk == null) {
              break label1932;
            }
            if (((com.b.a.a.a.g)localObject5).bJd != null) {
              break label1710;
            }
            if (((com.b.a.a.a.g)localObject5).bJd == null) {
              break label1465;
            }
            throw new IllegalStateException();
          }
        }
        catch (o localo)
        {
          paramaa = this.bGg;
          if ((paramaa.bJf != null) && (paramaa.bJd != null)) {
            paramaa.a(paramaa.bJf, localo.bJA);
          }
          if (((paramaa.bJf != null) || (paramaa.bJd != null)) && ((paramaa.bJf == null) || (paramaa.bJf.a())))
          {
            if (paramaa.bJc.bMi) {
              break label2864;
            }
            i = 0;
            if (i != 0) {
              break label2939;
            }
          }
          paramaa = null;
          if (paramaa == null) {
            break label2997;
          }
          this.bGg = paramaa;
          break;
          Object localObject2 = null;
          continue;
          if ((!((c.a)localObject7).bGf.k()) || (((c.a)localObject7).bIM.bMx != null)) {
            break label777;
          }
          paramaa = new com.b.a.a.a.c(((c.a)localObject7).bGf, null, (byte)0);
          continue;
        }
        catch (IOException localIOException)
        {
          paramaa = this.bGg;
          if ((paramaa.bJf != null) && (paramaa.bJd != null)) {
            paramaa.a(paramaa.bJf, localIOException);
          }
          if (paramaa.bJf != null) {}
        }
        if ((paramaa.bJd != null) && ((paramaa.bJf == null) || (paramaa.bJf.a())))
        {
          if (paramaa.bJc.bMi) {
            break label3003;
          }
          i = 0;
          if (i != 0) {
            break label3034;
          }
        }
        paramaa = null;
        if (paramaa == null) {
          break label3081;
        }
        this.bGg = paramaa;
        break;
        if (!com.b.a.a.a.c.a(((c.a)localObject7).bIM, ((c.a)localObject7).bGf))
        {
          paramaa = new com.b.a.a.a.c(((c.a)localObject7).bGf, null, (byte)0);
        }
        else
        {
          paramaa = ((c.a)localObject7).bGf.Al();
          if ((!paramaa.d) && (!c.a.b(((c.a)localObject7).bGf))) {
            break label856;
          }
          paramaa = new com.b.a.a.a.c(((c.a)localObject7).bGf, null, (byte)0);
        }
      }
      if (((c.a)localObject7).d == null) {
        break label3591;
      }
      l1 = Math.max(0L, ((c.a)localObject7).j - ((c.a)localObject7).d.getTime());
      l2 = l1;
      if (((c.a)localObject7).bEN != -1) {
        l2 = Math.max(l1, TimeUnit.SECONDS.toMillis(((c.a)localObject7).bEN));
      }
      long l5 = l2 + (((c.a)localObject7).j - ((c.a)localObject7).i) + (((c.a)localObject7).brA - ((c.a)localObject7).j);
      localObject4 = ((c.a)localObject7).bIM.Ar();
      if (((g)localObject4).f != -1)
      {
        l1 = TimeUnit.SECONDS.toMillis(((g)localObject4).f);
        label977:
        if (paramaa.f == -1) {
          break label3585;
        }
        l1 = Math.min(l1, TimeUnit.SECONDS.toMillis(paramaa.f));
        label1003:
        if (paramaa.bEN == -1) {
          break label3579;
        }
        l2 = TimeUnit.SECONDS.toMillis(paramaa.bEN);
        label1024:
        long l4 = 0L;
        localObject4 = ((c.a)localObject7).bIM.Ar();
        long l3 = l4;
        if (!((g)localObject4).bGd)
        {
          l3 = l4;
          if (paramaa.bCG != -1) {
            l3 = TimeUnit.SECONDS.toMillis(paramaa.bCG);
          }
        }
        if ((((g)localObject4).d) || (l5 + l2 >= l3 + l1)) {
          break label1343;
        }
        paramaa = ((c.a)localObject7).bIM.Aq();
        if (l2 + l5 >= l1) {
          paramaa.S("Warning", "110 HttpURLConnection \"Response is stale\"");
        }
        if (l5 > 86400000L) {
          if ((((c.a)localObject7).bIM.Ar().f != -1) || (((c.a)localObject7).h != null)) {
            break label3609;
          }
        }
      }
    }
    label1343:
    label1451:
    label1465:
    label1710:
    label1836:
    label1892:
    label1932:
    label2147:
    label2301:
    label2332:
    label2568:
    label2570:
    label2581:
    label2726:
    label2762:
    label2864:
    label2939:
    label2997:
    label3003:
    label3034:
    label3081:
    label3084:
    label3184:
    label3483:
    label3579:
    label3585:
    label3591:
    label3597:
    label3609:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        paramaa.S("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
      }
      paramaa = new com.b.a.a.a.c(null, paramaa.xb(), (byte)0);
      break label419;
      if (((c.a)localObject7).h != null)
      {
        if (((c.a)localObject7).d != null) {}
        for (l1 = ((c.a)localObject7).d.getTime();; l1 = ((c.a)localObject7).j)
        {
          l2 = ((c.a)localObject7).h.getTime() - l1;
          l1 = l2;
          if (l2 > 0L) {
            break;
          }
          l1 = 0L;
          break;
        }
      }
      if ((((c.a)localObject7).bur != null) && (((c.a)localObject7).bIM.bIK.wC().getQuery() == null))
      {
        if (((c.a)localObject7).d != null) {}
        for (l1 = ((c.a)localObject7).d.getTime();; l1 = ((c.a)localObject7).i)
        {
          l1 -= ((c.a)localObject7).bur.getTime();
          if (l1 <= 0L) {
            break label3597;
          }
          l1 /= 10L;
          break;
        }
        paramaa = ((c.a)localObject7).bGf.Ak();
        if (((c.a)localObject7).k != null) {
          paramaa.P("If-None-Match", ((c.a)localObject7).k);
        }
        for (;;)
        {
          paramaa = paramaa.An();
          if (!c.a.b(paramaa)) {
            break label1451;
          }
          paramaa = new com.b.a.a.a.c(paramaa, ((c.a)localObject7).bIM, (byte)0);
          break;
          if (((c.a)localObject7).bur != null) {
            paramaa.P("If-Modified-Since", ((c.a)localObject7).g);
          } else if (((c.a)localObject7).d != null) {
            paramaa.P("If-Modified-Since", ((c.a)localObject7).e);
          }
        }
        paramaa = new com.b.a.a.a.c(paramaa, null, (byte)0);
        break label419;
        if (((com.b.a.a.a.g)localObject5).bJf == null)
        {
          localObject7 = ((com.b.a.a.a.g)localObject5).bJc;
          aa localaa = ((com.b.a.a.a.g)localObject5).bJk;
          String str = localaa.wC().getHost();
          if ((str == null) || (str.length() == 0)) {
            throw new l(new UnknownHostException(localaa.wC().toString()));
          }
          paramaa = null;
          localObject3 = null;
          localObject4 = null;
          if (localaa.k())
          {
            paramaa = ((x)localObject7).bMb;
            localObject3 = ((x)localObject7).bMc;
            localObject4 = ((x)localObject7).bMd;
          }
          ((com.b.a.a.a.g)localObject5).bJe = new a(str, com.b.a.a.i.c(localaa.wC()), ((x)localObject7).bMa, paramaa, (HostnameVerifier)localObject3, (j)localObject4, ((x)localObject7).bMe, ((x)localObject7).bJE, ((x)localObject7).bzR, ((x)localObject7).bzS, ((x)localObject7).bFR);
        }
        try
        {
          paramaa = ((com.b.a.a.a.g)localObject5).bJe;
          localObject3 = ((com.b.a.a.a.g)localObject5).bJk;
          localObject4 = ((com.b.a.a.a.g)localObject5).bJc;
          ((com.b.a.a.a.g)localObject5).bJf = new p(paramaa, ((aa)localObject3).Ad(), (x)localObject4);
          paramaa = ((com.b.a.a.a.g)localObject5).zC();
          com.b.a.a.b.bIs.a(((com.b.a.a.a.g)localObject5).bJc, paramaa, (com.b.a.a.a.g)localObject5, ((com.b.a.a.a.g)localObject5).bJk);
          ((com.b.a.a.a.g)localObject5).bJd = paramaa;
          ((com.b.a.a.a.g)localObject5).bJg = ((com.b.a.a.a.g)localObject5).bJd.bIg;
          ((com.b.a.a.a.g)localObject5).bJi = com.b.a.a.b.bIs.a(((com.b.a.a.a.g)localObject5).bJd, (com.b.a.a.a.g)localObject5);
          if ((!((com.b.a.a.a.g)localObject5).s) || (!((com.b.a.a.a.g)localObject5).c()) || (((com.b.a.a.a.g)localObject5).bJn != null)) {
            break label1836;
          }
          l1 = com.b.a.a.a.j.d((aa)localObject6);
          if (!((com.b.a.a.a.g)localObject5).c) {
            break label1892;
          }
          if (l1 > 2147483647L) {
            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
          }
        }
        catch (IOException paramaa)
        {
          throw new l(paramaa);
        }
        if (l1 != -1L)
        {
          ((com.b.a.a.a.g)localObject5).bJi.c(((com.b.a.a.a.g)localObject5).bJk);
          ((com.b.a.a.a.g)localObject5).bJn = new n((int)l1);
        }
        for (;;)
        {
          localObject4 = this.bGg;
          if (((com.b.a.a.a.g)localObject4).bJm != null) {
            break label2301;
          }
          if ((((com.b.a.a.a.g)localObject4).bJk != null) || (((com.b.a.a.a.g)localObject4).bJl != null)) {
            break;
          }
          throw new IllegalStateException("call sendRequest() first!");
          ((com.b.a.a.a.g)localObject5).bJn = new n();
          continue;
          ((com.b.a.a.a.g)localObject5).bJi.c(((com.b.a.a.a.g)localObject5).bJk);
          ((com.b.a.a.a.g)localObject5).bJn = ((com.b.a.a.a.g)localObject5).bJi.a(((com.b.a.a.a.g)localObject5).bJk, l1);
        }
        if (((com.b.a.a.a.g)localObject5).bJd != null)
        {
          com.b.a.a.b.bIs.a(((com.b.a.a.a.g)localObject5).bJc.bMf, ((com.b.a.a.a.g)localObject5).bJd);
          ((com.b.a.a.a.g)localObject5).bJd = null;
        }
        if (((com.b.a.a.a.g)localObject5).bJl != null)
        {
          paramaa = ((com.b.a.a.a.g)localObject5).bJl.Aq();
          paramaa.bIK = ((com.b.a.a.a.g)localObject5).bJj;
        }
        for (((com.b.a.a.a.g)localObject5).bJm = paramaa.l(com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject5).bJh)).k(com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject5).bJl)).xb();; ((com.b.a.a.a.g)localObject5).bJm = paramaa.xb())
        {
          ((com.b.a.a.a.g)localObject5).bJm = ((com.b.a.a.a.g)localObject5).g(((com.b.a.a.a.g)localObject5).bJm);
          break;
          paramaa = new ac.a();
          paramaa.bIK = ((com.b.a.a.a.g)localObject5).bJj;
          paramaa = paramaa.l(com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject5).bJh));
          paramaa.bMk = y.bMk;
          paramaa.c = 504;
          paramaa.d = "Unsatisfiable Request (only-if-cached)";
          paramaa.bMz = com.b.a.a.a.g.bJb;
        }
        if (((com.b.a.a.a.g)localObject4).bJk != null)
        {
          if (!((com.b.a.a.a.g)localObject4).t) {
            break label2332;
          }
          ((com.b.a.a.a.g)localObject4).bJi.c(((com.b.a.a.a.g)localObject4).bJk);
          paramaa = ((com.b.a.a.a.g)localObject4).zF();
          ((com.b.a.a.a.g)localObject4).a(paramaa.bMy);
          if (((com.b.a.a.a.g)localObject4).bJl == null) {
            break label2581;
          }
          if (!com.b.a.a.a.g.a(((com.b.a.a.a.g)localObject4).bJl, paramaa)) {
            break label2570;
          }
          localObject3 = ((com.b.a.a.a.g)localObject4).bJl.Aq();
          ((ac.a)localObject3).bIK = ((com.b.a.a.a.g)localObject4).bJj;
          ((com.b.a.a.a.g)localObject4).bJm = ((ac.a)localObject3).l(com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject4).bJh)).e(com.b.a.a.a.g.a(((com.b.a.a.a.g)localObject4).bJl.bMy, paramaa.bMy)).k(com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject4).bJl)).j(com.b.a.a.a.g.f(paramaa)).xb();
          paramaa.bMz.close();
          ((com.b.a.a.a.g)localObject4).h();
          com.b.a.a.b.bIs.a(((com.b.a.a.a.g)localObject4).bJc);
          com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject4).bJm);
          ((com.b.a.a.a.g)localObject4).bJm = ((com.b.a.a.a.g)localObject4).g(((com.b.a.a.a.g)localObject4).bJm);
        }
        do
        {
          localObject3 = this.bGg.zD();
          localObject4 = this.bGg;
          if (((com.b.a.a.a.g)localObject4).bJm != null) {
            break label3084;
          }
          throw new IllegalStateException();
          if (!((com.b.a.a.a.g)localObject4).s)
          {
            paramaa = new g.a((com.b.a.a.a.g)localObject4, 0, ((com.b.a.a.a.g)localObject4).bJk).a(((com.b.a.a.a.g)localObject4).bJk);
            break label2147;
          }
          if ((((com.b.a.a.a.g)localObject4).bJo != null) && (((com.b.a.a.a.g)localObject4).bJo.KU().b > 0L)) {
            ((com.b.a.a.a.g)localObject4).bJo.KW();
          }
          if (((com.b.a.a.a.g)localObject4).b == -1L)
          {
            if ((com.b.a.a.a.j.d(((com.b.a.a.a.g)localObject4).bJk) == -1L) && ((((com.b.a.a.a.g)localObject4).bJn instanceof n)))
            {
              l1 = ((n)((com.b.a.a.a.g)localObject4).bJn).bJz.b;
              ((com.b.a.a.a.g)localObject4).bJk = ((com.b.a.a.a.g)localObject4).bJk.Ak().P("Content-Length", Long.toString(l1)).An();
            }
            ((com.b.a.a.a.g)localObject4).bJi.c(((com.b.a.a.a.g)localObject4).bJk);
          }
          if (((com.b.a.a.a.g)localObject4).bJn == null) {
            break;
          }
          if (((com.b.a.a.a.g)localObject4).bJo != null) {
            ((com.b.a.a.a.g)localObject4).bJo.close();
          }
          for (;;)
          {
            if (!(((com.b.a.a.a.g)localObject4).bJn instanceof n)) {
              break label2568;
            }
            ((com.b.a.a.a.g)localObject4).bJi.a((n)((com.b.a.a.a.g)localObject4).bJn);
            break;
            ((com.b.a.a.a.g)localObject4).bJn.close();
          }
          break;
          com.b.a.a.i.a(((com.b.a.a.a.g)localObject4).bJl.bMz);
          localObject3 = paramaa.Aq();
          ((ac.a)localObject3).bIK = ((com.b.a.a.a.g)localObject4).bJj;
          ((com.b.a.a.a.g)localObject4).bJm = ((ac.a)localObject3).l(com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject4).bJh)).k(com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject4).bJl)).j(com.b.a.a.a.g.f(paramaa)).xb();
        } while (!com.b.a.a.a.g.a(((com.b.a.a.a.g)localObject4).bJm));
        paramaa = com.b.a.a.b.bIs.a(((com.b.a.a.a.g)localObject4).bJc);
        if (paramaa != null)
        {
          if (com.b.a.a.a.c.a(((com.b.a.a.a.g)localObject4).bJm, ((com.b.a.a.a.g)localObject4).bJk)) {
            break label2762;
          }
          paramaa = ((com.b.a.a.a.g)localObject4).bJk.b;
          if ((!paramaa.equals("POST")) && (!paramaa.equals("PATCH")) && (!paramaa.equals("PUT"))) {
            paramaa.equals("DELETE");
          }
        }
        localObject5 = ((com.b.a.a.a.g)localObject4).bJp;
        Object localObject3 = ((com.b.a.a.a.g)localObject4).bJm;
        if (localObject5 == null) {
          paramaa = (aa)localObject3;
        }
        for (;;)
        {
          ((com.b.a.a.a.g)localObject4).bJm = ((com.b.a.a.a.g)localObject4).g(paramaa);
          break;
          com.b.a.a.a.g.f(((com.b.a.a.a.g)localObject4).bJm);
          ((com.b.a.a.a.g)localObject4).bJp = paramaa.zv();
          break label2726;
          localObject6 = ((com.b.a.a.a.b)localObject5).zy();
          paramaa = (aa)localObject3;
          if (localObject6 != null)
          {
            paramaa = new g.2((com.b.a.a.a.g)localObject4, ((ac)localObject3).bMz.zp(), (com.b.a.a.a.b)localObject5, b.m.b((b.r)localObject6));
            localObject5 = ((ac)localObject3).Aq();
            ((ac.a)localObject5).bMz = new k(((ac)localObject3).bMy, b.m.b(paramaa));
            paramaa = ((ac.a)localObject5).xb();
          }
        }
        localObject4 = ((o)localObject3).bJA;
        if ((localObject4 instanceof ProtocolException))
        {
          i = 0;
          break label621;
        }
        if ((localObject4 instanceof InterruptedIOException))
        {
          i = 0;
          break label621;
        }
        if (((localObject4 instanceof SSLHandshakeException)) && ((((IOException)localObject4).getCause() instanceof CertificateException)))
        {
          i = 0;
          break label621;
        }
        if ((localObject4 instanceof SSLPeerUnverifiedException))
        {
          i = 0;
          break label621;
        }
        i = 1;
        break label621;
        localObject4 = paramaa.zE();
        paramaa = new com.b.a.a.a.g(paramaa.bJc, paramaa.bJj, paramaa.bqW, paramaa.c, paramaa.s, paramaa.t, (m)localObject4, paramaa.bJf, (n)paramaa.bJn, paramaa.bJh);
        break label627;
        throw ((o)localObject3).bJA;
        if ((localObject3 instanceof ProtocolException))
        {
          i = 0;
          break label759;
        }
        if ((localObject3 instanceof InterruptedIOException))
        {
          i = 0;
          break label759;
        }
        i = 1;
        break label759;
        localObject4 = paramaa.zE();
        paramaa = new com.b.a.a.a.g(paramaa.bJc, paramaa.bJj, paramaa.c, paramaa.s, paramaa.t, (m)localObject4, paramaa.bJf, paramaa.bJh);
        break label765;
        throw ((Throwable)localObject3);
        if (((com.b.a.a.a.g)localObject4).bJg != null)
        {
          paramaa = ((com.b.a.a.a.g)localObject4).bJg.bFT;
          switch (((com.b.a.a.a.g)localObject4).bJm.c)
          {
          default: 
            paramaa = null;
          }
        }
        for (;;)
        {
          if (paramaa != null) {
            break label3483;
          }
          if (!paramBoolean) {
            this.bGg.h();
          }
          return (ac)localObject3;
          paramaa = ((com.b.a.a.a.g)localObject4).bJc.bJE;
          break;
          if (paramaa.type() != Proxy.Type.HTTP) {
            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
          }
          paramaa = com.b.a.a.a.j.a(((com.b.a.a.a.g)localObject4).bJc.bMe, ((com.b.a.a.a.g)localObject4).bJm, paramaa);
          continue;
          if (((!((com.b.a.a.a.g)localObject4).bJj.b.equals("GET")) && (!((com.b.a.a.a.g)localObject4).bJj.b.equals("HEAD"))) || (!((com.b.a.a.a.g)localObject4).bJc.bMh)) {
            break label3184;
          }
          paramaa = ((com.b.a.a.a.g)localObject4).bJm.a("Location");
          if (paramaa == null) {
            break label3184;
          }
          paramaa = new URL(((com.b.a.a.a.g)localObject4).bJj.wC(), paramaa);
          if (((!paramaa.getProtocol().equals("https")) && (!paramaa.getProtocol().equals("http"))) || ((!paramaa.getProtocol().equals(((com.b.a.a.a.g)localObject4).bJj.wC().getProtocol())) && (!((com.b.a.a.a.g)localObject4).bJc.v))) {
            break label3184;
          }
          localObject5 = ((com.b.a.a.a.g)localObject4).bJj.Ak();
          if (com.b.a.a.a.h.dF(((com.b.a.a.a.g)localObject4).bJj.b))
          {
            ((aa.a)localObject5).a("GET", null);
            ((aa.a)localObject5).dM("Transfer-Encoding");
            ((aa.a)localObject5).dM("Content-Length");
            ((aa.a)localObject5).dM("Content-Type");
          }
          if (!((com.b.a.a.a.g)localObject4).e(paramaa)) {
            ((aa.a)localObject5).dM("Authorization");
          }
          paramaa = ((aa.a)localObject5).g(paramaa).An();
        }
        j += 1;
        if (j > 20) {
          throw new ProtocolException("Too many follow-up requests: " + j);
        }
        if (!this.bGg.e(paramaa.wC())) {
          this.bGg.h();
        }
        localObject4 = this.bGg.zE();
        this.bGg = new com.b.a.a.a.g(this.bGe, paramaa, false, false, paramBoolean, (m)localObject4, null, (ac)localObject3);
        break label105;
        l2 = 0L;
        break label1024;
        break label1003;
        break;
        l1 = 0L;
        break label884;
        l1 = 0L;
        break label977;
      }
      l1 = 0L;
      break label977;
    }
  }
  
  final ac aL(boolean paramBoolean)
    throws IOException
  {
    return new a(0, this.bGf, paramBoolean).a(this.bGf);
  }
  
  public final void b(i parami)
  {
    try
    {
      if (this.e) {
        throw new IllegalStateException("Already Executed");
      }
    }
    finally {}
    this.e = true;
    this.bGe.bLW.a(new b(parami, (byte)0));
  }
  
  public final void c()
  {
    this.a = true;
    if (this.bGg != null) {
      this.bGg.i();
    }
  }
  
  final String e()
  {
    if (this.a) {}
    for (String str1 = "canceled call";; str1 = "call") {
      try
      {
        String str2 = new URL(this.bGf.wC(), "/...").toString();
        str2 = str1 + " to " + str2;
        return str2;
      }
      catch (MalformedURLException localMalformedURLException) {}
    }
    return str1;
  }
  
  public final ac xb()
    throws IOException
  {
    try
    {
      if (this.e) {
        throw new IllegalStateException("Already Executed");
      }
    }
    finally {}
    this.e = true;
    try
    {
      this.bGe.bLW.a(this);
      ac localac1 = aL(false);
      if (localac1 == null) {
        throw new IOException("Canceled");
      }
    }
    finally
    {
      this.bGe.bLW.b(this);
    }
    this.bGe.bLW.b(this);
    return localac2;
  }
  
  final class a
    implements v.a
  {
    private final int b;
    private final aa bGh;
    private final boolean d;
    
    a(int paramInt, aa paramaa, boolean paramBoolean)
    {
      this.b = paramInt;
      this.bGh = paramaa;
      this.d = paramBoolean;
    }
    
    public final ac a(aa paramaa)
      throws IOException
    {
      if (this.b < h.this.bGe.bCF.size())
      {
        new a(h.this, this.b + 1, paramaa, this.d);
        return ((v)h.this.bGe.bCF.get(this.b)).Ae();
      }
      return h.this.a(paramaa, this.d);
    }
  }
  
  final class b
    extends com.b.a.a.d
  {
    private final i bGj;
    private final boolean d;
    
    private b(i parami)
    {
      super(new Object[] { h.this.bGf.bMn.toString() });
      this.bGj = parami;
      this.d = false;
    }
    
    final String a()
    {
      return h.this.bGf.wC().getHost();
    }
    
    /* Error */
    protected final void e()
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_1
      //   2: aload_0
      //   3: getfield 17	com/b/a/h$b:bGi	Lcom/b/a/h;
      //   6: aload_0
      //   7: getfield 44	com/b/a/h$b:d	Z
      //   10: invokevirtual 66	com/b/a/h:aL	(Z)Lcom/b/a/ac;
      //   13: astore_3
      //   14: aload_0
      //   15: getfield 17	com/b/a/h$b:bGi	Lcom/b/a/h;
      //   18: getfield 68	com/b/a/h:a	Z
      //   21: istore_2
      //   22: iload_2
      //   23: ifeq +36 -> 59
      //   26: aload_0
      //   27: getfield 42	com/b/a/h$b:bGj	Lcom/b/a/i;
      //   30: new 62	java/io/IOException
      //   33: dup
      //   34: ldc 70
      //   36: invokespecial 73	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   39: invokeinterface 78 2 0
      //   44: aload_0
      //   45: getfield 17	com/b/a/h$b:bGi	Lcom/b/a/h;
      //   48: getfield 82	com/b/a/h:bGe	Lcom/b/a/x;
      //   51: getfield 88	com/b/a/x:bLW	Lcom/b/a/r;
      //   54: aload_0
      //   55: invokevirtual 93	com/b/a/r:b	(Lcom/b/a/h$b;)V
      //   58: return
      //   59: aload_0
      //   60: getfield 42	com/b/a/h$b:bGj	Lcom/b/a/i;
      //   63: aload_3
      //   64: invokeinterface 96 2 0
      //   69: goto -25 -> 44
      //   72: astore_3
      //   73: iload_1
      //   74: ifeq +50 -> 124
      //   77: getstatic 102	com/b/a/a/b:bIr	Ljava/util/logging/Logger;
      //   80: getstatic 108	java/util/logging/Level:INFO	Ljava/util/logging/Level;
      //   83: new 110	java/lang/StringBuilder
      //   86: dup
      //   87: ldc 112
      //   89: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   92: aload_0
      //   93: getfield 17	com/b/a/h$b:bGi	Lcom/b/a/h;
      //   96: invokevirtual 115	com/b/a/h:e	()Ljava/lang/String;
      //   99: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   102: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   105: aload_3
      //   106: invokevirtual 126	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   109: aload_0
      //   110: getfield 17	com/b/a/h$b:bGi	Lcom/b/a/h;
      //   113: getfield 82	com/b/a/h:bGe	Lcom/b/a/x;
      //   116: getfield 88	com/b/a/x:bLW	Lcom/b/a/r;
      //   119: aload_0
      //   120: invokevirtual 93	com/b/a/r:b	(Lcom/b/a/h$b;)V
      //   123: return
      //   124: aload_0
      //   125: getfield 42	com/b/a/h$b:bGj	Lcom/b/a/i;
      //   128: astore 4
      //   130: aload_0
      //   131: getfield 17	com/b/a/h$b:bGi	Lcom/b/a/h;
      //   134: getfield 130	com/b/a/h:bGg	Lcom/b/a/a/a/g;
      //   137: getfield 135	com/b/a/a/a/g:bJj	Lcom/b/a/aa;
      //   140: astore 5
      //   142: aload 4
      //   144: aload_3
      //   145: invokeinterface 78 2 0
      //   150: goto -41 -> 109
      //   153: astore_3
      //   154: aload_0
      //   155: getfield 17	com/b/a/h$b:bGi	Lcom/b/a/h;
      //   158: getfield 82	com/b/a/h:bGe	Lcom/b/a/x;
      //   161: getfield 88	com/b/a/x:bLW	Lcom/b/a/r;
      //   164: aload_0
      //   165: invokevirtual 93	com/b/a/r:b	(Lcom/b/a/h$b;)V
      //   168: aload_3
      //   169: athrow
      //   170: astore_3
      //   171: iconst_0
      //   172: istore_1
      //   173: goto -100 -> 73
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	176	0	this	b
      //   1	172	1	i	int
      //   21	2	2	bool	boolean
      //   13	51	3	localac	ac
      //   72	73	3	localIOException1	IOException
      //   153	16	3	localObject	Object
      //   170	1	3	localIOException2	IOException
      //   128	15	4	locali	i
      //   140	1	5	localaa	aa
      // Exception table:
      //   from	to	target	type
      //   26	44	72	java/io/IOException
      //   59	69	72	java/io/IOException
      //   2	22	153	finally
      //   26	44	153	finally
      //   59	69	153	finally
      //   77	109	153	finally
      //   124	150	153	finally
      //   2	22	170	java/io/IOException
    }
    
    final Object zr()
    {
      return h.this.bGf.bMq;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */