package io.branch.referral.a;

import android.content.Context;
import io.branch.referral.q;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.json.JSONObject;

public final class b
  extends a
{
  q cBN;
  
  public b(Context paramContext)
  {
    this.cBN = q.bT(paramContext);
  }
  
  /* Error */
  private a.b a(String paramString, JSONObject paramJSONObject, int paramInt)
    throws a.a
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: invokestatic 40	io/branch/referral/q:getTimeout	()I
    //   6: istore 5
    //   8: iload 5
    //   10: ifgt +644 -> 654
    //   13: sipush 3000
    //   16: istore 5
    //   18: aload_2
    //   19: ldc 42
    //   21: iload_3
    //   22: invokevirtual 48	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   25: pop
    //   26: new 50	java/net/URL
    //   29: dup
    //   30: aload_1
    //   31: invokespecial 53	java/net/URL:<init>	(Ljava/lang/String;)V
    //   34: invokevirtual 57	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   37: checkcast 59	javax/net/ssl/HttpsURLConnection
    //   40: astore 7
    //   42: iload_3
    //   43: istore 4
    //   45: aload 7
    //   47: iload 5
    //   49: invokevirtual 63	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   52: iload_3
    //   53: istore 4
    //   55: aload 7
    //   57: iload 5
    //   59: invokevirtual 66	javax/net/ssl/HttpsURLConnection:setReadTimeout	(I)V
    //   62: iload_3
    //   63: istore 4
    //   65: aload 7
    //   67: iconst_1
    //   68: invokevirtual 70	javax/net/ssl/HttpsURLConnection:setDoInput	(Z)V
    //   71: iload_3
    //   72: istore 4
    //   74: aload 7
    //   76: iconst_1
    //   77: invokevirtual 73	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   80: iload_3
    //   81: istore 4
    //   83: aload 7
    //   85: ldc 75
    //   87: ldc 77
    //   89: invokevirtual 81	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   92: iload_3
    //   93: istore 4
    //   95: aload 7
    //   97: ldc 83
    //   99: ldc 77
    //   101: invokevirtual 81	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   104: iload_3
    //   105: istore 4
    //   107: aload 7
    //   109: ldc 85
    //   111: invokevirtual 88	javax/net/ssl/HttpsURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   114: iload_3
    //   115: istore 4
    //   117: new 90	java/io/OutputStreamWriter
    //   120: dup
    //   121: aload 7
    //   123: invokevirtual 94	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   126: invokespecial 97	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   129: astore 8
    //   131: iload_3
    //   132: istore 4
    //   134: aload 8
    //   136: aload_2
    //   137: invokevirtual 101	org/json/JSONObject:toString	()Ljava/lang/String;
    //   140: invokevirtual 104	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   143: iload_3
    //   144: istore 4
    //   146: aload 8
    //   148: invokevirtual 107	java/io/OutputStreamWriter:flush	()V
    //   151: iload_3
    //   152: istore 4
    //   154: aload 7
    //   156: invokevirtual 110	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   159: istore 5
    //   161: iload 5
    //   163: sipush 500
    //   166: if_icmplt +124 -> 290
    //   169: iload_3
    //   170: istore 4
    //   172: ldc 112
    //   174: iconst_3
    //   175: invokestatic 116	io/branch/referral/q:l	(Ljava/lang/String;I)I
    //   178: istore 6
    //   180: iload_3
    //   181: iload 6
    //   183: if_icmpge +107 -> 290
    //   186: iload_3
    //   187: istore 4
    //   189: invokestatic 119	io/branch/referral/q:GT	()I
    //   192: i2l
    //   193: invokestatic 125	java/lang/Thread:sleep	(J)V
    //   196: iload_3
    //   197: iconst_1
    //   198: iadd
    //   199: istore_3
    //   200: iload_3
    //   201: istore 4
    //   203: aload_0
    //   204: aload_1
    //   205: aload_2
    //   206: iload_3
    //   207: invokespecial 127	io/branch/referral/a/b:a	(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/a/a$b;
    //   210: astore 8
    //   212: aload 7
    //   214: ifnull +8 -> 222
    //   217: aload 7
    //   219: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   222: aload 8
    //   224: astore_1
    //   225: aload_1
    //   226: areturn
    //   227: astore 8
    //   229: iload_3
    //   230: istore 4
    //   232: aload 8
    //   234: invokevirtual 133	java/lang/InterruptedException:printStackTrace	()V
    //   237: goto -41 -> 196
    //   240: astore 8
    //   242: iload 4
    //   244: istore_3
    //   245: ldc 112
    //   247: iconst_3
    //   248: invokestatic 116	io/branch/referral/q:l	(Ljava/lang/String;I)I
    //   251: istore 4
    //   253: iload_3
    //   254: iload 4
    //   256: if_icmpge +201 -> 457
    //   259: invokestatic 119	io/branch/referral/q:GT	()I
    //   262: i2l
    //   263: invokestatic 125	java/lang/Thread:sleep	(J)V
    //   266: aload_0
    //   267: aload_1
    //   268: aload_2
    //   269: iload_3
    //   270: iconst_1
    //   271: iadd
    //   272: invokespecial 127	io/branch/referral/a/b:a	(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/a/a$b;
    //   275: astore_2
    //   276: aload_2
    //   277: astore_1
    //   278: aload 7
    //   280: ifnull -55 -> 225
    //   283: aload 7
    //   285: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   288: aload_2
    //   289: areturn
    //   290: iload 5
    //   292: sipush 200
    //   295: if_icmpeq +49 -> 344
    //   298: iload_3
    //   299: istore 4
    //   301: aload 7
    //   303: invokevirtual 137	javax/net/ssl/HttpsURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   306: ifnull +38 -> 344
    //   309: iload_3
    //   310: istore 4
    //   312: new 139	io/branch/referral/a/a$b
    //   315: dup
    //   316: aload 7
    //   318: invokevirtual 137	javax/net/ssl/HttpsURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   321: invokestatic 143	io/branch/referral/a/b:o	(Ljava/io/InputStream;)Ljava/lang/String;
    //   324: iload 5
    //   326: invokespecial 146	io/branch/referral/a/a$b:<init>	(Ljava/lang/String;I)V
    //   329: astore 8
    //   331: aload 7
    //   333: ifnull +8 -> 341
    //   336: aload 7
    //   338: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   341: aload 8
    //   343: areturn
    //   344: iload_3
    //   345: istore 4
    //   347: new 139	io/branch/referral/a/a$b
    //   350: dup
    //   351: aload 7
    //   353: invokevirtual 149	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   356: invokestatic 143	io/branch/referral/a/b:o	(Ljava/io/InputStream;)Ljava/lang/String;
    //   359: iload 5
    //   361: invokespecial 146	io/branch/referral/a/a$b:<init>	(Ljava/lang/String;I)V
    //   364: astore 8
    //   366: aload 7
    //   368: ifnull +8 -> 376
    //   371: aload 7
    //   373: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   376: aload 8
    //   378: areturn
    //   379: astore 8
    //   381: iload_3
    //   382: istore 4
    //   384: ldc -105
    //   386: new 153	java/lang/StringBuilder
    //   389: dup
    //   390: ldc -101
    //   392: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   395: aload_1
    //   396: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokestatic 164	io/branch/referral/q:V	(Ljava/lang/String;Ljava/lang/String;)V
    //   405: iload_3
    //   406: istore 4
    //   408: new 139	io/branch/referral/a/a$b
    //   411: dup
    //   412: aconst_null
    //   413: iload 5
    //   415: invokespecial 146	io/branch/referral/a/a$b:<init>	(Ljava/lang/String;I)V
    //   418: astore 8
    //   420: aload 7
    //   422: ifnull +8 -> 430
    //   425: aload 7
    //   427: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   430: aload 8
    //   432: areturn
    //   433: astore 8
    //   435: aload 8
    //   437: invokevirtual 133	java/lang/InterruptedException:printStackTrace	()V
    //   440: goto -174 -> 266
    //   443: astore_1
    //   444: aload 7
    //   446: astore_2
    //   447: aload_2
    //   448: ifnull +7 -> 455
    //   451: aload_2
    //   452: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   455: aload_1
    //   456: athrow
    //   457: new 24	io/branch/referral/a/a$a
    //   460: dup
    //   461: bipush -111
    //   463: invokespecial 166	io/branch/referral/a/a$a:<init>	(I)V
    //   466: athrow
    //   467: astore 7
    //   469: aconst_null
    //   470: astore_1
    //   471: aload_1
    //   472: astore_2
    //   473: aload_0
    //   474: invokevirtual 172	java/lang/Object:getClass	()Ljava/lang/Class;
    //   477: invokevirtual 177	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   480: new 153	java/lang/StringBuilder
    //   483: dup
    //   484: ldc -77
    //   486: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   489: aload 7
    //   491: invokevirtual 182	java/io/IOException:getMessage	()Ljava/lang/String;
    //   494: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: invokestatic 164	io/branch/referral/q:V	(Ljava/lang/String;Ljava/lang/String;)V
    //   503: aload_1
    //   504: astore_2
    //   505: new 24	io/branch/referral/a/a$a
    //   508: dup
    //   509: bipush -113
    //   511: invokespecial 166	io/branch/referral/a/a$a:<init>	(I)V
    //   514: athrow
    //   515: aload 7
    //   517: astore_2
    //   518: aload_0
    //   519: invokevirtual 172	java/lang/Object:getClass	()Ljava/lang/Class;
    //   522: invokevirtual 177	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   525: new 153	java/lang/StringBuilder
    //   528: dup
    //   529: ldc -72
    //   531: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   534: aload_1
    //   535: invokevirtual 185	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   538: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   541: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   544: invokestatic 164	io/branch/referral/q:V	(Ljava/lang/String;Ljava/lang/String;)V
    //   547: aload 7
    //   549: astore_2
    //   550: getstatic 191	android/os/Build$VERSION:SDK_INT	I
    //   553: bipush 11
    //   555: if_icmplt +24 -> 579
    //   558: aload 7
    //   560: astore_2
    //   561: aload_1
    //   562: instanceof 193
    //   565: ifeq +14 -> 579
    //   568: aload 7
    //   570: astore_2
    //   571: ldc -105
    //   573: ldc -61
    //   575: invokestatic 201	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   578: pop
    //   579: aload 7
    //   581: astore_2
    //   582: new 139	io/branch/referral/a/a$b
    //   585: dup
    //   586: aconst_null
    //   587: sipush 500
    //   590: invokespecial 146	io/branch/referral/a/a$b:<init>	(Ljava/lang/String;I)V
    //   593: astore 8
    //   595: aload 8
    //   597: astore_1
    //   598: aload 7
    //   600: ifnull -375 -> 225
    //   603: aload 7
    //   605: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   608: aload 8
    //   610: areturn
    //   611: astore_1
    //   612: aconst_null
    //   613: astore_2
    //   614: goto -167 -> 447
    //   617: astore_1
    //   618: aload 7
    //   620: astore_2
    //   621: goto -174 -> 447
    //   624: astore_1
    //   625: goto -110 -> 515
    //   628: astore_1
    //   629: aload 7
    //   631: astore_2
    //   632: aload_1
    //   633: astore 7
    //   635: aload_2
    //   636: astore_1
    //   637: goto -166 -> 471
    //   640: astore 7
    //   642: aload 8
    //   644: astore 7
    //   646: goto -401 -> 245
    //   649: astore 7
    //   651: goto -625 -> 26
    //   654: goto -636 -> 18
    //   657: astore_1
    //   658: goto -211 -> 447
    //   661: astore_1
    //   662: aconst_null
    //   663: astore 7
    //   665: goto -150 -> 515
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	668	0	this	b
    //   0	668	1	paramString	String
    //   0	668	2	paramJSONObject	JSONObject
    //   0	668	3	paramInt	int
    //   43	364	4	i	int
    //   6	408	5	j	int
    //   178	6	6	k	int
    //   40	405	7	localHttpsURLConnection	javax.net.ssl.HttpsURLConnection
    //   467	163	7	localIOException	IOException
    //   633	1	7	str	String
    //   640	1	7	localSocketTimeoutException1	java.net.SocketTimeoutException
    //   644	1	7	localb1	a.b
    //   649	1	7	localJSONException	org.json.JSONException
    //   663	1	7	localObject1	Object
    //   1	222	8	localObject2	Object
    //   227	6	8	localInterruptedException1	InterruptedException
    //   240	1	8	localSocketTimeoutException2	java.net.SocketTimeoutException
    //   329	48	8	localb2	a.b
    //   379	1	8	localFileNotFoundException	java.io.FileNotFoundException
    //   418	13	8	localb3	a.b
    //   433	3	8	localInterruptedException2	InterruptedException
    //   593	50	8	localb4	a.b
    // Exception table:
    //   from	to	target	type
    //   189	196	227	java/lang/InterruptedException
    //   45	52	240	java/net/SocketTimeoutException
    //   55	62	240	java/net/SocketTimeoutException
    //   65	71	240	java/net/SocketTimeoutException
    //   74	80	240	java/net/SocketTimeoutException
    //   83	92	240	java/net/SocketTimeoutException
    //   95	104	240	java/net/SocketTimeoutException
    //   107	114	240	java/net/SocketTimeoutException
    //   117	131	240	java/net/SocketTimeoutException
    //   134	143	240	java/net/SocketTimeoutException
    //   146	151	240	java/net/SocketTimeoutException
    //   154	161	240	java/net/SocketTimeoutException
    //   172	180	240	java/net/SocketTimeoutException
    //   189	196	240	java/net/SocketTimeoutException
    //   203	212	240	java/net/SocketTimeoutException
    //   232	237	240	java/net/SocketTimeoutException
    //   301	309	240	java/net/SocketTimeoutException
    //   312	331	240	java/net/SocketTimeoutException
    //   347	366	240	java/net/SocketTimeoutException
    //   384	405	240	java/net/SocketTimeoutException
    //   408	420	240	java/net/SocketTimeoutException
    //   301	309	379	java/io/FileNotFoundException
    //   312	331	379	java/io/FileNotFoundException
    //   347	366	379	java/io/FileNotFoundException
    //   259	266	433	java/lang/InterruptedException
    //   245	253	443	finally
    //   259	266	443	finally
    //   266	276	443	finally
    //   435	440	443	finally
    //   457	467	443	finally
    //   26	42	467	java/io/IOException
    //   26	42	611	finally
    //   45	52	617	finally
    //   55	62	617	finally
    //   65	71	617	finally
    //   74	80	617	finally
    //   83	92	617	finally
    //   95	104	617	finally
    //   107	114	617	finally
    //   117	131	617	finally
    //   134	143	617	finally
    //   146	151	617	finally
    //   154	161	617	finally
    //   172	180	617	finally
    //   189	196	617	finally
    //   203	212	617	finally
    //   232	237	617	finally
    //   301	309	617	finally
    //   312	331	617	finally
    //   347	366	617	finally
    //   384	405	617	finally
    //   408	420	617	finally
    //   45	52	624	java/lang/Exception
    //   55	62	624	java/lang/Exception
    //   65	71	624	java/lang/Exception
    //   74	80	624	java/lang/Exception
    //   83	92	624	java/lang/Exception
    //   95	104	624	java/lang/Exception
    //   107	114	624	java/lang/Exception
    //   117	131	624	java/lang/Exception
    //   134	143	624	java/lang/Exception
    //   146	151	624	java/lang/Exception
    //   154	161	624	java/lang/Exception
    //   172	180	624	java/lang/Exception
    //   189	196	624	java/lang/Exception
    //   203	212	624	java/lang/Exception
    //   232	237	624	java/lang/Exception
    //   301	309	624	java/lang/Exception
    //   312	331	624	java/lang/Exception
    //   347	366	624	java/lang/Exception
    //   384	405	624	java/lang/Exception
    //   408	420	624	java/lang/Exception
    //   45	52	628	java/io/IOException
    //   55	62	628	java/io/IOException
    //   65	71	628	java/io/IOException
    //   74	80	628	java/io/IOException
    //   83	92	628	java/io/IOException
    //   95	104	628	java/io/IOException
    //   107	114	628	java/io/IOException
    //   117	131	628	java/io/IOException
    //   134	143	628	java/io/IOException
    //   146	151	628	java/io/IOException
    //   154	161	628	java/io/IOException
    //   172	180	628	java/io/IOException
    //   189	196	628	java/io/IOException
    //   203	212	628	java/io/IOException
    //   232	237	628	java/io/IOException
    //   301	309	628	java/io/IOException
    //   312	331	628	java/io/IOException
    //   347	366	628	java/io/IOException
    //   384	405	628	java/io/IOException
    //   408	420	628	java/io/IOException
    //   26	42	640	java/net/SocketTimeoutException
    //   18	26	649	org/json/JSONException
    //   473	503	657	finally
    //   505	515	657	finally
    //   518	547	657	finally
    //   550	558	657	finally
    //   561	568	657	finally
    //   571	579	657	finally
    //   582	595	657	finally
    //   26	42	661	java/lang/Exception
  }
  
  /* Error */
  private a.b m(String paramString, int paramInt)
    throws a.a
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: aconst_null
    //   4: astore 10
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 8
    //   12: aload 11
    //   14: astore 6
    //   16: invokestatic 40	io/branch/referral/q:getTimeout	()I
    //   19: istore 4
    //   21: iload 4
    //   23: ifgt +560 -> 583
    //   26: sipush 3000
    //   29: istore 4
    //   31: aload 11
    //   33: astore 6
    //   35: aload_1
    //   36: ldc -48
    //   38: invokevirtual 214	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   41: ifeq +143 -> 184
    //   44: ldc -40
    //   46: astore 7
    //   48: aload 11
    //   50: astore 6
    //   52: new 50	java/net/URL
    //   55: dup
    //   56: new 153	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 217	java/lang/StringBuilder:<init>	()V
    //   63: aload_1
    //   64: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload 7
    //   69: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: ldc -37
    //   74: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: iload_2
    //   78: invokevirtual 222	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   81: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokespecial 53	java/net/URL:<init>	(Ljava/lang/String;)V
    //   87: invokevirtual 57	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   90: checkcast 59	javax/net/ssl/HttpsURLConnection
    //   93: astore 7
    //   95: iload_2
    //   96: istore_3
    //   97: aload 7
    //   99: iload 4
    //   101: invokevirtual 63	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   104: iload_2
    //   105: istore_3
    //   106: aload 7
    //   108: iload 4
    //   110: invokevirtual 66	javax/net/ssl/HttpsURLConnection:setReadTimeout	(I)V
    //   113: iload_2
    //   114: istore_3
    //   115: aload 7
    //   117: invokevirtual 110	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   120: istore 4
    //   122: iload 4
    //   124: sipush 500
    //   127: if_icmplt +144 -> 271
    //   130: iload_2
    //   131: istore_3
    //   132: ldc 112
    //   134: iconst_3
    //   135: invokestatic 116	io/branch/referral/q:l	(Ljava/lang/String;I)I
    //   138: istore 5
    //   140: iload_2
    //   141: iload 5
    //   143: if_icmpge +128 -> 271
    //   146: iload_2
    //   147: istore_3
    //   148: invokestatic 119	io/branch/referral/q:GT	()I
    //   151: i2l
    //   152: invokestatic 125	java/lang/Thread:sleep	(J)V
    //   155: iload_2
    //   156: iconst_1
    //   157: iadd
    //   158: istore_2
    //   159: iload_2
    //   160: istore_3
    //   161: aload_0
    //   162: aload_1
    //   163: iload_2
    //   164: invokespecial 224	io/branch/referral/a/b:m	(Ljava/lang/String;I)Lio/branch/referral/a/a$b;
    //   167: astore 6
    //   169: aload 7
    //   171: ifnull +8 -> 179
    //   174: aload 7
    //   176: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   179: aload 6
    //   181: astore_1
    //   182: aload_1
    //   183: areturn
    //   184: ldc -48
    //   186: astore 7
    //   188: goto -140 -> 48
    //   191: astore 6
    //   193: iload_2
    //   194: istore_3
    //   195: aload 6
    //   197: invokevirtual 133	java/lang/InterruptedException:printStackTrace	()V
    //   200: goto -45 -> 155
    //   203: astore 6
    //   205: aload 7
    //   207: astore_1
    //   208: aload 6
    //   210: astore 7
    //   212: aload_1
    //   213: astore 6
    //   215: aload_0
    //   216: invokevirtual 172	java/lang/Object:getClass	()Ljava/lang/Class;
    //   219: invokevirtual 177	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   222: new 153	java/lang/StringBuilder
    //   225: dup
    //   226: ldc -77
    //   228: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   231: aload 7
    //   233: invokevirtual 225	java/net/SocketException:getMessage	()Ljava/lang/String;
    //   236: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: invokestatic 164	io/branch/referral/q:V	(Ljava/lang/String;Ljava/lang/String;)V
    //   245: aload_1
    //   246: astore 6
    //   248: new 24	io/branch/referral/a/a$a
    //   251: dup
    //   252: bipush -113
    //   254: invokespecial 166	io/branch/referral/a/a$a:<init>	(I)V
    //   257: athrow
    //   258: astore_1
    //   259: aload 6
    //   261: ifnull +8 -> 269
    //   264: aload 6
    //   266: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   269: aload_1
    //   270: athrow
    //   271: iload 4
    //   273: sipush 200
    //   276: if_icmpeq +47 -> 323
    //   279: iload_2
    //   280: istore_3
    //   281: aload 7
    //   283: invokevirtual 137	javax/net/ssl/HttpsURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   286: ifnull +37 -> 323
    //   289: iload_2
    //   290: istore_3
    //   291: new 139	io/branch/referral/a/a$b
    //   294: dup
    //   295: aload 7
    //   297: invokevirtual 137	javax/net/ssl/HttpsURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   300: invokestatic 143	io/branch/referral/a/b:o	(Ljava/io/InputStream;)Ljava/lang/String;
    //   303: iload 4
    //   305: invokespecial 146	io/branch/referral/a/a$b:<init>	(Ljava/lang/String;I)V
    //   308: astore 6
    //   310: aload 7
    //   312: ifnull +8 -> 320
    //   315: aload 7
    //   317: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   320: aload 6
    //   322: areturn
    //   323: iload_2
    //   324: istore_3
    //   325: new 139	io/branch/referral/a/a$b
    //   328: dup
    //   329: aload 7
    //   331: invokevirtual 149	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   334: invokestatic 143	io/branch/referral/a/b:o	(Ljava/io/InputStream;)Ljava/lang/String;
    //   337: iload 4
    //   339: invokespecial 146	io/branch/referral/a/a$b:<init>	(Ljava/lang/String;I)V
    //   342: astore 6
    //   344: aload 7
    //   346: ifnull +8 -> 354
    //   349: aload 7
    //   351: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   354: aload 6
    //   356: areturn
    //   357: astore 6
    //   359: iload_2
    //   360: istore_3
    //   361: ldc -105
    //   363: new 153	java/lang/StringBuilder
    //   366: dup
    //   367: ldc -101
    //   369: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   372: aload_1
    //   373: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: invokestatic 164	io/branch/referral/q:V	(Ljava/lang/String;Ljava/lang/String;)V
    //   382: iload_2
    //   383: istore_3
    //   384: new 139	io/branch/referral/a/a$b
    //   387: dup
    //   388: aconst_null
    //   389: iload 4
    //   391: invokespecial 146	io/branch/referral/a/a$b:<init>	(Ljava/lang/String;I)V
    //   394: astore 6
    //   396: aload 7
    //   398: ifnull +8 -> 406
    //   401: aload 7
    //   403: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   406: aload 6
    //   408: areturn
    //   409: astore 6
    //   411: aload 10
    //   413: astore 7
    //   415: aload 7
    //   417: astore 6
    //   419: ldc 112
    //   421: iconst_3
    //   422: invokestatic 116	io/branch/referral/q:l	(Ljava/lang/String;I)I
    //   425: istore_3
    //   426: iload_2
    //   427: iload_3
    //   428: if_icmpge +60 -> 488
    //   431: aload 7
    //   433: astore 6
    //   435: invokestatic 119	io/branch/referral/q:GT	()I
    //   438: i2l
    //   439: invokestatic 125	java/lang/Thread:sleep	(J)V
    //   442: aload 7
    //   444: astore 6
    //   446: aload_0
    //   447: aload_1
    //   448: iload_2
    //   449: iconst_1
    //   450: iadd
    //   451: invokespecial 224	io/branch/referral/a/b:m	(Ljava/lang/String;I)Lio/branch/referral/a/a$b;
    //   454: astore_1
    //   455: aload_1
    //   456: astore 6
    //   458: aload 6
    //   460: astore_1
    //   461: aload 7
    //   463: ifnull -281 -> 182
    //   466: aload 7
    //   468: invokevirtual 130	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   471: aload 6
    //   473: areturn
    //   474: astore 8
    //   476: aload 7
    //   478: astore 6
    //   480: aload 8
    //   482: invokevirtual 133	java/lang/InterruptedException:printStackTrace	()V
    //   485: goto -43 -> 442
    //   488: aload 7
    //   490: astore 6
    //   492: new 24	io/branch/referral/a/a$a
    //   495: dup
    //   496: bipush -111
    //   498: invokespecial 166	io/branch/referral/a/a$a:<init>	(I)V
    //   501: athrow
    //   502: aload_1
    //   503: astore 6
    //   505: aload_0
    //   506: invokevirtual 172	java/lang/Object:getClass	()Ljava/lang/Class;
    //   509: invokevirtual 177	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   512: new 153	java/lang/StringBuilder
    //   515: dup
    //   516: ldc -29
    //   518: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   521: aload 7
    //   523: invokevirtual 182	java/io/IOException:getMessage	()Ljava/lang/String;
    //   526: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   529: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   532: invokestatic 164	io/branch/referral/q:V	(Ljava/lang/String;Ljava/lang/String;)V
    //   535: aload_1
    //   536: astore 6
    //   538: new 24	io/branch/referral/a/a$a
    //   541: dup
    //   542: bipush -113
    //   544: invokespecial 166	io/branch/referral/a/a$a:<init>	(I)V
    //   547: athrow
    //   548: astore_1
    //   549: aload 7
    //   551: astore 6
    //   553: goto -294 -> 259
    //   556: astore 6
    //   558: aload 7
    //   560: astore_1
    //   561: aload 6
    //   563: astore 7
    //   565: goto -63 -> 502
    //   568: astore 6
    //   570: iload_3
    //   571: istore_2
    //   572: goto -157 -> 415
    //   575: astore 7
    //   577: aload 8
    //   579: astore_1
    //   580: goto -368 -> 212
    //   583: goto -552 -> 31
    //   586: astore 7
    //   588: aload 9
    //   590: astore_1
    //   591: goto -89 -> 502
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	594	0	this	b
    //   0	594	1	paramString	String
    //   0	594	2	paramInt	int
    //   96	475	3	i	int
    //   19	371	4	j	int
    //   138	6	5	k	int
    //   14	166	6	localObject1	Object
    //   191	5	6	localInterruptedException1	InterruptedException
    //   203	6	6	localSocketException1	java.net.SocketException
    //   213	142	6	localObject2	Object
    //   357	1	6	localFileNotFoundException	java.io.FileNotFoundException
    //   394	13	6	localb	a.b
    //   409	1	6	localSocketTimeoutException1	java.net.SocketTimeoutException
    //   417	135	6	localObject3	Object
    //   556	6	6	localIOException1	IOException
    //   568	1	6	localSocketTimeoutException2	java.net.SocketTimeoutException
    //   46	518	7	localObject4	Object
    //   575	1	7	localSocketException2	java.net.SocketException
    //   586	1	7	localIOException2	IOException
    //   10	1	8	localObject5	Object
    //   474	104	8	localInterruptedException2	InterruptedException
    //   7	582	9	localObject6	Object
    //   4	408	10	localObject7	Object
    //   1	48	11	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   148	155	191	java/lang/InterruptedException
    //   97	104	203	java/net/SocketException
    //   106	113	203	java/net/SocketException
    //   115	122	203	java/net/SocketException
    //   132	140	203	java/net/SocketException
    //   148	155	203	java/net/SocketException
    //   161	169	203	java/net/SocketException
    //   195	200	203	java/net/SocketException
    //   281	289	203	java/net/SocketException
    //   291	310	203	java/net/SocketException
    //   325	344	203	java/net/SocketException
    //   361	382	203	java/net/SocketException
    //   384	396	203	java/net/SocketException
    //   16	21	258	finally
    //   35	44	258	finally
    //   52	95	258	finally
    //   215	245	258	finally
    //   248	258	258	finally
    //   419	426	258	finally
    //   435	442	258	finally
    //   446	455	258	finally
    //   480	485	258	finally
    //   492	502	258	finally
    //   505	535	258	finally
    //   538	548	258	finally
    //   281	289	357	java/io/FileNotFoundException
    //   291	310	357	java/io/FileNotFoundException
    //   325	344	357	java/io/FileNotFoundException
    //   16	21	409	java/net/SocketTimeoutException
    //   35	44	409	java/net/SocketTimeoutException
    //   52	95	409	java/net/SocketTimeoutException
    //   435	442	474	java/lang/InterruptedException
    //   97	104	548	finally
    //   106	113	548	finally
    //   115	122	548	finally
    //   132	140	548	finally
    //   148	155	548	finally
    //   161	169	548	finally
    //   195	200	548	finally
    //   281	289	548	finally
    //   291	310	548	finally
    //   325	344	548	finally
    //   361	382	548	finally
    //   384	396	548	finally
    //   97	104	556	java/io/IOException
    //   106	113	556	java/io/IOException
    //   115	122	556	java/io/IOException
    //   132	140	556	java/io/IOException
    //   148	155	556	java/io/IOException
    //   161	169	556	java/io/IOException
    //   195	200	556	java/io/IOException
    //   281	289	556	java/io/IOException
    //   291	310	556	java/io/IOException
    //   325	344	556	java/io/IOException
    //   361	382	556	java/io/IOException
    //   384	396	556	java/io/IOException
    //   97	104	568	java/net/SocketTimeoutException
    //   106	113	568	java/net/SocketTimeoutException
    //   115	122	568	java/net/SocketTimeoutException
    //   132	140	568	java/net/SocketTimeoutException
    //   148	155	568	java/net/SocketTimeoutException
    //   161	169	568	java/net/SocketTimeoutException
    //   195	200	568	java/net/SocketTimeoutException
    //   281	289	568	java/net/SocketTimeoutException
    //   291	310	568	java/net/SocketTimeoutException
    //   325	344	568	java/net/SocketTimeoutException
    //   361	382	568	java/net/SocketTimeoutException
    //   384	396	568	java/net/SocketTimeoutException
    //   16	21	575	java/net/SocketException
    //   35	44	575	java/net/SocketException
    //   52	95	575	java/net/SocketException
    //   16	21	586	java/io/IOException
    //   35	44	586	java/io/IOException
    //   52	95	586	java/io/IOException
  }
  
  private static String o(InputStream paramInputStream)
  {
    String str = null;
    if (paramInputStream != null) {
      paramInputStream = new BufferedReader(new InputStreamReader(paramInputStream));
    }
    try
    {
      str = paramInputStream.readLine();
      return str;
    }
    catch (IOException paramInputStream) {}
    return null;
  }
  
  public final a.b a(String paramString, JSONObject paramJSONObject)
    throws a.a
  {
    return a(paramString, paramJSONObject, 0);
  }
  
  public final a.b eS(String paramString)
    throws a.a
  {
    return m(paramString, 0);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */