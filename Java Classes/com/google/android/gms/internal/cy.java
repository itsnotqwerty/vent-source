package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.e;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class cy
  extends bb
{
  private static final byte[] aPa = "\n".getBytes();
  private final String aLm = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { "GoogleAnalytics", bc.VERSION, Build.VERSION.RELEASE, di.c(Locale.getDefault()), Build.MODEL, Build.ID });
  private final dh aOZ;
  
  cy(bd parambd)
  {
    super(parambd);
    this.aOZ = new dh(parambd.aBm);
  }
  
  private final int a(URL paramURL)
  {
    ae.E(paramURL);
    e("GET request", paramURL);
    Object localObject = null;
    URL localURL = null;
    try
    {
      paramURL = b(paramURL);
      localURL = paramURL;
      localObject = paramURL;
      paramURL.connect();
      localURL = paramURL;
      localObject = paramURL;
      a(paramURL);
      localURL = paramURL;
      localObject = paramURL;
      int i = paramURL.getResponseCode();
      if (i == 200)
      {
        localURL = paramURL;
        localObject = paramURL;
        this.aMq.pi().pb();
      }
      localURL = paramURL;
      localObject = paramURL;
      e("GET status", Integer.valueOf(i));
      if (paramURL != null) {
        paramURL.disconnect();
      }
      return i;
    }
    catch (IOException paramURL)
    {
      localObject = localURL;
      g("Network GET connection error", paramURL);
      if (localURL != null) {
        localURL.disconnect();
      }
      return 0;
    }
    finally
    {
      if (localObject != null) {
        ((HttpURLConnection)localObject).disconnect();
      }
    }
  }
  
  /* Error */
  private final int a(URL paramURL, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 92	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_2
    //   6: invokestatic 92	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   9: pop
    //   10: aload_0
    //   11: ldc -108
    //   13: aload_2
    //   14: arraylength
    //   15: invokestatic 137	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   18: aload_1
    //   19: invokevirtual 151	com/google/android/gms/internal/ba:b	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   22: invokestatic 155	com/google/android/gms/internal/cy:pe	()Z
    //   25: ifeq +17 -> 42
    //   28: aload_0
    //   29: ldc -99
    //   31: new 16	java/lang/String
    //   34: dup
    //   35: aload_2
    //   36: invokespecial 160	java/lang/String:<init>	([B)V
    //   39: invokevirtual 163	com/google/android/gms/internal/ba:d	(Ljava/lang/String;Ljava/lang/Object;)V
    //   42: aload_0
    //   43: getfield 120	com/google/android/gms/internal/ba:aMq	Lcom/google/android/gms/internal/bd;
    //   46: getfield 167	com/google/android/gms/internal/bd:mContext	Landroid/content/Context;
    //   49: invokevirtual 173	android/content/Context:getPackageName	()Ljava/lang/String;
    //   52: pop
    //   53: aload_0
    //   54: aload_1
    //   55: invokespecial 104	com/google/android/gms/internal/cy:b	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   58: astore_1
    //   59: aload_1
    //   60: iconst_1
    //   61: invokevirtual 177	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   64: aload_1
    //   65: aload_2
    //   66: arraylength
    //   67: invokevirtual 181	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   70: aload_1
    //   71: invokevirtual 109	java/net/HttpURLConnection:connect	()V
    //   74: aload_1
    //   75: invokevirtual 185	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   78: astore 7
    //   80: aload 7
    //   82: astore 5
    //   84: aload_1
    //   85: astore 4
    //   87: aload 7
    //   89: aload_2
    //   90: invokevirtual 190	java/io/OutputStream:write	([B)V
    //   93: aload 7
    //   95: astore 5
    //   97: aload_1
    //   98: astore 4
    //   100: aload_0
    //   101: aload_1
    //   102: invokespecial 112	com/google/android/gms/internal/cy:a	(Ljava/net/HttpURLConnection;)V
    //   105: aload 7
    //   107: astore 5
    //   109: aload_1
    //   110: astore 4
    //   112: aload_1
    //   113: invokevirtual 116	java/net/HttpURLConnection:getResponseCode	()I
    //   116: istore_3
    //   117: iload_3
    //   118: sipush 200
    //   121: if_icmpne +20 -> 141
    //   124: aload 7
    //   126: astore 5
    //   128: aload_1
    //   129: astore 4
    //   131: aload_0
    //   132: getfield 120	com/google/android/gms/internal/ba:aMq	Lcom/google/android/gms/internal/bd;
    //   135: invokevirtual 124	com/google/android/gms/internal/bd:pi	()Lcom/google/android/gms/internal/av;
    //   138: invokevirtual 129	com/google/android/gms/internal/av:pb	()V
    //   141: aload 7
    //   143: astore 5
    //   145: aload_1
    //   146: astore 4
    //   148: aload_0
    //   149: ldc -64
    //   151: iload_3
    //   152: invokestatic 137	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   155: invokevirtual 100	com/google/android/gms/internal/ba:e	(Ljava/lang/String;Ljava/lang/Object;)V
    //   158: aload 7
    //   160: ifnull +8 -> 168
    //   163: aload 7
    //   165: invokevirtual 195	java/io/OutputStream:close	()V
    //   168: aload_1
    //   169: ifnull +7 -> 176
    //   172: aload_1
    //   173: invokevirtual 140	java/net/HttpURLConnection:disconnect	()V
    //   176: iload_3
    //   177: ireturn
    //   178: astore_2
    //   179: aload_0
    //   180: ldc -59
    //   182: aload_2
    //   183: invokevirtual 200	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   186: goto -18 -> 168
    //   189: astore 6
    //   191: aconst_null
    //   192: astore_2
    //   193: aconst_null
    //   194: astore_1
    //   195: aload_2
    //   196: astore 5
    //   198: aload_1
    //   199: astore 4
    //   201: aload_0
    //   202: ldc -54
    //   204: aload 6
    //   206: invokevirtual 145	com/google/android/gms/internal/ba:g	(Ljava/lang/String;Ljava/lang/Object;)V
    //   209: aload_2
    //   210: ifnull +7 -> 217
    //   213: aload_2
    //   214: invokevirtual 195	java/io/OutputStream:close	()V
    //   217: aload_1
    //   218: ifnull +7 -> 225
    //   221: aload_1
    //   222: invokevirtual 140	java/net/HttpURLConnection:disconnect	()V
    //   225: iconst_0
    //   226: ireturn
    //   227: astore_2
    //   228: aload_0
    //   229: ldc -59
    //   231: aload_2
    //   232: invokevirtual 200	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   235: goto -18 -> 217
    //   238: astore_2
    //   239: aconst_null
    //   240: astore 5
    //   242: aconst_null
    //   243: astore_1
    //   244: aload 5
    //   246: ifnull +8 -> 254
    //   249: aload 5
    //   251: invokevirtual 195	java/io/OutputStream:close	()V
    //   254: aload_1
    //   255: ifnull +7 -> 262
    //   258: aload_1
    //   259: invokevirtual 140	java/net/HttpURLConnection:disconnect	()V
    //   262: aload_2
    //   263: athrow
    //   264: astore 4
    //   266: aload_0
    //   267: ldc -59
    //   269: aload 4
    //   271: invokevirtual 200	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   274: goto -20 -> 254
    //   277: astore_2
    //   278: aconst_null
    //   279: astore 5
    //   281: goto -37 -> 244
    //   284: astore_2
    //   285: aload 4
    //   287: astore_1
    //   288: goto -44 -> 244
    //   291: astore 6
    //   293: aconst_null
    //   294: astore_2
    //   295: goto -100 -> 195
    //   298: astore 6
    //   300: aload 7
    //   302: astore_2
    //   303: goto -108 -> 195
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	306	0	this	cy
    //   0	306	1	paramURL	URL
    //   0	306	2	paramArrayOfByte	byte[]
    //   116	61	3	i	int
    //   85	115	4	localURL	URL
    //   264	22	4	localIOException1	IOException
    //   82	198	5	localObject	Object
    //   189	16	6	localIOException2	IOException
    //   291	1	6	localIOException3	IOException
    //   298	1	6	localIOException4	IOException
    //   78	223	7	localOutputStream	java.io.OutputStream
    // Exception table:
    //   from	to	target	type
    //   163	168	178	java/io/IOException
    //   42	59	189	java/io/IOException
    //   213	217	227	java/io/IOException
    //   42	59	238	finally
    //   249	254	264	java/io/IOException
    //   59	80	277	finally
    //   87	93	284	finally
    //   100	105	284	finally
    //   112	117	284	finally
    //   131	141	284	finally
    //   148	158	284	finally
    //   201	209	284	finally
    //   59	80	291	java/io/IOException
    //   87	93	298	java/io/IOException
    //   100	105	298	java/io/IOException
    //   112	117	298	java/io/IOException
    //   131	141	298	java/io/IOException
    //   148	158	298	java/io/IOException
  }
  
  private static void a(StringBuilder paramStringBuilder, String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    if (paramStringBuilder.length() != 0) {
      paramStringBuilder.append('&');
    }
    paramStringBuilder.append(URLEncoder.encode(paramString1, "UTF-8"));
    paramStringBuilder.append('=');
    paramStringBuilder.append(URLEncoder.encode(paramString2, "UTF-8"));
  }
  
  private final void a(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    localHttpURLConnection = null;
    try
    {
      paramHttpURLConnection = paramHttpURLConnection.getInputStream();
      localHttpURLConnection = paramHttpURLConnection;
      byte[] arrayOfByte = new byte['Ѐ'];
      int i;
      do
      {
        localHttpURLConnection = paramHttpURLConnection;
        i = paramHttpURLConnection.read(arrayOfByte);
      } while (i > 0);
      if (paramHttpURLConnection != null) {}
      try
      {
        paramHttpURLConnection.close();
        return;
      }
      catch (IOException paramHttpURLConnection)
      {
        h("Error closing http connection input stream", paramHttpURLConnection);
        return;
      }
      try
      {
        localHttpURLConnection.close();
        throw paramHttpURLConnection;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          h("Error closing http connection input stream", localIOException);
        }
      }
    }
    finally
    {
      if (localHttpURLConnection == null) {}
    }
  }
  
  /* Error */
  private final int b(URL paramURL, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 92	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_2
    //   6: invokestatic 92	com/google/android/gms/common/internal/ae:E	(Ljava/lang/Object;)Ljava/lang/Object;
    //   9: pop
    //   10: aload_0
    //   11: getfield 120	com/google/android/gms/internal/ba:aMq	Lcom/google/android/gms/internal/bd;
    //   14: getfield 167	com/google/android/gms/internal/bd:mContext	Landroid/content/Context;
    //   17: invokevirtual 173	android/content/Context:getPackageName	()Ljava/lang/String;
    //   20: pop
    //   21: new 241	java/io/ByteArrayOutputStream
    //   24: dup
    //   25: invokespecial 243	java/io/ByteArrayOutputStream:<init>	()V
    //   28: astore 4
    //   30: new 245	java/util/zip/GZIPOutputStream
    //   33: dup
    //   34: aload 4
    //   36: invokespecial 248	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   39: astore 5
    //   41: aload 5
    //   43: aload_2
    //   44: invokevirtual 249	java/util/zip/GZIPOutputStream:write	([B)V
    //   47: aload 5
    //   49: invokevirtual 250	java/util/zip/GZIPOutputStream:close	()V
    //   52: aload 4
    //   54: invokevirtual 251	java/io/ByteArrayOutputStream:close	()V
    //   57: aload 4
    //   59: invokevirtual 254	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   62: astore 6
    //   64: aload_0
    //   65: ldc_w 256
    //   68: aload 6
    //   70: arraylength
    //   71: invokestatic 137	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   74: ldc2_w 257
    //   77: aload 6
    //   79: arraylength
    //   80: i2l
    //   81: lmul
    //   82: aload_2
    //   83: arraylength
    //   84: i2l
    //   85: ldiv
    //   86: invokestatic 263	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   89: aload_1
    //   90: invokevirtual 266	com/google/android/gms/internal/ba:a	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   93: aload 6
    //   95: arraylength
    //   96: aload_2
    //   97: arraylength
    //   98: if_icmple +21 -> 119
    //   101: aload_0
    //   102: ldc_w 268
    //   105: aload 6
    //   107: arraylength
    //   108: invokestatic 137	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   111: aload_2
    //   112: arraylength
    //   113: invokestatic 137	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   116: invokevirtual 270	com/google/android/gms/internal/ba:c	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   119: invokestatic 155	com/google/android/gms/internal/cy:pe	()Z
    //   122: ifeq +37 -> 159
    //   125: new 16	java/lang/String
    //   128: dup
    //   129: aload_2
    //   130: invokespecial 160	java/lang/String:<init>	([B)V
    //   133: invokestatic 273	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   136: astore_2
    //   137: aload_2
    //   138: invokevirtual 274	java/lang/String:length	()I
    //   141: ifeq +124 -> 265
    //   144: ldc 14
    //   146: aload_2
    //   147: invokevirtual 278	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   150: astore_2
    //   151: aload_0
    //   152: ldc_w 280
    //   155: aload_2
    //   156: invokevirtual 163	com/google/android/gms/internal/ba:d	(Ljava/lang/String;Ljava/lang/Object;)V
    //   159: aload_0
    //   160: aload_1
    //   161: invokespecial 104	com/google/android/gms/internal/cy:b	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   164: astore_1
    //   165: aload_1
    //   166: iconst_1
    //   167: invokevirtual 177	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   170: aload_1
    //   171: ldc_w 282
    //   174: ldc_w 284
    //   177: invokevirtual 288	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   180: aload_1
    //   181: aload 6
    //   183: arraylength
    //   184: invokevirtual 181	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   187: aload_1
    //   188: invokevirtual 109	java/net/HttpURLConnection:connect	()V
    //   191: aload_1
    //   192: invokevirtual 185	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   195: astore_2
    //   196: aload_2
    //   197: astore 5
    //   199: aload_1
    //   200: astore 4
    //   202: aload_2
    //   203: aload 6
    //   205: invokevirtual 190	java/io/OutputStream:write	([B)V
    //   208: aload_2
    //   209: astore 5
    //   211: aload_1
    //   212: astore 4
    //   214: aload_2
    //   215: invokevirtual 195	java/io/OutputStream:close	()V
    //   218: aload_0
    //   219: aload_1
    //   220: invokespecial 112	com/google/android/gms/internal/cy:a	(Ljava/net/HttpURLConnection;)V
    //   223: aload_1
    //   224: invokevirtual 116	java/net/HttpURLConnection:getResponseCode	()I
    //   227: istore_3
    //   228: iload_3
    //   229: sipush 200
    //   232: if_icmpne +13 -> 245
    //   235: aload_0
    //   236: getfield 120	com/google/android/gms/internal/ba:aMq	Lcom/google/android/gms/internal/bd;
    //   239: invokevirtual 124	com/google/android/gms/internal/bd:pi	()Lcom/google/android/gms/internal/av;
    //   242: invokevirtual 129	com/google/android/gms/internal/av:pb	()V
    //   245: aload_0
    //   246: ldc -64
    //   248: iload_3
    //   249: invokestatic 137	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   252: invokevirtual 100	com/google/android/gms/internal/ba:e	(Ljava/lang/String;Ljava/lang/Object;)V
    //   255: aload_1
    //   256: ifnull +7 -> 263
    //   259: aload_1
    //   260: invokevirtual 140	java/net/HttpURLConnection:disconnect	()V
    //   263: iload_3
    //   264: ireturn
    //   265: new 16	java/lang/String
    //   268: dup
    //   269: ldc 14
    //   271: invokespecial 291	java/lang/String:<init>	(Ljava/lang/String;)V
    //   274: astore_2
    //   275: goto -124 -> 151
    //   278: astore 6
    //   280: aconst_null
    //   281: astore_2
    //   282: aconst_null
    //   283: astore_1
    //   284: aload_2
    //   285: astore 5
    //   287: aload_1
    //   288: astore 4
    //   290: aload_0
    //   291: ldc_w 293
    //   294: aload 6
    //   296: invokevirtual 145	com/google/android/gms/internal/ba:g	(Ljava/lang/String;Ljava/lang/Object;)V
    //   299: aload_2
    //   300: ifnull +7 -> 307
    //   303: aload_2
    //   304: invokevirtual 195	java/io/OutputStream:close	()V
    //   307: aload_1
    //   308: ifnull +7 -> 315
    //   311: aload_1
    //   312: invokevirtual 140	java/net/HttpURLConnection:disconnect	()V
    //   315: iconst_0
    //   316: ireturn
    //   317: astore_2
    //   318: aload_0
    //   319: ldc_w 295
    //   322: aload_2
    //   323: invokevirtual 200	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   326: goto -19 -> 307
    //   329: astore_2
    //   330: aconst_null
    //   331: astore 5
    //   333: aconst_null
    //   334: astore_1
    //   335: aload 5
    //   337: ifnull +8 -> 345
    //   340: aload 5
    //   342: invokevirtual 195	java/io/OutputStream:close	()V
    //   345: aload_1
    //   346: ifnull +7 -> 353
    //   349: aload_1
    //   350: invokevirtual 140	java/net/HttpURLConnection:disconnect	()V
    //   353: aload_2
    //   354: athrow
    //   355: astore 4
    //   357: aload_0
    //   358: ldc_w 295
    //   361: aload 4
    //   363: invokevirtual 200	com/google/android/gms/internal/ba:h	(Ljava/lang/String;Ljava/lang/Object;)V
    //   366: goto -21 -> 345
    //   369: astore_2
    //   370: aconst_null
    //   371: astore 5
    //   373: goto -38 -> 335
    //   376: astore_2
    //   377: aload 4
    //   379: astore_1
    //   380: goto -45 -> 335
    //   383: astore 6
    //   385: aconst_null
    //   386: astore_2
    //   387: goto -103 -> 284
    //   390: astore 6
    //   392: goto -108 -> 284
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	395	0	this	cy
    //   0	395	1	paramURL	URL
    //   0	395	2	paramArrayOfByte	byte[]
    //   227	37	3	i	int
    //   28	261	4	localObject1	Object
    //   355	23	4	localIOException1	IOException
    //   39	333	5	localObject2	Object
    //   62	142	6	arrayOfByte	byte[]
    //   278	17	6	localIOException2	IOException
    //   383	1	6	localIOException3	IOException
    //   390	1	6	localIOException4	IOException
    // Exception table:
    //   from	to	target	type
    //   10	119	278	java/io/IOException
    //   119	151	278	java/io/IOException
    //   151	159	278	java/io/IOException
    //   159	165	278	java/io/IOException
    //   265	275	278	java/io/IOException
    //   303	307	317	java/io/IOException
    //   10	119	329	finally
    //   119	151	329	finally
    //   151	159	329	finally
    //   159	165	329	finally
    //   265	275	329	finally
    //   340	345	355	java/io/IOException
    //   165	196	369	finally
    //   218	228	369	finally
    //   235	245	369	finally
    //   245	255	369	finally
    //   202	208	376	finally
    //   214	218	376	finally
    //   290	299	376	finally
    //   165	196	383	java/io/IOException
    //   218	228	383	java/io/IOException
    //   235	245	383	java/io/IOException
    //   245	255	383	java/io/IOException
    //   202	208	390	java/io/IOException
    //   214	218	390	java/io/IOException
  }
  
  private final HttpURLConnection b(URL paramURL)
    throws IOException
  {
    paramURL = paramURL.openConnection();
    if (!(paramURL instanceof HttpURLConnection)) {
      throw new IOException("Failed to obtain http connection");
    }
    paramURL = (HttpURLConnection)paramURL;
    paramURL.setDefaultUseCaches(false);
    paramURL.setConnectTimeout(((Integer)cm.aOr.aOE).intValue());
    paramURL.setReadTimeout(((Integer)cm.aOs.aOE).intValue());
    paramURL.setInstanceFollowRedirects(false);
    paramURL.setRequestProperty("User-Agent", this.aLm);
    paramURL.setDoInput(true);
    return paramURL;
  }
  
  private final URL b(cr paramcr, String paramString)
  {
    String str;
    if (paramcr.aOO)
    {
      paramcr = ce.pR();
      str = ce.pT();
    }
    for (paramcr = String.valueOf(paramcr).length() + 1 + String.valueOf(str).length() + String.valueOf(paramString).length() + paramcr + str + "?" + paramString;; paramcr = String.valueOf(paramcr).length() + 1 + String.valueOf(str).length() + String.valueOf(paramString).length() + paramcr + str + "?" + paramString)
    {
      try
      {
        paramcr = new URL(paramcr);
        return paramcr;
      }
      catch (MalformedURLException paramcr)
      {
        h("Error trying to parse the hardcoded host url", paramcr);
      }
      paramcr = ce.pS();
      str = ce.pT();
    }
    return null;
  }
  
  private final URL d(cr paramcr)
  {
    String str;
    if (paramcr.aOO)
    {
      paramcr = String.valueOf(ce.pR());
      str = String.valueOf(ce.pT());
      if (str.length() != 0) {}
      for (paramcr = paramcr.concat(str);; paramcr = new String(paramcr)) {
        try
        {
          paramcr = new URL(paramcr);
          return paramcr;
        }
        catch (MalformedURLException paramcr)
        {
          h("Error trying to parse the hardcoded host url", paramcr);
        }
      }
    }
    else
    {
      paramcr = String.valueOf(ce.pS());
      str = String.valueOf(ce.pT());
      if (str.length() != 0) {}
      for (paramcr = paramcr.concat(str);; paramcr = new String(paramcr)) {
        break;
      }
    }
    return null;
  }
  
  private final URL qf()
  {
    Object localObject = String.valueOf(ce.pR());
    String str = String.valueOf((String)cm.aOg.aOE);
    if (str.length() != 0) {}
    for (localObject = ((String)localObject).concat(str);; localObject = new String((String)localObject)) {
      try
      {
        localObject = new URL((String)localObject);
        return (URL)localObject;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        h("Error trying to parse the hardcoded host url", localMalformedURLException);
      }
    }
    return null;
  }
  
  private final List<Long> s(List<cr> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    cr localcr;
    boolean bool;
    label58:
    Object localObject;
    int i;
    if (paramList.hasNext())
    {
      localcr = (cr)paramList.next();
      ae.E(localcr);
      if (localcr.aOO) {
        break label125;
      }
      bool = true;
      localObject = a(localcr, bool);
      if (localObject != null) {
        break label130;
      }
      this.aMq.pg().a(localcr, "Error formatting hit for upload");
      i = 1;
    }
    for (;;)
    {
      if (i != 0)
      {
        localArrayList.add(Long.valueOf(localcr.aOL));
        if (localArrayList.size() < ce.pP()) {
          break;
        }
      }
      return localArrayList;
      label125:
      bool = false;
      break label58;
      label130:
      if (((String)localObject).length() <= ((Integer)cm.aOh.aOE).intValue())
      {
        localObject = b(localcr, (String)localObject);
        if (localObject == null) {
          bA("Failed to build collect GET endpoint url");
        }
      }
      URL localURL;
      label301:
      do
      {
        for (;;)
        {
          i = 0;
          break;
          if (a((URL)localObject) == 200)
          {
            i = 1;
            break;
          }
          i = 0;
          break;
          localObject = a(localcr, false);
          if (localObject == null)
          {
            this.aMq.pg().a(localcr, "Error formatting hit for POST upload");
            i = 1;
            break;
          }
          localObject = ((String)localObject).getBytes();
          if (localObject.length > ((Integer)cm.aOm.aOE).intValue())
          {
            this.aMq.pg().a(localcr, "Hit payload exceeds size limit");
            i = 1;
            break;
          }
          localURL = d(localcr);
          if (localURL != null) {
            break label301;
          }
          bA("Failed to build collect POST endpoint url");
        }
      } while (a(localURL, (byte[])localObject) != 200);
      i = 1;
    }
  }
  
  final String a(cr paramcr, boolean paramBoolean)
  {
    ae.E(paramcr);
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      Iterator localIterator = paramcr.aAV.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        if ((!"ht".equals(str)) && (!"qt".equals(str)) && (!"AppUID".equals(str)) && (!"z".equals(str)) && (!"_gmsv".equals(str))) {
          a(localStringBuilder, str, (String)localEntry.getValue());
        }
      }
      a(localStringBuilder, "ht", String.valueOf(paramcr.aOM));
    }
    catch (UnsupportedEncodingException paramcr)
    {
      h("Failed to encode name or value", paramcr);
      return null;
    }
    a(localStringBuilder, "qt", String.valueOf(this.aMq.aBm.currentTimeMillis() - paramcr.aOM));
    long l;
    if (paramBoolean)
    {
      l = di.bK(paramcr.r("_s", "0"));
      if (l == 0L) {
        break label237;
      }
    }
    for (paramcr = String.valueOf(l);; paramcr = String.valueOf(l))
    {
      a(localStringBuilder, "z", paramcr);
      return localStringBuilder.toString();
      label237:
      l = paramcr.aOL;
    }
  }
  
  protected final void mG()
  {
    d("Network initialized. User agent", this.aLm);
  }
  
  public final boolean qe()
  {
    n.mN();
    pf();
    Object localObject1 = (ConnectivityManager)this.aMq.mContext.getSystemService("connectivity");
    try
    {
      localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
      if ((localObject1 == null) || (!((NetworkInfo)localObject1).isConnected()))
      {
        bw("No network connectivity");
        return false;
      }
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
    return true;
  }
  
  public final List<Long> r(List<cr> paramList)
  {
    boolean bool2 = true;
    n.mN();
    pf();
    ae.E(paramList);
    int j;
    boolean bool1;
    int i;
    if ((this.aMq.aMu.pU().isEmpty()) || (!this.aOZ.o(((Integer)cm.aOp.aOE).intValue() * 1000L)))
    {
      j = 0;
      bool1 = false;
      i = j;
      label67:
      if (i == 0) {
        break label380;
      }
      if (paramList.isEmpty()) {
        break label232;
      }
    }
    cz localcz;
    ArrayList localArrayList;
    for (;;)
    {
      ae.au(bool2);
      a("Uploading batched hits. compression, count", Boolean.valueOf(bool1), Integer.valueOf(paramList.size()));
      localcz = new cz(this);
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        cr localcr = (cr)paramList.next();
        if (!localcz.e(localcr)) {
          break;
        }
        localArrayList.add(Long.valueOf(localcr.aOL));
      }
      if (bu.bG((String)cm.aOi.aOE) != bu.aNn) {}
      for (i = 1;; i = 0)
      {
        j = i;
        if (ca.bH((String)cm.aOj.aOE) != ca.aNy) {
          break;
        }
        bool1 = true;
        break label67;
      }
      label232:
      bool2 = false;
    }
    if (localcz.aPb == 0) {
      return localArrayList;
    }
    paramList = qf();
    if (paramList == null) {
      bA("Failed to build batching endpoint url");
    }
    for (;;)
    {
      return Collections.emptyList();
      if (bool1) {}
      for (i = b(paramList, localcz.aPc.toByteArray()); 200 == i; i = a(paramList, localcz.aPc.toByteArray()))
      {
        d("Batched upload completed. Hits batched", Integer.valueOf(localcz.aPb));
        return localArrayList;
      }
      d("Network error uploading hits. status code", Integer.valueOf(i));
      if (this.aMq.aMu.pU().contains(Integer.valueOf(i)))
      {
        bz("Server instructed the client to stop batching");
        this.aOZ.start();
      }
    }
    label380:
    return s(paramList);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */