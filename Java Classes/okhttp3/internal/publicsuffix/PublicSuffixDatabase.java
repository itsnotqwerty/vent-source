package okhttp3.internal.publicsuffix;

import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.c;

public final class PublicSuffixDatabase
{
  private static final String[] EMPTY_RULE = new String[0];
  private static final String[] PREVAILING_RULE = { "*" };
  private static final byte[] WILDCARD_LABEL = { 42 };
  private static final PublicSuffixDatabase dbR = new PublicSuffixDatabase();
  private final AtomicBoolean listRead = new AtomicBoolean(false);
  private byte[] publicSuffixExceptionListBytes;
  private byte[] publicSuffixListBytes;
  private final CountDownLatch readCompleteLatch = new CountDownLatch(1);
  
  public static PublicSuffixDatabase Nh()
  {
    return dbR;
  }
  
  private static String binarySearchBytes(byte[] paramArrayOfByte, byte[][] paramArrayOfByte1, int paramInt)
  {
    int j = paramArrayOfByte.length;
    int i = 0;
    if (i < j)
    {
      int k = (i + j) / 2;
      while ((k >= 0) && (paramArrayOfByte[k] != 10)) {
        k -= 1;
      }
      int i5 = k + 1;
      int i1 = 1;
      while (paramArrayOfByte[(i5 + i1)] != 10) {
        i1 += 1;
      }
      int i6 = i5 + i1 - i5;
      k = 0;
      int m = 0;
      int n = 0;
      int i2 = paramInt;
      int i3;
      if (n != 0)
      {
        i3 = 46;
        n = 0;
      }
      int i7;
      int i4;
      for (;;)
      {
        i7 = i3 - (paramArrayOfByte[(i5 + m)] & 0xFF);
        if (i7 != 0) {
          break label338;
        }
        m += 1;
        i4 = k + 1;
        if (m == i6) {
          break label209;
        }
        k = i4;
        i3 = i2;
        if (paramArrayOfByte1[i2].length == i4)
        {
          if (i2 == paramArrayOfByte1.length - 1) {
            break label209;
          }
          i3 = i2 + 1;
          k = -1;
          n = 1;
        }
        i2 = i3;
        break;
        i3 = paramArrayOfByte1[i2][k] & 0xFF;
      }
      for (;;)
      {
        label209:
        if (i7 < 0)
        {
          j = i5 - 1;
          break;
        }
        if (i7 > 0)
        {
          i = i1 + i5 + 1;
          break;
        }
        n = i6 - m;
        m = paramArrayOfByte1[i2].length - i4;
        k = i2 + 1;
        while (k < paramArrayOfByte1.length)
        {
          m += paramArrayOfByte1[k].length;
          k += 1;
        }
        if (m < n)
        {
          j = i5 - 1;
          break;
        }
        if (m > n)
        {
          i = i1 + i5 + 1;
          break;
        }
        return new String(paramArrayOfByte, i5, i6, c.UTF_8);
        label338:
        i4 = k;
      }
    }
    return null;
  }
  
  /* Error */
  private String[] findMatchingRule(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: iconst_0
    //   4: istore_3
    //   5: aload_0
    //   6: getfield 43	okhttp3/internal/publicsuffix/PublicSuffixDatabase:listRead	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   9: invokevirtual 75	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   12: ifne +213 -> 225
    //   15: aload_0
    //   16: getfield 43	okhttp3/internal/publicsuffix/PublicSuffixDatabase:listRead	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   19: iconst_0
    //   20: iconst_1
    //   21: invokevirtual 79	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   24: ifeq +201 -> 225
    //   27: iconst_0
    //   28: istore_2
    //   29: ldc 2
    //   31: ldc 81
    //   33: invokevirtual 87	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   36: astore 4
    //   38: aload 4
    //   40: ifnull +88 -> 128
    //   43: new 89	d/j
    //   46: dup
    //   47: aload 4
    //   49: invokestatic 95	d/l:t	(Ljava/io/InputStream;)Ld/s;
    //   52: invokespecial 98	d/j:<init>	(Ld/s;)V
    //   55: invokestatic 102	d/l:b	(Ld/s;)Ld/e;
    //   58: astore 4
    //   60: aload 4
    //   62: invokeinterface 108 1 0
    //   67: newarray <illegal type>
    //   69: astore 5
    //   71: aload 4
    //   73: aload 5
    //   75: invokeinterface 112 2 0
    //   80: aload 4
    //   82: invokeinterface 108 1 0
    //   87: newarray <illegal type>
    //   89: astore 7
    //   91: aload 4
    //   93: aload 7
    //   95: invokeinterface 112 2 0
    //   100: aload 4
    //   102: invokestatic 116	okhttp3/internal/c:closeQuietly	(Ljava/io/Closeable;)V
    //   105: aload_0
    //   106: monitorenter
    //   107: aload_0
    //   108: aload 5
    //   110: putfield 118	okhttp3/internal/publicsuffix/PublicSuffixDatabase:publicSuffixListBytes	[B
    //   113: aload_0
    //   114: aload 7
    //   116: putfield 120	okhttp3/internal/publicsuffix/PublicSuffixDatabase:publicSuffixExceptionListBytes	[B
    //   119: aload_0
    //   120: monitorexit
    //   121: aload_0
    //   122: getfield 50	okhttp3/internal/publicsuffix/PublicSuffixDatabase:readCompleteLatch	Ljava/util/concurrent/CountDownLatch;
    //   125: invokevirtual 123	java/util/concurrent/CountDownLatch:countDown	()V
    //   128: iload_2
    //   129: ifeq +9 -> 138
    //   132: invokestatic 129	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   135: invokevirtual 132	java/lang/Thread:interrupt	()V
    //   138: aload_0
    //   139: monitorenter
    //   140: aload_0
    //   141: getfield 118	okhttp3/internal/publicsuffix/PublicSuffixDatabase:publicSuffixListBytes	[B
    //   144: ifnonnull +96 -> 240
    //   147: new 134	java/lang/IllegalStateException
    //   150: dup
    //   151: ldc -120
    //   153: invokespecial 139	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   156: athrow
    //   157: astore_1
    //   158: aload_0
    //   159: monitorexit
    //   160: aload_1
    //   161: athrow
    //   162: astore 5
    //   164: aload 4
    //   166: invokestatic 116	okhttp3/internal/c:closeQuietly	(Ljava/io/Closeable;)V
    //   169: aload 5
    //   171: athrow
    //   172: astore 4
    //   174: iconst_1
    //   175: istore_2
    //   176: goto -147 -> 29
    //   179: astore 4
    //   181: aload_0
    //   182: monitorexit
    //   183: aload 4
    //   185: athrow
    //   186: astore 4
    //   188: invokestatic 145	okhttp3/internal/g/f:Ng	()Lokhttp3/internal/g/f;
    //   191: iconst_5
    //   192: ldc -109
    //   194: aload 4
    //   196: invokevirtual 151	okhttp3/internal/g/f:log	(ILjava/lang/String;Ljava/lang/Throwable;)V
    //   199: iload_2
    //   200: ifeq -62 -> 138
    //   203: invokestatic 129	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   206: invokevirtual 132	java/lang/Thread:interrupt	()V
    //   209: goto -71 -> 138
    //   212: astore_1
    //   213: iload_2
    //   214: ifeq +9 -> 223
    //   217: invokestatic 129	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   220: invokevirtual 132	java/lang/Thread:interrupt	()V
    //   223: aload_1
    //   224: athrow
    //   225: aload_0
    //   226: getfield 50	okhttp3/internal/publicsuffix/PublicSuffixDatabase:readCompleteLatch	Ljava/util/concurrent/CountDownLatch;
    //   229: invokevirtual 154	java/util/concurrent/CountDownLatch:await	()V
    //   232: goto -94 -> 138
    //   235: astore 4
    //   237: goto -99 -> 138
    //   240: aload_0
    //   241: monitorexit
    //   242: aload_1
    //   243: arraylength
    //   244: anewarray 155	[B
    //   247: astore 7
    //   249: iconst_0
    //   250: istore_2
    //   251: iload_2
    //   252: aload_1
    //   253: arraylength
    //   254: if_icmpge +23 -> 277
    //   257: aload 7
    //   259: iload_2
    //   260: aload_1
    //   261: iload_2
    //   262: aaload
    //   263: getstatic 60	okhttp3/internal/c:UTF_8	Ljava/nio/charset/Charset;
    //   266: invokevirtual 159	java/lang/String:getBytes	(Ljava/nio/charset/Charset;)[B
    //   269: aastore
    //   270: iload_2
    //   271: iconst_1
    //   272: iadd
    //   273: istore_2
    //   274: goto -23 -> 251
    //   277: iconst_0
    //   278: istore_2
    //   279: iload_2
    //   280: aload 7
    //   282: arraylength
    //   283: if_icmpge +237 -> 520
    //   286: aload_0
    //   287: getfield 118	okhttp3/internal/publicsuffix/PublicSuffixDatabase:publicSuffixListBytes	[B
    //   290: aload 7
    //   292: iload_2
    //   293: invokestatic 161	okhttp3/internal/publicsuffix/PublicSuffixDatabase:binarySearchBytes	([B[[BI)Ljava/lang/String;
    //   296: astore_1
    //   297: aload_1
    //   298: ifnull +128 -> 426
    //   301: aload 7
    //   303: arraylength
    //   304: iconst_1
    //   305: if_icmple +209 -> 514
    //   308: aload 7
    //   310: invokevirtual 167	[[B:clone	()Ljava/lang/Object;
    //   313: checkcast 163	[[B
    //   316: astore 5
    //   318: iconst_0
    //   319: istore_2
    //   320: iload_2
    //   321: aload 5
    //   323: arraylength
    //   324: iconst_1
    //   325: isub
    //   326: if_icmpge +188 -> 514
    //   329: aload 5
    //   331: iload_2
    //   332: getstatic 21	okhttp3/internal/publicsuffix/PublicSuffixDatabase:WILDCARD_LABEL	[B
    //   335: aastore
    //   336: aload_0
    //   337: getfield 118	okhttp3/internal/publicsuffix/PublicSuffixDatabase:publicSuffixListBytes	[B
    //   340: aload 5
    //   342: iload_2
    //   343: invokestatic 161	okhttp3/internal/publicsuffix/PublicSuffixDatabase:binarySearchBytes	([B[[BI)Ljava/lang/String;
    //   346: astore 4
    //   348: aload 4
    //   350: ifnull +83 -> 433
    //   353: aload 6
    //   355: astore 5
    //   357: aload 4
    //   359: ifnull +35 -> 394
    //   362: iload_3
    //   363: istore_2
    //   364: aload 6
    //   366: astore 5
    //   368: iload_2
    //   369: aload 7
    //   371: arraylength
    //   372: iconst_1
    //   373: isub
    //   374: if_icmpge +20 -> 394
    //   377: aload_0
    //   378: getfield 120	okhttp3/internal/publicsuffix/PublicSuffixDatabase:publicSuffixExceptionListBytes	[B
    //   381: aload 7
    //   383: iload_2
    //   384: invokestatic 161	okhttp3/internal/publicsuffix/PublicSuffixDatabase:binarySearchBytes	([B[[BI)Ljava/lang/String;
    //   387: astore 5
    //   389: aload 5
    //   391: ifnull +49 -> 440
    //   394: aload 5
    //   396: ifnull +51 -> 447
    //   399: new 169	java/lang/StringBuilder
    //   402: dup
    //   403: ldc -85
    //   405: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   408: aload 5
    //   410: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   413: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   416: ldc -74
    //   418: invokevirtual 186	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   421: astore 4
    //   423: aload 4
    //   425: areturn
    //   426: iload_2
    //   427: iconst_1
    //   428: iadd
    //   429: istore_2
    //   430: goto -151 -> 279
    //   433: iload_2
    //   434: iconst_1
    //   435: iadd
    //   436: istore_2
    //   437: goto -117 -> 320
    //   440: iload_2
    //   441: iconst_1
    //   442: iadd
    //   443: istore_2
    //   444: goto -80 -> 364
    //   447: aload_1
    //   448: ifnonnull +12 -> 460
    //   451: aload 4
    //   453: ifnonnull +7 -> 460
    //   456: getstatic 29	okhttp3/internal/publicsuffix/PublicSuffixDatabase:PREVAILING_RULE	[Ljava/lang/String;
    //   459: areturn
    //   460: aload_1
    //   461: ifnull +38 -> 499
    //   464: aload_1
    //   465: ldc -74
    //   467: invokevirtual 186	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   470: astore 5
    //   472: aload 4
    //   474: ifnull +33 -> 507
    //   477: aload 4
    //   479: ldc -74
    //   481: invokevirtual 186	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   484: astore_1
    //   485: aload_1
    //   486: astore 4
    //   488: aload 5
    //   490: arraylength
    //   491: aload_1
    //   492: arraylength
    //   493: if_icmple -70 -> 423
    //   496: aload 5
    //   498: areturn
    //   499: getstatic 25	okhttp3/internal/publicsuffix/PublicSuffixDatabase:EMPTY_RULE	[Ljava/lang/String;
    //   502: astore 5
    //   504: goto -32 -> 472
    //   507: getstatic 25	okhttp3/internal/publicsuffix/PublicSuffixDatabase:EMPTY_RULE	[Ljava/lang/String;
    //   510: astore_1
    //   511: goto -26 -> 485
    //   514: aconst_null
    //   515: astore 4
    //   517: goto -164 -> 353
    //   520: aconst_null
    //   521: astore_1
    //   522: goto -221 -> 301
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	525	0	this	PublicSuffixDatabase
    //   0	525	1	paramArrayOfString	String[]
    //   28	416	2	i	int
    //   4	359	3	j	int
    //   36	129	4	localObject1	Object
    //   172	1	4	localInterruptedIOException	java.io.InterruptedIOException
    //   179	5	4	localObject2	Object
    //   186	9	4	localIOException	java.io.IOException
    //   235	1	4	localInterruptedException	InterruptedException
    //   346	170	4	localObject3	Object
    //   69	40	5	arrayOfByte	byte[]
    //   162	8	5	localObject4	Object
    //   316	187	5	localObject5	Object
    //   1	364	6	localObject6	Object
    //   89	293	7	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   140	157	157	finally
    //   158	160	157	finally
    //   240	242	157	finally
    //   60	100	162	finally
    //   29	38	172	java/io/InterruptedIOException
    //   43	60	172	java/io/InterruptedIOException
    //   100	107	172	java/io/InterruptedIOException
    //   121	128	172	java/io/InterruptedIOException
    //   164	172	172	java/io/InterruptedIOException
    //   183	186	172	java/io/InterruptedIOException
    //   107	121	179	finally
    //   181	183	179	finally
    //   29	38	186	java/io/IOException
    //   43	60	186	java/io/IOException
    //   100	107	186	java/io/IOException
    //   121	128	186	java/io/IOException
    //   164	172	186	java/io/IOException
    //   183	186	186	java/io/IOException
    //   29	38	212	finally
    //   43	60	212	finally
    //   100	107	212	finally
    //   121	128	212	finally
    //   164	172	212	finally
    //   183	186	212	finally
    //   188	199	212	finally
    //   225	232	235	java/lang/InterruptedException
  }
  
  public final String getEffectiveTldPlusOne(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("domain == null");
    }
    Object localObject = IDN.toUnicode(paramString).split("\\.");
    String[] arrayOfString = findMatchingRule((String[])localObject);
    if ((localObject.length == arrayOfString.length) && (arrayOfString[0].charAt(0) != '!')) {
      return null;
    }
    if (arrayOfString[0].charAt(0) == '!') {}
    for (int i = localObject.length - arrayOfString.length;; i = localObject.length - (arrayOfString.length + 1))
    {
      localObject = new StringBuilder();
      paramString = paramString.split("\\.");
      while (i < paramString.length)
      {
        ((StringBuilder)localObject).append(paramString[i]).append('.');
        i += 1;
      }
    }
    ((StringBuilder)localObject).deleteCharAt(((StringBuilder)localObject).length() - 1);
    return ((StringBuilder)localObject).toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/publicsuffix/PublicSuffixDatabase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */