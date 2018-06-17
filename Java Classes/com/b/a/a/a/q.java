package com.b.a.a.a;

import com.b.a.a.c.b;
import com.b.a.a.g;
import com.b.a.a.i;
import com.b.a.aa;
import com.b.a.aa.a;
import com.b.a.ac;
import com.b.a.ac.a;
import com.b.a.m;
import com.b.a.p;
import com.b.a.y;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.URL;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class q
{
  private final m bJH;
  private final com.b.a.o bJI;
  
  public q(m paramm, com.b.a.o paramo)
  {
    this.bJH = paramm;
    this.bJI = paramo;
  }
  
  /* Error */
  public static Socket a(int paramInt1, int paramInt2, com.b.a.c paramc)
    throws o
  {
    // Byte code:
    //   0: invokestatic 32	com/b/a/a/g:zw	()Lcom/b/a/a/g;
    //   3: astore 4
    //   5: aload_2
    //   6: getfield 38	com/b/a/c:bFT	Ljava/net/Proxy;
    //   9: astore_3
    //   10: aload_2
    //   11: getfield 42	com/b/a/c:bFS	Lcom/b/a/a;
    //   14: astore 5
    //   16: aload_3
    //   17: invokevirtual 48	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   20: getstatic 54	java/net/Proxy$Type:DIRECT	Ljava/net/Proxy$Type;
    //   23: if_acmpeq +13 -> 36
    //   26: aload_3
    //   27: invokevirtual 48	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   30: getstatic 57	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   33: if_acmpne +30 -> 63
    //   36: aload 5
    //   38: getfield 63	com/b/a/a:bFM	Ljavax/net/SocketFactory;
    //   41: invokevirtual 69	javax/net/SocketFactory:createSocket	()Ljava/net/Socket;
    //   44: astore_3
    //   45: aload_3
    //   46: iload_0
    //   47: invokevirtual 75	java/net/Socket:setSoTimeout	(I)V
    //   50: aload 4
    //   52: aload_3
    //   53: aload_2
    //   54: getfield 79	com/b/a/c:bFU	Ljava/net/InetSocketAddress;
    //   57: iload_1
    //   58: invokevirtual 82	com/b/a/a/g:a	(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    //   61: aload_3
    //   62: areturn
    //   63: new 71	java/net/Socket
    //   66: dup
    //   67: aload_3
    //   68: invokespecial 85	java/net/Socket:<init>	(Ljava/net/Proxy;)V
    //   71: astore_3
    //   72: goto -27 -> 45
    //   75: astore_2
    //   76: new 24	com/b/a/a/a/o
    //   79: dup
    //   80: aload_2
    //   81: invokespecial 88	com/b/a/a/a/o:<init>	(Ljava/io/IOException;)V
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramInt1	int
    //   0	85	1	paramInt2	int
    //   0	85	2	paramc	com.b.a.c
    //   9	63	3	localObject	Object
    //   3	48	4	localg	g
    //   14	23	5	locala	com.b.a.a
    // Exception table:
    //   from	to	target	type
    //   5	36	75	java/io/IOException
    //   36	45	75	java/io/IOException
    //   45	61	75	java/io/IOException
    //   63	72	75	java/io/IOException
  }
  
  public final a a(int paramInt1, int paramInt2, int paramInt3, aa paramaa, com.b.a.c paramc, List<p> paramList, boolean paramBoolean)
    throws o
  {
    com.b.a.a locala1 = paramc.bFS;
    com.b.a.a.a locala2 = new com.b.a.a.a(paramList);
    paramList = null;
    Socket localSocket = a(paramInt2, paramInt1, paramc);
    int i;
    if ((paramc.bFS.bFN != null) && (paramc.bFT.type() == Proxy.Type.HTTP))
    {
      i = 1;
      label58:
      if (i == 0) {
        break label529;
      }
    }
    for (;;)
    {
      Object localObject2;
      e locale;
      Object localObject4;
      try
      {
        localObject2 = paramaa.wC().getHost();
        i = i.c(paramaa.wC());
        if (i != i.dD("https")) {
          break label430;
        }
        localObject1 = localObject2;
        localObject1 = new aa.a().g(new URL("https", (String)localObject2, i, "/")).P("Host", (String)localObject1).P("Proxy-Connection", "Keep-Alive");
        localObject2 = paramaa.a("User-Agent");
        if (localObject2 != null) {
          ((aa.a)localObject1).P("User-Agent", (String)localObject2);
        }
        localObject2 = paramaa.a("Proxy-Authorization");
        if (localObject2 != null) {
          ((aa.a)localObject1).P("Proxy-Authorization", (String)localObject2);
        }
        localObject1 = ((aa.a)localObject1).An();
        locale = new e(this.bJI, this.bJH, localSocket);
        locale.aA(paramInt2, paramInt3);
        localObject2 = ((aa)localObject1).wC();
        localObject4 = "CONNECT " + ((URL)localObject2).getHost() + ":" + i.c((URL)localObject2) + " HTTP/1.1";
        locale.a(((aa)localObject1).bMo, (String)localObject4);
        locale.d();
        localObject2 = locale.zz();
        ((ac.a)localObject2).bIK = ((aa)localObject1);
        localObject1 = ((ac.a)localObject2).xb();
        long l2 = j.i((ac)localObject1);
        long l1 = l2;
        if (l2 == -1L) {
          l1 = 0L;
        }
        localObject2 = locale.P(l1);
        i.a((b.s)localObject2, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        ((b.s)localObject2).close();
        switch (((ac)localObject1).c)
        {
        case 200: 
          throw new IOException("Unexpected response code for CONNECT: " + ((ac)localObject1).c);
        }
      }
      catch (IOException paramaa)
      {
        throw new o(paramaa);
      }
      i = 0;
      break label58;
      label430:
      Object localObject1 = (String)localObject2 + ":" + i;
      continue;
      if (locale.bIP.KU().b > 0L)
      {
        throw new IOException("TLS tunnel buffered too many bytes!");
        localObject2 = j.a(paramc.bFS.bFQ, (ac)localObject1, paramc.bFT);
        localObject1 = localObject2;
        if (localObject2 == null) {
          throw new IOException("Failed to authenticate with proxy");
        }
      }
      else
      {
        try
        {
          label529:
          localObject2 = (SSLSocket)locala1.bFN.createSocket(localSocket, locala1.b, locala1.c, true);
        }
        catch (IOException localIOException2)
        {
          for (;;)
          {
            Object localObject5;
            com.b.a.s locals;
            label863:
            label889:
            label909:
            a locala;
            label959:
            label1000:
            Object localObject3 = null;
          }
        }
        try
        {
          localObject5 = locala2.b((SSLSocket)localObject2);
          localObject4 = g.zw();
          locale = null;
        }
        catch (IOException localIOException1)
        {
          try
          {
            if (((p)localObject5).e) {
              ((g)localObject4).a((SSLSocket)localObject2, locala1.b, locala1.bCF);
            }
            ((SSLSocket)localObject2).startHandshake();
            locals = com.b.a.s.a(((SSLSocket)localObject2).getSession());
            localObject1 = locale;
            if (((p)localObject5).e)
            {
              localObject5 = ((g)localObject4).e((SSLSocket)localObject2);
              localObject1 = locale;
              if (localObject5 != null) {
                localObject1 = y.dL((String)localObject5);
              }
            }
            ((g)localObject4).d((SSLSocket)localObject2);
            if (locala1.bFO.verify(locala1.b, ((SSLSocket)localObject2).getSession())) {
              break label909;
            }
            localObject1 = (X509Certificate)localObject2.getSession().getPeerCertificates()[0];
            throw new SSLPeerUnverifiedException("Hostname " + locala1.b + " not verified:\n    certificate: " + com.b.a.j.a((Certificate)localObject1) + "\n    DN: " + ((X509Certificate)localObject1).getSubjectDN().getName() + "\n    subjectAltNames: " + b.b((X509Certificate)localObject1));
          }
          finally
          {
            ((g)localObject4).d((SSLSocket)localObject2);
          }
          localIOException1 = localIOException1;
          if (paramBoolean)
          {
            locala2.d = true;
            if ((!(localIOException1 instanceof ProtocolException)) && (!(localIOException1 instanceof InterruptedIOException)) && ((!(localIOException1 instanceof SSLHandshakeException)) || (!(localIOException1.getCause() instanceof CertificateException))) && (!(localIOException1 instanceof SSLPeerUnverifiedException)) && (((localIOException1 instanceof SSLHandshakeException)) || ((localIOException1 instanceof SSLProtocolException))) && (locala2.c)) {}
            for (i = 1; i != 0; i = 0)
            {
              i = 1;
              i.a((Socket)localObject2);
              i.a(localSocket);
              if (paramList != null) {
                break label959;
              }
              paramList = new o(localIOException1);
              if (i != 0) {
                break label1000;
              }
              throw paramList;
              locala1.bFP.c(locala1.b, locals.b);
              locala = new a(paramc, (SSLSocket)localObject2, localy, locals);
              return locala;
            }
          }
          i = 0;
          break label863;
          localObject2 = paramList.bJA;
          if (o.bID != null) {}
          try
          {
            o.bID.invoke(locala, new Object[] { localObject2 });
            paramList.bJA = locala;
            break label889;
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            for (;;) {}
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            for (;;) {}
          }
        }
      }
    }
  }
  
  public static final class a
  {
    public final com.b.a.c bJJ;
    public final Socket bJK;
    public final y bJL;
    public final com.b.a.s bJM;
    
    public a(com.b.a.c paramc, Socket paramSocket)
    {
      this.bJJ = paramc;
      this.bJK = paramSocket;
      this.bJL = null;
      this.bJM = null;
    }
    
    public a(com.b.a.c paramc, SSLSocket paramSSLSocket, y paramy, com.b.a.s params)
    {
      this.bJJ = paramc;
      this.bJK = paramSSLSocket;
      this.bJL = paramy;
      this.bJM = params;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */