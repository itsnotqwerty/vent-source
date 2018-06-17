package a.a.a.b;

import a.a.a.i.g;
import java.io.File;
import java.util.logging.Logger;
import java.util.regex.Pattern;

public class e
  extends a
{
  private static final Logger coH = Logger.getLogger(e.class.getName());
  public static final d csX = new e();
  private static final Pattern csY = Pattern.compile("^nameserver\\s+(.*)$");
  private static String[] csZ;
  private static long cta;
  
  private e()
  {
    super(e.class.getSimpleName(), 2000);
  }
  
  /* Error */
  public final String[] FX()
  {
    // Byte code:
    //   0: new 58	java/io/File
    //   3: dup
    //   4: ldc 60
    //   6: invokespecial 63	java/io/File:<init>	(Ljava/lang/String;)V
    //   9: astore_3
    //   10: aload_3
    //   11: invokevirtual 67	java/io/File:exists	()Z
    //   14: ifne +5 -> 19
    //   17: aconst_null
    //   18: areturn
    //   19: aload_3
    //   20: invokevirtual 71	java/io/File:lastModified	()J
    //   23: lstore_1
    //   24: lload_1
    //   25: getstatic 73	a/a/a/b/e:cta	J
    //   28: lcmp
    //   29: ifne +13 -> 42
    //   32: getstatic 75	a/a/a/b/e:csZ	[Ljava/lang/String;
    //   35: ifnull +7 -> 42
    //   38: getstatic 75	a/a/a/b/e:csZ	[Ljava/lang/String;
    //   41: areturn
    //   42: new 77	java/util/ArrayList
    //   45: dup
    //   46: invokespecial 78	java/util/ArrayList:<init>	()V
    //   49: astore 5
    //   51: new 80	java/io/BufferedReader
    //   54: dup
    //   55: new 82	java/io/InputStreamReader
    //   58: dup
    //   59: new 84	java/io/FileInputStream
    //   62: dup
    //   63: aload_3
    //   64: invokespecial 87	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   67: invokespecial 90	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   70: invokespecial 93	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   73: astore 4
    //   75: aload 4
    //   77: astore_3
    //   78: aload 4
    //   80: invokevirtual 96	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   83: astore 6
    //   85: aload 6
    //   87: ifnull +95 -> 182
    //   90: aload 4
    //   92: astore_3
    //   93: getstatic 45	a/a/a/b/e:csY	Ljava/util/regex/Pattern;
    //   96: aload 6
    //   98: invokevirtual 100	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   101: astore 6
    //   103: aload 4
    //   105: astore_3
    //   106: aload 6
    //   108: invokevirtual 105	java/util/regex/Matcher:matches	()Z
    //   111: ifeq -36 -> 75
    //   114: aload 4
    //   116: astore_3
    //   117: aload 5
    //   119: aload 6
    //   121: iconst_1
    //   122: invokevirtual 109	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   125: invokevirtual 114	java/lang/String:trim	()Ljava/lang/String;
    //   128: invokeinterface 120 2 0
    //   133: pop
    //   134: goto -59 -> 75
    //   137: astore 5
    //   139: aload 4
    //   141: astore_3
    //   142: getstatic 35	a/a/a/b/e:coH	Ljava/util/logging/Logger;
    //   145: getstatic 126	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   148: ldc -128
    //   150: aload 5
    //   152: invokevirtual 132	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   155: aload 4
    //   157: ifnull -140 -> 17
    //   160: aload 4
    //   162: invokevirtual 135	java/io/BufferedReader:close	()V
    //   165: aconst_null
    //   166: areturn
    //   167: astore_3
    //   168: getstatic 35	a/a/a/b/e:coH	Ljava/util/logging/Logger;
    //   171: getstatic 126	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   174: ldc -119
    //   176: aload_3
    //   177: invokevirtual 132	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   180: aconst_null
    //   181: areturn
    //   182: aload 4
    //   184: invokevirtual 135	java/io/BufferedReader:close	()V
    //   187: aload 5
    //   189: invokeinterface 140 1 0
    //   194: ifeq +60 -> 254
    //   197: getstatic 35	a/a/a/b/e:coH	Ljava/util/logging/Logger;
    //   200: ldc -114
    //   202: invokevirtual 145	java/util/logging/Logger:fine	(Ljava/lang/String;)V
    //   205: aconst_null
    //   206: areturn
    //   207: astore_3
    //   208: getstatic 35	a/a/a/b/e:coH	Ljava/util/logging/Logger;
    //   211: getstatic 126	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   214: ldc -119
    //   216: aload_3
    //   217: invokevirtual 132	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   220: goto -33 -> 187
    //   223: astore 4
    //   225: aconst_null
    //   226: astore_3
    //   227: aload_3
    //   228: ifnull +7 -> 235
    //   231: aload_3
    //   232: invokevirtual 135	java/io/BufferedReader:close	()V
    //   235: aload 4
    //   237: athrow
    //   238: astore_3
    //   239: getstatic 35	a/a/a/b/e:coH	Ljava/util/logging/Logger;
    //   242: getstatic 126	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   245: ldc -119
    //   247: aload_3
    //   248: invokevirtual 132	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   251: goto -16 -> 235
    //   254: aload 5
    //   256: aload 5
    //   258: invokeinterface 149 1 0
    //   263: anewarray 111	java/lang/String
    //   266: invokeinterface 153 2 0
    //   271: checkcast 154	[Ljava/lang/String;
    //   274: putstatic 75	a/a/a/b/e:csZ	[Ljava/lang/String;
    //   277: lload_1
    //   278: putstatic 73	a/a/a/b/e:cta	J
    //   281: getstatic 75	a/a/a/b/e:csZ	[Ljava/lang/String;
    //   284: areturn
    //   285: astore 4
    //   287: goto -60 -> 227
    //   290: astore 5
    //   292: aconst_null
    //   293: astore 4
    //   295: goto -156 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	298	0	this	e
    //   23	255	1	l	long
    //   9	133	3	localObject1	Object
    //   167	10	3	localIOException1	java.io.IOException
    //   207	10	3	localIOException2	java.io.IOException
    //   226	6	3	localObject2	Object
    //   238	10	3	localIOException3	java.io.IOException
    //   73	110	4	localBufferedReader	java.io.BufferedReader
    //   223	13	4	localObject3	Object
    //   285	1	4	localObject4	Object
    //   293	1	4	localObject5	Object
    //   49	69	5	localArrayList	java.util.ArrayList
    //   137	120	5	localIOException4	java.io.IOException
    //   290	1	5	localIOException5	java.io.IOException
    //   83	37	6	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   78	85	137	java/io/IOException
    //   93	103	137	java/io/IOException
    //   106	114	137	java/io/IOException
    //   117	134	137	java/io/IOException
    //   160	165	167	java/io/IOException
    //   182	187	207	java/io/IOException
    //   51	75	223	finally
    //   231	235	238	java/io/IOException
    //   78	85	285	finally
    //   93	103	285	finally
    //   106	114	285	finally
    //   117	134	285	finally
    //   142	155	285	finally
    //   51	75	290	java/io/IOException
  }
  
  public final boolean isAvailable()
  {
    if (g.Go()) {}
    while (!new File("/etc/resolv.conf").exists()) {
      return false;
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */