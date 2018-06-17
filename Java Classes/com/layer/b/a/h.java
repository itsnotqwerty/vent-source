package com.layer.b.a;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public final class h
{
  /* Error */
  static org.json.JSONObject a(com.layer.b.d.a parama, java.net.URL paramURL, org.json.JSONObject paramJSONObject)
    throws java.io.IOException
  {
    // Byte code:
    //   0: new 12	com/b/a/o
    //   3: dup
    //   4: iconst_1
    //   5: ldc2_w 13
    //   8: invokespecial 18	com/b/a/o:<init>	(IJ)V
    //   11: astore 4
    //   13: new 20	com/b/a/x
    //   16: dup
    //   17: invokespecial 23	com/b/a/x:<init>	()V
    //   20: aload 4
    //   22: invokevirtual 27	com/b/a/x:b	(Lcom/b/a/o;)Lcom/b/a/x;
    //   25: new 29	com/layer/b/a/c
    //   28: dup
    //   29: invokespecial 30	com/layer/b/a/c:<init>	()V
    //   32: invokevirtual 33	com/b/a/x:a	(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;
    //   35: new 6	com/layer/b/a/h$1
    //   38: dup
    //   39: invokespecial 34	com/layer/b/a/h$1:<init>	()V
    //   42: invokevirtual 37	com/b/a/x:b	(Ljavax/net/ssl/HostnameVerifier;)Lcom/b/a/x;
    //   45: iconst_1
    //   46: anewarray 39	com/b/a/y
    //   49: dup
    //   50: iconst_0
    //   51: getstatic 43	com/b/a/y:bMk	Lcom/b/a/y;
    //   54: aastore
    //   55: invokestatic 49	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   58: invokevirtual 53	com/b/a/x:x	(Ljava/util/List;)Lcom/b/a/x;
    //   61: astore 5
    //   63: aload 5
    //   65: ldc2_w 13
    //   68: getstatic 59	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   71: invokevirtual 62	com/b/a/x:a	(JLjava/util/concurrent/TimeUnit;)V
    //   74: ldc 64
    //   76: invokestatic 70	com/b/a/w:dK	(Ljava/lang/String;)Lcom/b/a/w;
    //   79: astore_3
    //   80: aload 5
    //   82: aload_0
    //   83: new 72	com/b/a/aa$a
    //   86: dup
    //   87: invokespecial 73	com/b/a/aa$a:<init>	()V
    //   90: ldc 75
    //   92: ldc 77
    //   94: invokevirtual 81	com/b/a/aa$a:Q	(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    //   97: invokevirtual 86	com/layer/b/d/a:a	(Lcom/b/a/aa$a;)Lcom/b/a/aa$a;
    //   100: aload_3
    //   101: aload_2
    //   102: invokevirtual 92	org/json/JSONObject:toString	()Ljava/lang/String;
    //   105: invokevirtual 98	java/lang/String:getBytes	()[B
    //   108: invokestatic 103	com/b/a/ab:a	(Lcom/b/a/w;[B)Lcom/b/a/ab;
    //   111: invokevirtual 106	com/b/a/aa$a:a	(Lcom/b/a/ab;)Lcom/b/a/aa$a;
    //   114: aload_1
    //   115: invokevirtual 110	com/b/a/aa$a:g	(Ljava/net/URL;)Lcom/b/a/aa$a;
    //   118: invokevirtual 114	com/b/a/aa$a:An	()Lcom/b/a/aa;
    //   121: invokevirtual 118	com/b/a/x:e	(Lcom/b/a/aa;)Lcom/b/a/h;
    //   124: astore_2
    //   125: aload_2
    //   126: invokevirtual 124	com/b/a/h:xb	()Lcom/b/a/ac;
    //   129: astore_3
    //   130: aload_3
    //   131: invokevirtual 130	com/b/a/ac:Ap	()Lcom/b/a/b;
    //   134: astore_0
    //   135: aload_3
    //   136: invokevirtual 134	com/b/a/ac:c	()I
    //   139: sipush 200
    //   142: if_icmpeq +121 -> 263
    //   145: bipush 6
    //   147: invokestatic 139	com/layer/b/e/a:a	(I)Z
    //   150: ifeq +46 -> 196
    //   153: new 141	java/lang/StringBuilder
    //   156: dup
    //   157: ldc -113
    //   159: invokespecial 146	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: aload_3
    //   163: invokevirtual 134	com/b/a/ac:c	()I
    //   166: invokevirtual 150	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   169: ldc -104
    //   171: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload_1
    //   175: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   178: ldc -96
    //   180: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload_0
    //   184: invokevirtual 165	com/b/a/b:f	()Ljava/lang/String;
    //   187: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: invokestatic 168	com/layer/b/e/a:c	(Ljava/lang/String;)V
    //   196: new 170	com/layer/b/a/i
    //   199: dup
    //   200: aload_3
    //   201: invokevirtual 134	com/b/a/ac:c	()I
    //   204: new 141	java/lang/StringBuilder
    //   207: dup
    //   208: ldc -113
    //   210: invokespecial 146	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   213: aload_3
    //   214: invokevirtual 134	com/b/a/ac:c	()I
    //   217: invokevirtual 150	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   220: invokevirtual 166	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: invokespecial 173	com/layer/b/a/i:<init>	(ILjava/lang/String;)V
    //   226: athrow
    //   227: astore_3
    //   228: aload_0
    //   229: astore_1
    //   230: aload_3
    //   231: astore_0
    //   232: aload_1
    //   233: ifnull +7 -> 240
    //   236: aload_1
    //   237: invokevirtual 175	com/b/a/b:close	()V
    //   240: aload_2
    //   241: ifnull +7 -> 248
    //   244: aload_2
    //   245: invokevirtual 177	com/b/a/h:c	()V
    //   248: aload 5
    //   250: invokevirtual 181	com/b/a/x:Ag	()Lcom/b/a/o;
    //   253: ifnull +8 -> 261
    //   256: aload 4
    //   258: invokevirtual 184	com/b/a/o:d	()V
    //   261: aload_0
    //   262: athrow
    //   263: new 88	org/json/JSONObject
    //   266: dup
    //   267: new 94	java/lang/String
    //   270: dup
    //   271: aload_0
    //   272: invokevirtual 187	com/b/a/b:yf	()[B
    //   275: invokespecial 190	java/lang/String:<init>	([B)V
    //   278: invokespecial 191	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   281: astore_1
    //   282: aload_0
    //   283: ifnull +7 -> 290
    //   286: aload_0
    //   287: invokevirtual 175	com/b/a/b:close	()V
    //   290: aload_2
    //   291: invokevirtual 177	com/b/a/h:c	()V
    //   294: aload 5
    //   296: invokevirtual 181	com/b/a/x:Ag	()Lcom/b/a/o;
    //   299: ifnull +8 -> 307
    //   302: aload 4
    //   304: invokevirtual 184	com/b/a/o:d	()V
    //   307: aload_1
    //   308: areturn
    //   309: astore_0
    //   310: bipush 6
    //   312: invokestatic 139	com/layer/b/e/a:a	(I)Z
    //   315: ifeq -25 -> 290
    //   318: aload_0
    //   319: invokevirtual 194	java/io/IOException:getMessage	()Ljava/lang/String;
    //   322: aload_0
    //   323: invokestatic 197	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   326: goto -36 -> 290
    //   329: astore_1
    //   330: bipush 6
    //   332: invokestatic 139	com/layer/b/e/a:a	(I)Z
    //   335: ifeq -95 -> 240
    //   338: aload_1
    //   339: invokevirtual 194	java/io/IOException:getMessage	()Ljava/lang/String;
    //   342: aload_1
    //   343: invokestatic 197	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   346: goto -106 -> 240
    //   349: astore_0
    //   350: aconst_null
    //   351: astore_1
    //   352: aconst_null
    //   353: astore_2
    //   354: goto -122 -> 232
    //   357: astore_0
    //   358: aconst_null
    //   359: astore_1
    //   360: goto -128 -> 232
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	363	0	parama	com.layer.b.d.a
    //   0	363	1	paramURL	java.net.URL
    //   0	363	2	paramJSONObject	org.json.JSONObject
    //   79	135	3	localObject1	Object
    //   227	4	3	localObject2	Object
    //   11	292	4	localo	com.b.a.o
    //   61	234	5	localx	com.b.a.x
    // Exception table:
    //   from	to	target	type
    //   135	196	227	finally
    //   196	227	227	finally
    //   263	282	227	finally
    //   286	290	309	java/io/IOException
    //   236	240	329	java/io/IOException
    //   80	125	349	finally
    //   125	135	357	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */