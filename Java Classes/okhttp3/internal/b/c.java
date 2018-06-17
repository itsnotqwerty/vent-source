package okhttp3.internal.b;

import d.s;
import d.t;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import okhttp3.aa;
import okhttp3.h;
import okhttp3.internal.e.g.a;
import okhttp3.internal.e.g.b;
import okhttp3.internal.e.j;
import okhttp3.internal.e.m;
import okhttp3.n;
import okhttp3.o;
import okhttp3.q;
import okhttp3.u;
import okhttp3.w;
import okhttp3.w.a;
import okhttp3.y;
import okhttp3.y.a;

public final class c
  extends g.b
{
  public int allocationLimit = 1;
  public final List<Reference<g>> allocations = new ArrayList();
  private u cWq;
  public o cWs;
  private final h cZd;
  public final aa dab;
  okhttp3.internal.e.g dac;
  d.e dad;
  d.d dae;
  public long idleAtNanos = Long.MAX_VALUE;
  public boolean noNewStreams;
  private Socket rawSocket;
  public Socket socket;
  public int successCount;
  
  public c(h paramh, aa paramaa)
  {
    this.cZd = paramh;
    this.dab = paramaa;
  }
  
  /* Error */
  private void a(b paramb)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 7
    //   9: aload_0
    //   10: getfield 51	okhttp3/internal/b/c:dab	Lokhttp3/aa;
    //   13: getfield 64	okhttp3/aa:cZz	Lokhttp3/a;
    //   16: astore 8
    //   18: aload 8
    //   20: getfield 70	okhttp3/a:sslSocketFactory	Ljavax/net/ssl/SSLSocketFactory;
    //   23: astore 5
    //   25: aload 5
    //   27: aload_0
    //   28: getfield 72	okhttp3/internal/b/c:rawSocket	Ljava/net/Socket;
    //   31: aload 8
    //   33: getfield 76	okhttp3/a:cVX	Lokhttp3/q;
    //   36: getfield 82	okhttp3/q:host	Ljava/lang/String;
    //   39: aload 8
    //   41: getfield 76	okhttp3/a:cVX	Lokhttp3/q;
    //   44: getfield 85	okhttp3/q:port	I
    //   47: iconst_1
    //   48: invokevirtual 91	javax/net/ssl/SSLSocketFactory:createSocket	(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    //   51: checkcast 93	javax/net/ssl/SSLSocket
    //   54: astore 5
    //   56: aload_1
    //   57: getfield 98	okhttp3/internal/b/b:nextModeIndex	I
    //   60: istore_2
    //   61: aload_1
    //   62: getfield 101	okhttp3/internal/b/b:connectionSpecs	Ljava/util/List;
    //   65: invokeinterface 107 1 0
    //   70: istore_3
    //   71: iload_2
    //   72: iload_3
    //   73: if_icmpge +513 -> 586
    //   76: aload_1
    //   77: getfield 101	okhttp3/internal/b/b:connectionSpecs	Ljava/util/List;
    //   80: iload_2
    //   81: invokeinterface 111 2 0
    //   86: checkcast 113	okhttp3/i
    //   89: astore 4
    //   91: aload 4
    //   93: aload 5
    //   95: invokevirtual 117	okhttp3/i:isCompatible	(Ljavax/net/ssl/SSLSocket;)Z
    //   98: ifeq +124 -> 222
    //   101: aload_1
    //   102: iload_2
    //   103: iconst_1
    //   104: iadd
    //   105: putfield 98	okhttp3/internal/b/b:nextModeIndex	I
    //   108: aload 4
    //   110: ifnonnull +119 -> 229
    //   113: new 119	java/net/UnknownServiceException
    //   116: dup
    //   117: new 121	java/lang/StringBuilder
    //   120: dup
    //   121: ldc 123
    //   123: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload_1
    //   127: getfield 129	okhttp3/internal/b/b:isFallback	Z
    //   130: invokevirtual 133	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   133: ldc -121
    //   135: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_1
    //   139: getfield 101	okhttp3/internal/b/b:connectionSpecs	Ljava/util/List;
    //   142: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   145: ldc -113
    //   147: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload 5
    //   152: invokevirtual 147	javax/net/ssl/SSLSocket:getEnabledProtocols	()[Ljava/lang/String;
    //   155: invokestatic 153	java/util/Arrays:toString	([Ljava/lang/Object;)Ljava/lang/String;
    //   158: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokespecial 157	java/net/UnknownServiceException:<init>	(Ljava/lang/String;)V
    //   167: athrow
    //   168: astore 4
    //   170: aload 5
    //   172: astore_1
    //   173: aload 4
    //   175: astore 5
    //   177: aload_1
    //   178: astore 4
    //   180: aload 5
    //   182: invokestatic 163	okhttp3/internal/c:isAndroidGetsocknameError	(Ljava/lang/AssertionError;)Z
    //   185: ifeq +387 -> 572
    //   188: aload_1
    //   189: astore 4
    //   191: new 56	java/io/IOException
    //   194: dup
    //   195: aload 5
    //   197: invokespecial 166	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   200: athrow
    //   201: astore_1
    //   202: aload 4
    //   204: ifnull +11 -> 215
    //   207: invokestatic 172	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
    //   210: aload 4
    //   212: invokevirtual 176	okhttp3/internal/g/f:afterHandshake	(Ljavax/net/ssl/SSLSocket;)V
    //   215: aload 4
    //   217: invokestatic 180	okhttp3/internal/c:closeQuietly	(Ljava/net/Socket;)V
    //   220: aload_1
    //   221: athrow
    //   222: iload_2
    //   223: iconst_1
    //   224: iadd
    //   225: istore_2
    //   226: goto -155 -> 71
    //   229: aload_1
    //   230: aload_1
    //   231: aload 5
    //   233: invokevirtual 183	okhttp3/internal/b/b:isFallbackPossible	(Ljavax/net/ssl/SSLSocket;)Z
    //   236: putfield 185	okhttp3/internal/b/b:isFallbackPossible	Z
    //   239: getstatic 191	okhttp3/internal/a:cZG	Lokhttp3/internal/a;
    //   242: aload 4
    //   244: aload 5
    //   246: aload_1
    //   247: getfield 129	okhttp3/internal/b/b:isFallback	Z
    //   250: invokevirtual 194	okhttp3/internal/a:a	(Lokhttp3/i;Ljavax/net/ssl/SSLSocket;Z)V
    //   253: aload 4
    //   255: getfield 197	okhttp3/i:supportsTlsExtensions	Z
    //   258: ifeq +24 -> 282
    //   261: invokestatic 172	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
    //   264: aload 5
    //   266: aload 8
    //   268: getfield 76	okhttp3/a:cVX	Lokhttp3/q;
    //   271: getfield 82	okhttp3/q:host	Ljava/lang/String;
    //   274: aload 8
    //   276: getfield 200	okhttp3/a:protocols	Ljava/util/List;
    //   279: invokevirtual 204	okhttp3/internal/g/f:configureTlsExtensions	(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    //   282: aload 5
    //   284: invokevirtual 207	javax/net/ssl/SSLSocket:startHandshake	()V
    //   287: aload 5
    //   289: invokevirtual 211	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   292: astore_1
    //   293: ldc -43
    //   295: aload_1
    //   296: invokeinterface 218 1 0
    //   301: invokevirtual 224	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   304: ifne +296 -> 600
    //   307: ldc -30
    //   309: aload_1
    //   310: invokeinterface 229 1 0
    //   315: invokevirtual 224	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   318: ifne +282 -> 600
    //   321: iconst_1
    //   322: istore_2
    //   323: iload_2
    //   324: ifne +13 -> 337
    //   327: new 56	java/io/IOException
    //   330: dup
    //   331: ldc -25
    //   333: invokespecial 232	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   336: athrow
    //   337: aload_1
    //   338: invokestatic 238	okhttp3/o:b	(Ljavax/net/ssl/SSLSession;)Lokhttp3/o;
    //   341: astore 7
    //   343: aload 8
    //   345: getfield 242	okhttp3/a:hostnameVerifier	Ljavax/net/ssl/HostnameVerifier;
    //   348: aload 8
    //   350: getfield 76	okhttp3/a:cVX	Lokhttp3/q;
    //   353: getfield 82	okhttp3/q:host	Ljava/lang/String;
    //   356: aload_1
    //   357: invokeinterface 248 3 0
    //   362: ifne +94 -> 456
    //   365: aload 7
    //   367: getfield 251	okhttp3/o:peerCertificates	Ljava/util/List;
    //   370: iconst_0
    //   371: invokeinterface 111 2 0
    //   376: checkcast 253	java/security/cert/X509Certificate
    //   379: astore_1
    //   380: new 255	javax/net/ssl/SSLPeerUnverifiedException
    //   383: dup
    //   384: new 121	java/lang/StringBuilder
    //   387: dup
    //   388: ldc_w 257
    //   391: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   394: aload 8
    //   396: getfield 76	okhttp3/a:cVX	Lokhttp3/q;
    //   399: getfield 82	okhttp3/q:host	Ljava/lang/String;
    //   402: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: ldc_w 259
    //   408: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: aload_1
    //   412: invokestatic 265	okhttp3/f:pin	(Ljava/security/cert/Certificate;)Ljava/lang/String;
    //   415: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: ldc_w 267
    //   421: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   424: aload_1
    //   425: invokevirtual 271	java/security/cert/X509Certificate:getSubjectDN	()Ljava/security/Principal;
    //   428: invokeinterface 276 1 0
    //   433: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: ldc_w 278
    //   439: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: aload_1
    //   443: invokestatic 284	okhttp3/internal/h/d:allSubjectAltNames	(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    //   446: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   449: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   452: invokespecial 285	javax/net/ssl/SSLPeerUnverifiedException:<init>	(Ljava/lang/String;)V
    //   455: athrow
    //   456: aload 8
    //   458: getfield 289	okhttp3/a:cWa	Lokhttp3/f;
    //   461: aload 8
    //   463: getfield 76	okhttp3/a:cVX	Lokhttp3/q;
    //   466: getfield 82	okhttp3/q:host	Ljava/lang/String;
    //   469: aload 7
    //   471: getfield 251	okhttp3/o:peerCertificates	Ljava/util/List;
    //   474: invokevirtual 293	okhttp3/f:check	(Ljava/lang/String;Ljava/util/List;)V
    //   477: aload 6
    //   479: astore_1
    //   480: aload 4
    //   482: getfield 197	okhttp3/i:supportsTlsExtensions	Z
    //   485: ifeq +12 -> 497
    //   488: invokestatic 172	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
    //   491: aload 5
    //   493: invokevirtual 297	okhttp3/internal/g/f:getSelectedProtocol	(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    //   496: astore_1
    //   497: aload_0
    //   498: aload 5
    //   500: putfield 299	okhttp3/internal/b/c:socket	Ljava/net/Socket;
    //   503: aload_0
    //   504: aload_0
    //   505: getfield 299	okhttp3/internal/b/c:socket	Ljava/net/Socket;
    //   508: invokestatic 305	d/l:j	(Ljava/net/Socket;)Ld/s;
    //   511: invokestatic 308	d/l:b	(Ld/s;)Ld/e;
    //   514: putfield 310	okhttp3/internal/b/c:dad	Ld/e;
    //   517: aload_0
    //   518: aload_0
    //   519: getfield 299	okhttp3/internal/b/c:socket	Ljava/net/Socket;
    //   522: invokestatic 314	d/l:i	(Ljava/net/Socket;)Ld/r;
    //   525: invokestatic 317	d/l:a	(Ld/r;)Ld/d;
    //   528: putfield 319	okhttp3/internal/b/c:dae	Ld/d;
    //   531: aload_0
    //   532: aload 7
    //   534: putfield 321	okhttp3/internal/b/c:cWs	Lokhttp3/o;
    //   537: aload_1
    //   538: ifnull +27 -> 565
    //   541: aload_1
    //   542: invokestatic 327	okhttp3/u:fx	(Ljava/lang/String;)Lokhttp3/u;
    //   545: astore_1
    //   546: aload_0
    //   547: aload_1
    //   548: putfield 329	okhttp3/internal/b/c:cWq	Lokhttp3/u;
    //   551: aload 5
    //   553: ifnull +11 -> 564
    //   556: invokestatic 172	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
    //   559: aload 5
    //   561: invokevirtual 176	okhttp3/internal/g/f:afterHandshake	(Ljavax/net/ssl/SSLSocket;)V
    //   564: return
    //   565: getstatic 332	okhttp3/u:cZf	Lokhttp3/u;
    //   568: astore_1
    //   569: goto -23 -> 546
    //   572: aload_1
    //   573: astore 4
    //   575: aload 5
    //   577: athrow
    //   578: astore 5
    //   580: aload 7
    //   582: astore_1
    //   583: goto -406 -> 177
    //   586: aconst_null
    //   587: astore 4
    //   589: goto -481 -> 108
    //   592: astore_1
    //   593: aload 5
    //   595: astore 4
    //   597: goto -395 -> 202
    //   600: iconst_0
    //   601: istore_2
    //   602: goto -279 -> 323
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	605	0	this	c
    //   0	605	1	paramb	b
    //   60	542	2	i	int
    //   70	4	3	j	int
    //   1	108	4	locali	okhttp3.i
    //   168	6	4	localAssertionError1	AssertionError
    //   178	418	4	localObject1	Object
    //   23	553	5	localObject2	Object
    //   578	16	5	localAssertionError2	AssertionError
    //   4	474	6	localObject3	Object
    //   7	574	7	localo	o
    //   16	446	8	locala	okhttp3.a
    // Exception table:
    //   from	to	target	type
    //   56	71	168	java/lang/AssertionError
    //   76	108	168	java/lang/AssertionError
    //   113	168	168	java/lang/AssertionError
    //   229	282	168	java/lang/AssertionError
    //   282	321	168	java/lang/AssertionError
    //   327	337	168	java/lang/AssertionError
    //   337	456	168	java/lang/AssertionError
    //   456	477	168	java/lang/AssertionError
    //   480	497	168	java/lang/AssertionError
    //   497	537	168	java/lang/AssertionError
    //   541	546	168	java/lang/AssertionError
    //   546	551	168	java/lang/AssertionError
    //   565	569	168	java/lang/AssertionError
    //   25	56	201	finally
    //   180	188	201	finally
    //   191	201	201	finally
    //   575	578	201	finally
    //   25	56	578	java/lang/AssertionError
    //   56	71	592	finally
    //   76	108	592	finally
    //   113	168	592	finally
    //   229	282	592	finally
    //   282	321	592	finally
    //   327	337	592	finally
    //   337	456	592	finally
    //   456	477	592	finally
    //   480	497	592	finally
    //   497	537	592	finally
    //   541	546	592	finally
    //   546	551	592	finally
    //   565	569	592	finally
  }
  
  /* Error */
  private void aU(int paramInt1, int paramInt2)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 51	okhttp3/internal/b/c:dab	Lokhttp3/aa;
    //   4: getfield 343	okhttp3/aa:proxy	Ljava/net/Proxy;
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 51	okhttp3/internal/b/c:dab	Lokhttp3/aa;
    //   12: getfield 64	okhttp3/aa:cZz	Lokhttp3/a;
    //   15: astore 4
    //   17: aload_3
    //   18: invokevirtual 349	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   21: getstatic 355	java/net/Proxy$Type:DIRECT	Ljava/net/Proxy$Type;
    //   24: if_acmpeq +13 -> 37
    //   27: aload_3
    //   28: invokevirtual 349	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   31: getstatic 358	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   34: if_acmpne +75 -> 109
    //   37: aload 4
    //   39: getfield 362	okhttp3/a:socketFactory	Ljavax/net/SocketFactory;
    //   42: invokevirtual 367	javax/net/SocketFactory:createSocket	()Ljava/net/Socket;
    //   45: astore_3
    //   46: aload_0
    //   47: aload_3
    //   48: putfield 72	okhttp3/internal/b/c:rawSocket	Ljava/net/Socket;
    //   51: invokestatic 372	okhttp3/n:Mi	()V
    //   54: aload_0
    //   55: getfield 72	okhttp3/internal/b/c:rawSocket	Ljava/net/Socket;
    //   58: iload_2
    //   59: invokevirtual 378	java/net/Socket:setSoTimeout	(I)V
    //   62: invokestatic 172	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
    //   65: aload_0
    //   66: getfield 72	okhttp3/internal/b/c:rawSocket	Ljava/net/Socket;
    //   69: aload_0
    //   70: getfield 51	okhttp3/internal/b/c:dab	Lokhttp3/aa;
    //   73: getfield 382	okhttp3/aa:inetSocketAddress	Ljava/net/InetSocketAddress;
    //   76: iload_1
    //   77: invokevirtual 386	okhttp3/internal/g/f:connectSocket	(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    //   80: aload_0
    //   81: aload_0
    //   82: getfield 72	okhttp3/internal/b/c:rawSocket	Ljava/net/Socket;
    //   85: invokestatic 305	d/l:j	(Ljava/net/Socket;)Ld/s;
    //   88: invokestatic 308	d/l:b	(Ld/s;)Ld/e;
    //   91: putfield 310	okhttp3/internal/b/c:dad	Ld/e;
    //   94: aload_0
    //   95: aload_0
    //   96: getfield 72	okhttp3/internal/b/c:rawSocket	Ljava/net/Socket;
    //   99: invokestatic 314	d/l:i	(Ljava/net/Socket;)Ld/r;
    //   102: invokestatic 317	d/l:a	(Ld/r;)Ld/d;
    //   105: putfield 319	okhttp3/internal/b/c:dae	Ld/d;
    //   108: return
    //   109: new 374	java/net/Socket
    //   112: dup
    //   113: aload_3
    //   114: invokespecial 389	java/net/Socket:<init>	(Ljava/net/Proxy;)V
    //   117: astore_3
    //   118: goto -72 -> 46
    //   121: astore_3
    //   122: new 337	java/net/ConnectException
    //   125: dup
    //   126: new 121	java/lang/StringBuilder
    //   129: dup
    //   130: ldc_w 391
    //   133: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload_0
    //   137: getfield 51	okhttp3/internal/b/c:dab	Lokhttp3/aa;
    //   140: getfield 382	okhttp3/aa:inetSocketAddress	Ljava/net/InetSocketAddress;
    //   143: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: invokespecial 392	java/net/ConnectException:<init>	(Ljava/lang/String;)V
    //   152: astore 4
    //   154: aload 4
    //   156: aload_3
    //   157: invokevirtual 396	java/net/ConnectException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   160: pop
    //   161: aload 4
    //   163: athrow
    //   164: astore_3
    //   165: ldc_w 398
    //   168: aload_3
    //   169: invokevirtual 401	java/lang/NullPointerException:getMessage	()Ljava/lang/String;
    //   172: invokevirtual 224	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   175: ifeq -67 -> 108
    //   178: new 56	java/io/IOException
    //   181: dup
    //   182: aload_3
    //   183: invokespecial 166	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   186: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	this	c
    //   0	187	1	paramInt1	int
    //   0	187	2	paramInt2	int
    //   7	111	3	localObject1	Object
    //   121	36	3	localConnectException	java.net.ConnectException
    //   164	19	3	localNullPointerException	NullPointerException
    //   15	147	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   62	80	121	java/net/ConnectException
    //   80	108	164	java/lang/NullPointerException
  }
  
  public final void a(okhttp3.internal.e.g paramg)
  {
    synchronized (this.cZd)
    {
      this.allocationLimit = paramg.maxConcurrentStreams();
      return;
    }
  }
  
  public final void a(okhttp3.internal.e.i parami)
    throws IOException
  {
    parami.b(okhttp3.internal.e.b.das);
  }
  
  public final boolean a(okhttp3.a parama, @Nullable aa paramaa)
  {
    if ((this.allocations.size() >= this.allocationLimit) || (this.noNewStreams)) {}
    do
    {
      do
      {
        return false;
      } while (!okhttp3.internal.a.cZG.a(this.dab.cZz, parama));
      if (parama.cVX.host.equals(this.dab.cZz.cVX.host)) {
        return true;
      }
    } while ((this.dac == null) || (paramaa == null) || (paramaa.proxy.type() != Proxy.Type.DIRECT) || (this.dab.proxy.type() != Proxy.Type.DIRECT) || (!this.dab.inetSocketAddress.equals(paramaa.inetSocketAddress)) || (paramaa.cZz.hostnameVerifier != okhttp3.internal.h.d.dbT) || (!c(parama.cVX)));
    try
    {
      parama.cWa.check(parama.cVX.host, this.cWs.peerCertificates);
      return true;
    }
    catch (SSLPeerUnverifiedException parama) {}
    return false;
  }
  
  public final void c(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    if (this.cWq != null) {
      throw new IllegalStateException("already connected");
    }
    ??? = this.dab.cZz.connectionSpecs;
    b localb = new b((List)???);
    if (this.dab.cZz.sslSocketFactory == null)
    {
      if (!((List)???).contains(okhttp3.i.cYL)) {
        throw new e(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
      }
      ??? = this.dab.cZz.cVX.host;
      if (!okhttp3.internal.g.f.Ng().isCleartextTrafficPermitted((String)???)) {
        throw new e(new UnknownServiceException("CLEARTEXT communication to " + (String)??? + " not permitted by network security policy"));
      }
    }
    for (;;)
    {
      try
      {
        if (this.dab.requiresTunnel())
        {
          Object localObject3 = new w.a().b(this.dab.cZz.cVX).Z("Host", okhttp3.internal.c.a(this.dab.cZz.cVX, true)).Z("Proxy-Connection", "Keep-Alive").Z("User-Agent", "okhttp/3.10.0").MH();
          localObject5 = ((w)localObject3).cVX;
          aU(paramInt1, paramInt2);
          localObject6 = "CONNECT " + okhttp3.internal.c.a((q)localObject5, true) + " HTTP/1.1";
          localObject5 = new okhttp3.internal.d.a(null, null, this.dad, this.dae);
          this.dad.MK().d(paramInt2, TimeUnit.MILLISECONDS);
          this.dae.MK().d(paramInt3, TimeUnit.MILLISECONDS);
          ((okhttp3.internal.d.a)localObject5).a(((w)localObject3).cZo, (String)localObject6);
          ((okhttp3.internal.d.a)localObject5).finishRequest();
          localObject6 = ((okhttp3.internal.d.a)localObject5).bz(false);
          ((y.a)localObject6).cZt = ((w)localObject3);
          localObject3 = ((y.a)localObject6).MJ();
          long l2 = okhttp3.internal.c.e.f((y)localObject3);
          long l1 = l2;
          if (l2 == -1L) {
            l1 = 0L;
          }
          localObject5 = ((okhttp3.internal.d.a)localObject5).ay(l1);
          okhttp3.internal.c.a((s)localObject5, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
          ((s)localObject5).close();
          switch (((y)localObject3).code)
          {
          case 200: 
            throw new IOException("Unexpected response code for CONNECT: " + ((y)localObject3).code);
          }
        }
      }
      catch (IOException localIOException)
      {
        Object localObject5;
        Object localObject6;
        okhttp3.internal.c.closeQuietly(this.socket);
        okhttp3.internal.c.closeQuietly(this.rawSocket);
        this.socket = null;
        this.rawSocket = null;
        this.dad = null;
        this.dae = null;
        this.cWs = null;
        this.cWq = null;
        this.dac = null;
        n.Mm();
        Object localObject4;
        if (??? == null)
        {
          ??? = new e(localIOException);
          if (paramBoolean)
          {
            localb.isFallback = true;
            if ((localb.isFallbackPossible) && (!(localIOException instanceof ProtocolException)) && (!(localIOException instanceof InterruptedIOException)) && ((!(localIOException instanceof SSLHandshakeException)) || (!(localIOException.getCause() instanceof CertificateException))) && (!(localIOException instanceof SSLPeerUnverifiedException)) && (((localIOException instanceof SSLHandshakeException)) || ((localIOException instanceof SSLProtocolException))))
            {
              i = 1;
              if (i != 0) {
                continue;
              }
            }
          }
          else
          {
            throw ((Throwable)???);
            if ((!this.dad.Nj().Kr()) || (!this.dae.Nj().Kr()))
            {
              throw new IOException("TLS tunnel buffered too many bytes!");
              this.dab.cZz.cVZ.LV();
              throw new IOException("Failed to authenticate with proxy");
            }
            localObject4 = this.rawSocket;
            if (localObject4 == null)
            {
              if ((!this.dab.requiresTunnel()) || (this.rawSocket != null)) {
                continue;
              }
              throw new e(new ProtocolException("Too many tunnel connections attempted: 21"));
              aU(paramInt1, paramInt2);
            }
            if (this.dab.cZz.sslSocketFactory == null)
            {
              this.cWq = u.cZf;
              this.socket = this.rawSocket;
              n.Ml();
              continue;
            }
            n.Mj();
            a(localb);
            n.Mk();
            if (this.cWq != u.cZh) {
              continue;
            }
            this.socket.setSoTimeout(0);
            localObject4 = new g.a();
            localObject5 = this.socket;
            localObject6 = this.dab.cZz.cVX.host;
            d.e locale = this.dad;
            d.d locald = this.dae;
            ((g.a)localObject4).socket = ((Socket)localObject5);
            ((g.a)localObject4).hostname = ((String)localObject6);
            ((g.a)localObject4).dad = locale;
            ((g.a)localObject4).dae = locald;
            ((g.a)localObject4).daZ = this;
            ((g.a)localObject4).dbk = paramInt4;
            this.dac = new okhttp3.internal.e.g((g.a)localObject4);
            localObject4 = this.dac;
            ((okhttp3.internal.e.g)localObject4).dbf.connectionPreface();
            ((okhttp3.internal.e.g)localObject4).dbf.c(((okhttp3.internal.e.g)localObject4).dbd);
            i = ((okhttp3.internal.e.g)localObject4).dbd.getInitialWindowSize();
            if (i != 65535) {
              ((okhttp3.internal.e.g)localObject4).dbf.windowUpdate(0, i - 65535);
            }
            new Thread(((okhttp3.internal.e.g)localObject4).dbg).start();
            continue;
          }
        }
        else
        {
          e.addSuppressedIfPossible((IOException)localObject4, ((e)???).lastException);
          ((e)???).lastException = ((IOException)localObject4);
          continue;
        }
        int i = 0;
        continue;
        if (this.dac == null) {
          break;
        }
      }
      synchronized (this.cZd)
      {
        this.allocationLimit = this.dac.maxConcurrentStreams();
        return;
      }
      ??? = null;
    }
  }
  
  public final boolean c(q paramq)
  {
    if (paramq.port != this.dab.cZz.cVX.port) {
      return false;
    }
    if (!paramq.host.equals(this.dab.cZz.cVX.host))
    {
      if (this.cWs != null)
      {
        okhttp3.internal.h.d locald = okhttp3.internal.h.d.dbT;
        if (okhttp3.internal.h.d.verify(paramq.host, (X509Certificate)this.cWs.peerCertificates.get(0))) {
          return true;
        }
      }
      return false;
    }
    return true;
  }
  
  public final boolean isHealthy(boolean paramBoolean)
  {
    boolean bool = true;
    if ((this.socket.isClosed()) || (this.socket.isInputShutdown()) || (this.socket.isOutputShutdown())) {
      bool = false;
    }
    do
    {
      do
      {
        return bool;
        if (this.dac == null) {
          break;
        }
      } while (!this.dac.isShutdown());
      return false;
    } while (!paramBoolean);
    try
    {
      int i = this.socket.getSoTimeout();
      try
      {
        this.socket.setSoTimeout(1);
        paramBoolean = this.dad.Kr();
        return !paramBoolean;
      }
      finally
      {
        this.socket.setSoTimeout(i);
      }
      return true;
    }
    catch (IOException localIOException)
    {
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException) {}
  }
  
  public final boolean isMultiplexed()
  {
    return this.dac != null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Connection{").append(this.dab.cZz.cVX.host).append(":").append(this.dab.cZz.cVX.port).append(", proxy=").append(this.dab.proxy).append(" hostAddress=").append(this.dab.inetSocketAddress).append(" cipherSuite=");
    if (this.cWs != null) {}
    for (Object localObject = this.cWs.cYR;; localObject = "none") {
      return localObject + " protocol=" + this.cWq + '}';
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */