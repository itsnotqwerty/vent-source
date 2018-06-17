package io.intercom.a.a.a.c.c;

import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.d;
import java.io.InputStream;

public final class t
  implements d<InputStream>
{
  private final b cIu;
  
  public t(b paramb)
  {
    this.cIu = paramb;
  }
  
  /* Error */
  private boolean a(InputStream paramInputStream, java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	io/intercom/a/a/a/c/c/t:cIu	Lio/intercom/a/a/a/c/b/a/b;
    //   4: ldc 22
    //   6: ldc 24
    //   8: invokeinterface 29 3 0
    //   13: checkcast 24	[B
    //   16: astore 5
    //   18: new 31	java/io/FileOutputStream
    //   21: dup
    //   22: aload_2
    //   23: invokespecial 34	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   26: astore 4
    //   28: aload 4
    //   30: astore_2
    //   31: aload_1
    //   32: aload 5
    //   34: invokevirtual 40	java/io/InputStream:read	([B)I
    //   37: istore_3
    //   38: iload_3
    //   39: iconst_m1
    //   40: if_icmpeq +69 -> 109
    //   43: aload 4
    //   45: astore_2
    //   46: aload 4
    //   48: aload 5
    //   50: iconst_0
    //   51: iload_3
    //   52: invokevirtual 46	java/io/OutputStream:write	([BII)V
    //   55: goto -27 -> 28
    //   58: astore_2
    //   59: aload 4
    //   61: astore_1
    //   62: aload_2
    //   63: astore 4
    //   65: aload_1
    //   66: astore_2
    //   67: ldc 48
    //   69: iconst_3
    //   70: invokestatic 54	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   73: ifeq +15 -> 88
    //   76: aload_1
    //   77: astore_2
    //   78: ldc 48
    //   80: ldc 56
    //   82: aload 4
    //   84: invokestatic 60	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   87: pop
    //   88: aload_1
    //   89: ifnull +7 -> 96
    //   92: aload_1
    //   93: invokevirtual 63	java/io/OutputStream:close	()V
    //   96: aload_0
    //   97: getfield 16	io/intercom/a/a/a/c/c/t:cIu	Lio/intercom/a/a/a/c/b/a/b;
    //   100: aload 5
    //   102: invokeinterface 67 2 0
    //   107: iconst_0
    //   108: ireturn
    //   109: aload 4
    //   111: astore_2
    //   112: aload 4
    //   114: invokevirtual 63	java/io/OutputStream:close	()V
    //   117: aload 4
    //   119: invokevirtual 63	java/io/OutputStream:close	()V
    //   122: aload_0
    //   123: getfield 16	io/intercom/a/a/a/c/c/t:cIu	Lio/intercom/a/a/a/c/b/a/b;
    //   126: aload 5
    //   128: invokeinterface 67 2 0
    //   133: iconst_1
    //   134: ireturn
    //   135: astore_1
    //   136: aconst_null
    //   137: astore_2
    //   138: aload_2
    //   139: ifnull +7 -> 146
    //   142: aload_2
    //   143: invokevirtual 63	java/io/OutputStream:close	()V
    //   146: aload_0
    //   147: getfield 16	io/intercom/a/a/a/c/c/t:cIu	Lio/intercom/a/a/a/c/b/a/b;
    //   150: aload 5
    //   152: invokeinterface 67 2 0
    //   157: aload_1
    //   158: athrow
    //   159: astore_1
    //   160: goto -38 -> 122
    //   163: astore_1
    //   164: goto -68 -> 96
    //   167: astore_2
    //   168: goto -22 -> 146
    //   171: astore_1
    //   172: goto -34 -> 138
    //   175: astore 4
    //   177: aconst_null
    //   178: astore_1
    //   179: goto -114 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	this	t
    //   0	182	1	paramInputStream	InputStream
    //   0	182	2	paramFile	java.io.File
    //   37	15	3	i	int
    //   26	92	4	localObject	Object
    //   175	1	4	localIOException	java.io.IOException
    //   16	135	5	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   31	38	58	java/io/IOException
    //   46	55	58	java/io/IOException
    //   112	117	58	java/io/IOException
    //   18	28	135	finally
    //   117	122	159	java/io/IOException
    //   92	96	163	java/io/IOException
    //   142	146	167	java/io/IOException
    //   31	38	171	finally
    //   46	55	171	finally
    //   67	76	171	finally
    //   78	88	171	finally
    //   112	117	171	finally
    //   18	28	175	java/io/IOException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */