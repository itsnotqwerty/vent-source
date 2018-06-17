package okhttp3.internal.c;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.a;
import okhttp3.internal.b.f.a;
import okhttp3.internal.b.g;
import okhttp3.q;
import okhttp3.r;
import okhttp3.t;
import okhttp3.w;
import okhttp3.y;

public final class j
  implements r
{
  public Object callStackTrace;
  public volatile boolean canceled;
  private final t cgQ;
  private volatile g dak;
  private final boolean forWebSocket;
  
  public j(t paramt, boolean paramBoolean)
  {
    this.cgQ = paramt;
    this.forWebSocket = paramBoolean;
  }
  
  private static int a(y paramy, int paramInt)
  {
    paramy = paramy.header("Retry-After", null);
    if (paramy == null) {
      return paramInt;
    }
    if (paramy.matches("\\d+")) {
      return Integer.valueOf(paramy).intValue();
    }
    return Integer.MAX_VALUE;
  }
  
  private boolean a(IOException paramIOException, g paramg, boolean paramBoolean, w paramw)
  {
    paramg.streamFailed(paramIOException);
    if (!this.cgQ.retryOnConnectionFailure) {}
    label42:
    label151:
    label155:
    label157:
    label161:
    for (;;)
    {
      return false;
      if ((!paramBoolean) || (!(paramw.cZp instanceof l)))
      {
        if ((paramIOException instanceof ProtocolException))
        {
          i = 0;
          if (i == 0) {
            break label155;
          }
          if ((paramg.dab == null) && ((paramg.dag == null) || (!paramg.dag.hasNext())) && (!paramg.dah.hasNext())) {
            break label157;
          }
        }
        for (int i = 1;; i = 0)
        {
          if (i == 0) {
            break label161;
          }
          return true;
          if ((paramIOException instanceof InterruptedIOException))
          {
            if (((paramIOException instanceof SocketTimeoutException)) && (!paramBoolean)) {
              break label151;
            }
            i = 0;
            break label42;
          }
          if (((paramIOException instanceof SSLHandshakeException)) && ((paramIOException.getCause() instanceof CertificateException)))
          {
            i = 0;
            break label42;
          }
          if ((paramIOException instanceof SSLPeerUnverifiedException))
          {
            i = 0;
            break label42;
          }
          i = 1;
          break label42;
          break;
        }
      }
    }
  }
  
  private static boolean a(y paramy, q paramq)
  {
    paramy = paramy.cZt.cVX;
    return (paramy.host.equals(paramq.host)) && (paramy.port == paramq.port) && (paramy.scheme.equals(paramq.scheme));
  }
  
  private a e(q paramq)
  {
    SSLSocketFactory localSSLSocketFactory;
    HostnameVerifier localHostnameVerifier;
    okhttp3.f localf;
    if (paramq.isHttps())
    {
      localSSLSocketFactory = this.cgQ.sslSocketFactory;
      localHostnameVerifier = this.cgQ.hostnameVerifier;
      localf = this.cgQ.cWa;
    }
    for (;;)
    {
      return new a(paramq.host, paramq.port, this.cgQ.cVY, this.cgQ.socketFactory, localSSLSocketFactory, localHostnameVerifier, localf, this.cgQ.cVZ, this.cgQ.proxy, this.cgQ.protocols, this.cgQ.connectionSpecs, this.cgQ.proxySelector);
      localf = null;
      localHostnameVerifier = null;
      localSSLSocketFactory = null;
    }
  }
  
  /* Error */
  public final y a(okhttp3.r.a parama)
    throws IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 197 1 0
    //   6: astore 6
    //   8: aload_1
    //   9: checkcast 199	okhttp3/internal/c/g
    //   12: astore 8
    //   14: aload 8
    //   16: getfield 203	okhttp3/internal/c/g:daf	Lokhttp3/e;
    //   19: astore 9
    //   21: aload 8
    //   23: getfield 207	okhttp3/internal/c/g:cZl	Lokhttp3/n;
    //   26: astore 10
    //   28: new 57	okhttp3/internal/b/g
    //   31: dup
    //   32: aload_0
    //   33: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   36: getfield 211	okhttp3/t:cZd	Lokhttp3/h;
    //   39: aload_0
    //   40: aload 6
    //   42: getfield 122	okhttp3/w:cVX	Lokhttp3/q;
    //   45: invokespecial 213	okhttp3/internal/c/j:e	(Lokhttp3/q;)Lokhttp3/a;
    //   48: aload 9
    //   50: aload 10
    //   52: aload_0
    //   53: getfield 215	okhttp3/internal/c/j:callStackTrace	Ljava/lang/Object;
    //   56: invokespecial 218	okhttp3/internal/b/g:<init>	(Lokhttp3/h;Lokhttp3/a;Lokhttp3/e;Lokhttp3/n;Ljava/lang/Object;)V
    //   59: astore 5
    //   61: aload_0
    //   62: aload 5
    //   64: putfield 220	okhttp3/internal/c/j:dak	Lokhttp3/internal/b/g;
    //   67: aconst_null
    //   68: astore 7
    //   70: iconst_0
    //   71: istore_2
    //   72: aload 6
    //   74: astore_1
    //   75: aload_0
    //   76: getfield 222	okhttp3/internal/c/j:canceled	Z
    //   79: ifeq +18 -> 97
    //   82: aload 5
    //   84: invokevirtual 225	okhttp3/internal/b/g:release	()V
    //   87: new 105	java/io/IOException
    //   90: dup
    //   91: ldc -29
    //   93: invokespecial 230	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   96: athrow
    //   97: aload 8
    //   99: aload_1
    //   100: aload 5
    //   102: aconst_null
    //   103: aconst_null
    //   104: invokevirtual 233	okhttp3/internal/c/g:a	(Lokhttp3/w;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;)Lokhttp3/y;
    //   107: astore 6
    //   109: aload 6
    //   111: astore_1
    //   112: aload_1
    //   113: astore 6
    //   115: aload 7
    //   117: ifnull +132 -> 249
    //   120: aload_1
    //   121: invokevirtual 237	okhttp3/y:MI	()Lokhttp3/y$a;
    //   124: astore_1
    //   125: aload 7
    //   127: invokevirtual 237	okhttp3/y:MI	()Lokhttp3/y$a;
    //   130: astore 6
    //   132: aload 6
    //   134: aconst_null
    //   135: putfield 243	okhttp3/y$a:cZu	Lokhttp3/z;
    //   138: aload 6
    //   140: invokevirtual 247	okhttp3/y$a:MJ	()Lokhttp3/y;
    //   143: astore 6
    //   145: aload 6
    //   147: getfield 248	okhttp3/y:cZu	Lokhttp3/z;
    //   150: ifnull +87 -> 237
    //   153: new 250	java/lang/IllegalArgumentException
    //   156: dup
    //   157: ldc -4
    //   159: invokespecial 253	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   162: athrow
    //   163: astore 6
    //   165: aload_0
    //   166: aload 6
    //   168: getfield 257	okhttp3/internal/b/e:lastException	Ljava/io/IOException;
    //   171: aload 5
    //   173: iconst_0
    //   174: aload_1
    //   175: invokespecial 259	okhttp3/internal/c/j:a	(Ljava/io/IOException;Lokhttp3/internal/b/g;ZLokhttp3/w;)Z
    //   178: ifne -103 -> 75
    //   181: aload 6
    //   183: getfield 257	okhttp3/internal/b/e:lastException	Ljava/io/IOException;
    //   186: athrow
    //   187: astore_1
    //   188: aload 5
    //   190: aconst_null
    //   191: invokevirtual 61	okhttp3/internal/b/g:streamFailed	(Ljava/io/IOException;)V
    //   194: aload 5
    //   196: invokevirtual 225	okhttp3/internal/b/g:release	()V
    //   199: aload_1
    //   200: athrow
    //   201: astore 6
    //   203: aload 6
    //   205: instanceof 261
    //   208: ifne +23 -> 231
    //   211: iconst_1
    //   212: istore 4
    //   214: aload_0
    //   215: aload 6
    //   217: aload 5
    //   219: iload 4
    //   221: aload_1
    //   222: invokespecial 259	okhttp3/internal/c/j:a	(Ljava/io/IOException;Lokhttp3/internal/b/g;ZLokhttp3/w;)Z
    //   225: ifne -150 -> 75
    //   228: aload 6
    //   230: athrow
    //   231: iconst_0
    //   232: istore 4
    //   234: goto -20 -> 214
    //   237: aload_1
    //   238: aload 6
    //   240: putfield 265	okhttp3/y$a:cZx	Lokhttp3/y;
    //   243: aload_1
    //   244: invokevirtual 247	okhttp3/y$a:MJ	()Lokhttp3/y;
    //   247: astore 6
    //   249: aload 5
    //   251: getfield 80	okhttp3/internal/b/g:dab	Lokhttp3/aa;
    //   254: astore_1
    //   255: aload 6
    //   257: ifnonnull +11 -> 268
    //   260: new 267	java/lang/IllegalStateException
    //   263: dup
    //   264: invokespecial 268	java/lang/IllegalStateException:<init>	()V
    //   267: athrow
    //   268: aload 6
    //   270: getfield 271	okhttp3/y:code	I
    //   273: istore_3
    //   274: aload 6
    //   276: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   279: getfield 274	okhttp3/w:method	Ljava/lang/String;
    //   282: astore 11
    //   284: iload_3
    //   285: lookupswitch	default:+91->376, 300:+207->492, 301:+207->492, 302:+207->492, 303:+207->492, 307:+185->470, 308:+185->470, 401:+169->454, 407:+112->397, 408:+449->734, 503:+513->798
    //   376: aconst_null
    //   377: astore_1
    //   378: aload_1
    //   379: ifnonnull +465 -> 844
    //   382: aload_0
    //   383: getfield 24	okhttp3/internal/c/j:forWebSocket	Z
    //   386: ifne +8 -> 394
    //   389: aload 5
    //   391: invokevirtual 225	okhttp3/internal/b/g:release	()V
    //   394: aload 6
    //   396: areturn
    //   397: aload_1
    //   398: ifnull +29 -> 427
    //   401: aload_1
    //   402: getfield 277	okhttp3/aa:proxy	Ljava/net/Proxy;
    //   405: astore_1
    //   406: aload_1
    //   407: invokevirtual 283	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   410: getstatic 289	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   413: if_acmpeq +25 -> 438
    //   416: new 76	java/net/ProtocolException
    //   419: dup
    //   420: ldc_w 291
    //   423: invokespecial 292	java/net/ProtocolException:<init>	(Ljava/lang/String;)V
    //   426: athrow
    //   427: aload_0
    //   428: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   431: getfield 174	okhttp3/t:proxy	Ljava/net/Proxy;
    //   434: astore_1
    //   435: goto -29 -> 406
    //   438: aload_0
    //   439: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   442: getfield 170	okhttp3/t:cVZ	Lokhttp3/b;
    //   445: invokeinterface 297 1 0
    //   450: astore_1
    //   451: goto -73 -> 378
    //   454: aload_0
    //   455: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   458: getfield 300	okhttp3/t:cZc	Lokhttp3/b;
    //   461: invokeinterface 297 1 0
    //   466: astore_1
    //   467: goto -89 -> 378
    //   470: aload 11
    //   472: ldc_w 302
    //   475: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   478: ifne +14 -> 492
    //   481: aload 11
    //   483: ldc_w 304
    //   486: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   489: ifeq -113 -> 376
    //   492: aload_0
    //   493: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   496: getfield 307	okhttp3/t:followRedirects	Z
    //   499: ifeq -123 -> 376
    //   502: aload 6
    //   504: ldc_w 309
    //   507: invokevirtual 312	okhttp3/y:header	(Ljava/lang/String;)Ljava/lang/String;
    //   510: astore_1
    //   511: aload_1
    //   512: ifnull -136 -> 376
    //   515: aload 6
    //   517: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   520: getfield 122	okhttp3/w:cVX	Lokhttp3/q;
    //   523: aload_1
    //   524: invokevirtual 316	okhttp3/q:ft	(Ljava/lang/String;)Lokhttp3/q$a;
    //   527: astore_1
    //   528: aload_1
    //   529: ifnull +161 -> 690
    //   532: aload_1
    //   533: invokevirtual 322	okhttp3/q$a:MC	()Lokhttp3/q;
    //   536: astore_1
    //   537: aload_1
    //   538: ifnull -162 -> 376
    //   541: aload_1
    //   542: getfield 139	okhttp3/q:scheme	Ljava/lang/String;
    //   545: aload 6
    //   547: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   550: getfield 122	okhttp3/w:cVX	Lokhttp3/q;
    //   553: getfield 139	okhttp3/q:scheme	Ljava/lang/String;
    //   556: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   559: ifne +13 -> 572
    //   562: aload_0
    //   563: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   566: getfield 325	okhttp3/t:followSslRedirects	Z
    //   569: ifeq -193 -> 376
    //   572: aload 6
    //   574: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   577: invokevirtual 329	okhttp3/w:MF	()Lokhttp3/w$a;
    //   580: astore 12
    //   582: aload 11
    //   584: invokestatic 334	okhttp3/internal/c/f:permitsRequestBody	(Ljava/lang/String;)Z
    //   587: ifeq +72 -> 659
    //   590: aload 11
    //   592: ldc_w 336
    //   595: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   598: istore 4
    //   600: aload 11
    //   602: ldc_w 336
    //   605: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   608: ifne +87 -> 695
    //   611: iconst_1
    //   612: istore_3
    //   613: iload_3
    //   614: ifeq +86 -> 700
    //   617: aload 12
    //   619: ldc_w 302
    //   622: aconst_null
    //   623: invokevirtual 341	okhttp3/w$a:a	(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;
    //   626: pop
    //   627: iload 4
    //   629: ifne +30 -> 659
    //   632: aload 12
    //   634: ldc_w 343
    //   637: invokevirtual 347	okhttp3/w$a:fz	(Ljava/lang/String;)Lokhttp3/w$a;
    //   640: pop
    //   641: aload 12
    //   643: ldc_w 349
    //   646: invokevirtual 347	okhttp3/w$a:fz	(Ljava/lang/String;)Lokhttp3/w$a;
    //   649: pop
    //   650: aload 12
    //   652: ldc_w 351
    //   655: invokevirtual 347	okhttp3/w$a:fz	(Ljava/lang/String;)Lokhttp3/w$a;
    //   658: pop
    //   659: aload 6
    //   661: aload_1
    //   662: invokestatic 353	okhttp3/internal/c/j:a	(Lokhttp3/y;Lokhttp3/q;)Z
    //   665: ifne +12 -> 677
    //   668: aload 12
    //   670: ldc_w 355
    //   673: invokevirtual 347	okhttp3/w$a:fz	(Ljava/lang/String;)Lokhttp3/w$a;
    //   676: pop
    //   677: aload 12
    //   679: aload_1
    //   680: invokevirtual 359	okhttp3/w$a:b	(Lokhttp3/q;)Lokhttp3/w$a;
    //   683: invokevirtual 362	okhttp3/w$a:MH	()Lokhttp3/w;
    //   686: astore_1
    //   687: goto -309 -> 378
    //   690: aconst_null
    //   691: astore_1
    //   692: goto -155 -> 537
    //   695: iconst_0
    //   696: istore_3
    //   697: goto -84 -> 613
    //   700: iload 4
    //   702: ifeq +26 -> 728
    //   705: aload 6
    //   707: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   710: getfield 72	okhttp3/w:cZp	Lokhttp3/x;
    //   713: astore 7
    //   715: aload 12
    //   717: aload 11
    //   719: aload 7
    //   721: invokevirtual 341	okhttp3/w$a:a	(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;
    //   724: pop
    //   725: goto -98 -> 627
    //   728: aconst_null
    //   729: astore 7
    //   731: goto -16 -> 715
    //   734: aload_0
    //   735: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   738: getfield 66	okhttp3/t:retryOnConnectionFailure	Z
    //   741: ifeq -365 -> 376
    //   744: aload 6
    //   746: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   749: getfield 72	okhttp3/w:cZp	Lokhttp3/x;
    //   752: instanceof 74
    //   755: ifne -379 -> 376
    //   758: aload 6
    //   760: getfield 363	okhttp3/y:cZx	Lokhttp3/y;
    //   763: ifnull +17 -> 780
    //   766: aload 6
    //   768: getfield 363	okhttp3/y:cZx	Lokhttp3/y;
    //   771: getfield 271	okhttp3/y:code	I
    //   774: sipush 408
    //   777: if_icmpeq -401 -> 376
    //   780: aload 6
    //   782: iconst_0
    //   783: invokestatic 365	okhttp3/internal/c/j:a	(Lokhttp3/y;I)I
    //   786: ifgt -410 -> 376
    //   789: aload 6
    //   791: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   794: astore_1
    //   795: goto -417 -> 378
    //   798: aload 6
    //   800: getfield 363	okhttp3/y:cZx	Lokhttp3/y;
    //   803: ifnull +17 -> 820
    //   806: aload 6
    //   808: getfield 363	okhttp3/y:cZx	Lokhttp3/y;
    //   811: getfield 271	okhttp3/y:code	I
    //   814: sipush 503
    //   817: if_icmpeq -441 -> 376
    //   820: aload 6
    //   822: ldc 54
    //   824: invokestatic 365	okhttp3/internal/c/j:a	(Lokhttp3/y;I)I
    //   827: ifne +12 -> 839
    //   830: aload 6
    //   832: getfield 118	okhttp3/y:cZt	Lokhttp3/w;
    //   835: astore_1
    //   836: goto -458 -> 378
    //   839: aconst_null
    //   840: astore_1
    //   841: goto -463 -> 378
    //   844: aload 6
    //   846: getfield 248	okhttp3/y:cZu	Lokhttp3/z;
    //   849: invokestatic 371	okhttp3/internal/c:closeQuietly	(Ljava/io/Closeable;)V
    //   852: iload_2
    //   853: iconst_1
    //   854: iadd
    //   855: istore_2
    //   856: iload_2
    //   857: bipush 20
    //   859: if_icmple +33 -> 892
    //   862: aload 5
    //   864: invokevirtual 225	okhttp3/internal/b/g:release	()V
    //   867: new 76	java/net/ProtocolException
    //   870: dup
    //   871: new 373	java/lang/StringBuilder
    //   874: dup
    //   875: ldc_w 375
    //   878: invokespecial 376	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   881: iload_2
    //   882: invokevirtual 380	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   885: invokevirtual 384	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   888: invokespecial 292	java/net/ProtocolException:<init>	(Ljava/lang/String;)V
    //   891: athrow
    //   892: aload_1
    //   893: getfield 72	okhttp3/w:cZp	Lokhttp3/x;
    //   896: instanceof 74
    //   899: ifeq +24 -> 923
    //   902: aload 5
    //   904: invokevirtual 225	okhttp3/internal/b/g:release	()V
    //   907: new 386	java/net/HttpRetryException
    //   910: dup
    //   911: ldc_w 388
    //   914: aload 6
    //   916: getfield 271	okhttp3/y:code	I
    //   919: invokespecial 391	java/net/HttpRetryException:<init>	(Ljava/lang/String;I)V
    //   922: athrow
    //   923: aload 6
    //   925: aload_1
    //   926: getfield 122	okhttp3/w:cVX	Lokhttp3/q;
    //   929: invokestatic 353	okhttp3/internal/c/j:a	(Lokhttp3/y;Lokhttp3/q;)Z
    //   932: ifne +53 -> 985
    //   935: aload 5
    //   937: invokevirtual 225	okhttp3/internal/b/g:release	()V
    //   940: new 57	okhttp3/internal/b/g
    //   943: dup
    //   944: aload_0
    //   945: getfield 22	okhttp3/internal/c/j:cgQ	Lokhttp3/t;
    //   948: getfield 211	okhttp3/t:cZd	Lokhttp3/h;
    //   951: aload_0
    //   952: aload_1
    //   953: getfield 122	okhttp3/w:cVX	Lokhttp3/q;
    //   956: invokespecial 213	okhttp3/internal/c/j:e	(Lokhttp3/q;)Lokhttp3/a;
    //   959: aload 9
    //   961: aload 10
    //   963: aload_0
    //   964: getfield 215	okhttp3/internal/c/j:callStackTrace	Ljava/lang/Object;
    //   967: invokespecial 218	okhttp3/internal/b/g:<init>	(Lokhttp3/h;Lokhttp3/a;Lokhttp3/e;Lokhttp3/n;Ljava/lang/Object;)V
    //   970: astore 5
    //   972: aload_0
    //   973: aload 5
    //   975: putfield 220	okhttp3/internal/c/j:dak	Lokhttp3/internal/b/g;
    //   978: aload 6
    //   980: astore 7
    //   982: goto -907 -> 75
    //   985: aload 5
    //   987: invokevirtual 395	okhttp3/internal/b/g:MP	()Lokhttp3/internal/c/c;
    //   990: ifnull +35 -> 1025
    //   993: new 267	java/lang/IllegalStateException
    //   996: dup
    //   997: new 373	java/lang/StringBuilder
    //   1000: dup
    //   1001: ldc_w 397
    //   1004: invokespecial 376	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1007: aload 6
    //   1009: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1012: ldc_w 402
    //   1015: invokevirtual 405	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1018: invokevirtual 384	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1021: invokespecial 406	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   1024: athrow
    //   1025: goto -47 -> 978
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1028	0	this	j
    //   0	1028	1	parama	okhttp3.r.a
    //   71	811	2	i	int
    //   273	424	3	j	int
    //   212	489	4	bool	boolean
    //   59	927	5	localg	g
    //   6	140	6	localObject1	Object
    //   163	19	6	locale	okhttp3.internal.b.e
    //   201	38	6	localIOException	IOException
    //   247	761	6	localy	y
    //   68	913	7	localObject2	Object
    //   12	86	8	localg1	g
    //   19	941	9	locale1	okhttp3.e
    //   26	936	10	localn	okhttp3.n
    //   282	436	11	str	String
    //   580	136	12	locala	okhttp3.w.a
    // Exception table:
    //   from	to	target	type
    //   97	109	163	okhttp3/internal/b/e
    //   97	109	187	finally
    //   165	187	187	finally
    //   203	211	187	finally
    //   214	231	187	finally
    //   97	109	201	java/io/IOException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */