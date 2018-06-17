package io.intercom.a.a.a.c.d.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import io.intercom.a.a.a.c.i;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.l;

public final class c
  implements l<Bitmap>
{
  public static final i<Bitmap.CompressFormat> cNA = i.eW("io.intercom.com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");
  public static final i<Integer> cNz = i.n("io.intercom.com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", Integer.valueOf(90));
  
  /* Error */
  private static boolean a(io.intercom.a.a.a.c.b.u<Bitmap> paramu, java.io.File paramFile, j paramj)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 52 1 0
    //   6: checkcast 54	android/graphics/Bitmap
    //   9: astore 9
    //   11: aload_2
    //   12: getstatic 38	io/intercom/a/a/a/c/d/a/c:cNA	Lio/intercom/a/a/a/c/i;
    //   15: invokevirtual 59	io/intercom/a/a/a/c/j:a	(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;
    //   18: checkcast 61	android/graphics/Bitmap$CompressFormat
    //   21: astore_0
    //   22: aload_0
    //   23: ifnull +197 -> 220
    //   26: new 63	java/lang/StringBuilder
    //   29: dup
    //   30: ldc 65
    //   32: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload 9
    //   37: invokevirtual 72	android/graphics/Bitmap:getWidth	()I
    //   40: invokevirtual 76	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   43: ldc 78
    //   45: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload 9
    //   50: invokevirtual 84	android/graphics/Bitmap:getHeight	()I
    //   53: invokevirtual 76	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   56: ldc 86
    //   58: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_0
    //   62: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokestatic 98	android/support/v4/d/d:beginSection	(Ljava/lang/String;)V
    //   71: invokestatic 104	io/intercom/a/a/a/i/d:JQ	()J
    //   74: lstore 4
    //   76: aload_2
    //   77: getstatic 30	io/intercom/a/a/a/c/d/a/c:cNz	Lio/intercom/a/a/a/c/i;
    //   80: invokevirtual 59	io/intercom/a/a/a/c/j:a	(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;
    //   83: checkcast 18	java/lang/Integer
    //   86: invokevirtual 107	java/lang/Integer:intValue	()I
    //   89: istore_3
    //   90: new 109	java/io/FileOutputStream
    //   93: dup
    //   94: aload_1
    //   95: invokespecial 112	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   98: astore 7
    //   100: aload 7
    //   102: astore_1
    //   103: aload 9
    //   105: aload_0
    //   106: iload_3
    //   107: aload 7
    //   109: invokevirtual 116	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   112: pop
    //   113: aload 7
    //   115: astore_1
    //   116: aload 7
    //   118: invokevirtual 121	java/io/OutputStream:close	()V
    //   121: iconst_1
    //   122: istore 6
    //   124: aload 7
    //   126: invokevirtual 121	java/io/OutputStream:close	()V
    //   129: ldc 123
    //   131: iconst_2
    //   132: invokestatic 129	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   135: ifeq +79 -> 214
    //   138: ldc 123
    //   140: new 63	java/lang/StringBuilder
    //   143: dup
    //   144: ldc -125
    //   146: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload_0
    //   150: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   153: ldc -123
    //   155: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload 9
    //   160: invokestatic 139	io/intercom/a/a/a/i/i:l	(Landroid/graphics/Bitmap;)I
    //   163: invokevirtual 76	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   166: ldc -115
    //   168: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: lload 4
    //   173: invokestatic 145	io/intercom/a/a/a/i/d:V	(J)D
    //   176: invokevirtual 148	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   179: ldc -106
    //   181: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: aload_2
    //   185: getstatic 38	io/intercom/a/a/a/c/d/a/c:cNA	Lio/intercom/a/a/a/c/i;
    //   188: invokevirtual 59	io/intercom/a/a/a/c/j:a	(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;
    //   191: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   194: ldc -104
    //   196: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: aload 9
    //   201: invokevirtual 156	android/graphics/Bitmap:hasAlpha	()Z
    //   204: invokevirtual 159	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   207: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokestatic 163	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   213: pop
    //   214: invokestatic 166	android/support/v4/d/d:endSection	()V
    //   217: iload 6
    //   219: ireturn
    //   220: aload 9
    //   222: invokevirtual 156	android/graphics/Bitmap:hasAlpha	()Z
    //   225: ifeq +10 -> 235
    //   228: getstatic 170	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   231: astore_0
    //   232: goto -206 -> 26
    //   235: getstatic 173	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   238: astore_0
    //   239: goto -213 -> 26
    //   242: astore 8
    //   244: aconst_null
    //   245: astore 7
    //   247: aload 7
    //   249: astore_1
    //   250: ldc 123
    //   252: iconst_3
    //   253: invokestatic 129	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   256: ifeq +16 -> 272
    //   259: aload 7
    //   261: astore_1
    //   262: ldc 123
    //   264: ldc -81
    //   266: aload 8
    //   268: invokestatic 179	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   271: pop
    //   272: aload 7
    //   274: ifnull +57 -> 331
    //   277: aload 7
    //   279: invokevirtual 121	java/io/OutputStream:close	()V
    //   282: iconst_0
    //   283: istore 6
    //   285: goto -156 -> 129
    //   288: astore_1
    //   289: iconst_0
    //   290: istore 6
    //   292: goto -163 -> 129
    //   295: astore_0
    //   296: aconst_null
    //   297: astore_1
    //   298: aload_1
    //   299: ifnull +7 -> 306
    //   302: aload_1
    //   303: invokevirtual 121	java/io/OutputStream:close	()V
    //   306: aload_0
    //   307: athrow
    //   308: astore_0
    //   309: invokestatic 166	android/support/v4/d/d:endSection	()V
    //   312: aload_0
    //   313: athrow
    //   314: astore_1
    //   315: goto -186 -> 129
    //   318: astore_1
    //   319: goto -13 -> 306
    //   322: astore_0
    //   323: goto -25 -> 298
    //   326: astore 8
    //   328: goto -81 -> 247
    //   331: iconst_0
    //   332: istore 6
    //   334: goto -205 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	337	0	paramu	io.intercom.a.a.a.c.b.u<Bitmap>
    //   0	337	1	paramFile	java.io.File
    //   0	337	2	paramj	j
    //   89	18	3	i	int
    //   74	98	4	l	long
    //   122	211	6	bool	boolean
    //   98	180	7	localFileOutputStream	java.io.FileOutputStream
    //   242	25	8	localIOException1	java.io.IOException
    //   326	1	8	localIOException2	java.io.IOException
    //   9	212	9	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   90	100	242	java/io/IOException
    //   277	282	288	java/io/IOException
    //   90	100	295	finally
    //   71	90	308	finally
    //   124	129	308	finally
    //   129	214	308	finally
    //   277	282	308	finally
    //   302	306	308	finally
    //   306	308	308	finally
    //   124	129	314	java/io/IOException
    //   302	306	318	java/io/IOException
    //   103	113	322	finally
    //   116	121	322	finally
    //   250	259	322	finally
    //   262	272	322	finally
    //   103	113	326	java/io/IOException
    //   116	121	326	java/io/IOException
  }
  
  public final io.intercom.a.a.a.c.c b(j paramj)
  {
    return io.intercom.a.a.a.c.c.cHO;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */