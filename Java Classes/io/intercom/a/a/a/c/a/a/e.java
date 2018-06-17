package io.intercom.a.a.a.c.a.a;

import android.content.ContentResolver;
import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.f;
import java.util.List;

final class e
{
  private static final a cIA = new a();
  private final a cIB;
  private final d cIC;
  private final List<f> cID;
  private final b cIu;
  private final ContentResolver cIv;
  
  private e(List<f> paramList, a parama, d paramd, b paramb, ContentResolver paramContentResolver)
  {
    this.cIB = parama;
    this.cIC = paramd;
    this.cIu = paramb;
    this.cIv = paramContentResolver;
    this.cID = paramList;
  }
  
  public e(List<f> paramList, d paramd, b paramb, ContentResolver paramContentResolver)
  {
    this(paramList, cIA, paramd, paramb, paramContentResolver);
  }
  
  /* Error */
  public final int r(android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 5
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_0
    //   9: getfield 36	io/intercom/a/a/a/c/a/a/e:cIv	Landroid/content/ContentResolver;
    //   12: aload_1
    //   13: invokevirtual 56	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   16: astore 6
    //   18: aload 6
    //   20: astore 4
    //   22: aload 6
    //   24: astore_3
    //   25: aload 6
    //   27: astore 5
    //   29: aload_0
    //   30: getfield 38	io/intercom/a/a/a/c/a/a/e:cID	Ljava/util/List;
    //   33: aload 6
    //   35: aload_0
    //   36: getfield 34	io/intercom/a/a/a/c/a/a/e:cIu	Lio/intercom/a/a/a/c/b/a/b;
    //   39: invokestatic 62	io/intercom/a/a/a/c/g:b	(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)I
    //   42: istore_2
    //   43: aload 6
    //   45: ifnull +8 -> 53
    //   48: aload 6
    //   50: invokevirtual 67	java/io/InputStream:close	()V
    //   53: iload_2
    //   54: ireturn
    //   55: astore 6
    //   57: aload 4
    //   59: astore_3
    //   60: ldc 69
    //   62: iconst_3
    //   63: invokestatic 75	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   66: ifeq +30 -> 96
    //   69: aload 4
    //   71: astore_3
    //   72: ldc 69
    //   74: new 77	java/lang/StringBuilder
    //   77: dup
    //   78: ldc 79
    //   80: invokespecial 82	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_1
    //   84: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: aload 6
    //   92: invokestatic 94	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   95: pop
    //   96: aload 4
    //   98: ifnull +8 -> 106
    //   101: aload 4
    //   103: invokevirtual 67	java/io/InputStream:close	()V
    //   106: iconst_m1
    //   107: ireturn
    //   108: astore_1
    //   109: aload_3
    //   110: ifnull +7 -> 117
    //   113: aload_3
    //   114: invokevirtual 67	java/io/InputStream:close	()V
    //   117: aload_1
    //   118: athrow
    //   119: astore_1
    //   120: iload_2
    //   121: ireturn
    //   122: astore_1
    //   123: goto -17 -> 106
    //   126: astore_3
    //   127: goto -10 -> 117
    //   130: astore 6
    //   132: aload 5
    //   134: astore 4
    //   136: goto -79 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	this	e
    //   0	139	1	paramUri	android.net.Uri
    //   42	79	2	i	int
    //   1	113	3	localObject1	Object
    //   126	1	3	localIOException1	java.io.IOException
    //   6	129	4	localObject2	Object
    //   3	130	5	localObject3	Object
    //   16	33	6	localInputStream	java.io.InputStream
    //   55	36	6	localNullPointerException	NullPointerException
    //   130	1	6	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   8	18	55	java/lang/NullPointerException
    //   29	43	55	java/lang/NullPointerException
    //   8	18	108	finally
    //   29	43	108	finally
    //   60	69	108	finally
    //   72	96	108	finally
    //   48	53	119	java/io/IOException
    //   101	106	122	java/io/IOException
    //   113	117	126	java/io/IOException
    //   8	18	130	java/io/IOException
    //   29	43	130	java/io/IOException
  }
  
  /* Error */
  public final java.io.InputStream s(android.net.Uri paramUri)
    throws java.io.FileNotFoundException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	io/intercom/a/a/a/c/a/a/e:cIC	Lio/intercom/a/a/a/c/a/a/d;
    //   4: aload_1
    //   5: invokeinterface 103 2 0
    //   10: astore_3
    //   11: aload_3
    //   12: ifnull +14 -> 26
    //   15: aload_3
    //   16: invokeinterface 109 1 0
    //   21: istore_2
    //   22: iload_2
    //   23: ifne +15 -> 38
    //   26: aload_3
    //   27: ifnull +9 -> 36
    //   30: aload_3
    //   31: invokeinterface 110 1 0
    //   36: aconst_null
    //   37: areturn
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 114 2 0
    //   45: astore_1
    //   46: aload_1
    //   47: invokestatic 120	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   50: istore_2
    //   51: iload_2
    //   52: ifeq +15 -> 67
    //   55: aload_3
    //   56: ifnull -20 -> 36
    //   59: aload_3
    //   60: invokeinterface 110 1 0
    //   65: aconst_null
    //   66: areturn
    //   67: new 122	java/io/File
    //   70: dup
    //   71: aload_1
    //   72: invokespecial 123	java/io/File:<init>	(Ljava/lang/String;)V
    //   75: astore_1
    //   76: aload_1
    //   77: invokevirtual 126	java/io/File:exists	()Z
    //   80: ifeq +87 -> 167
    //   83: aload_1
    //   84: invokevirtual 130	java/io/File:length	()J
    //   87: lconst_0
    //   88: lcmp
    //   89: ifle +78 -> 167
    //   92: aload_1
    //   93: invokestatic 136	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   96: astore_1
    //   97: aload_3
    //   98: ifnull +9 -> 107
    //   101: aload_3
    //   102: invokeinterface 110 1 0
    //   107: aload_1
    //   108: ifnull -72 -> 36
    //   111: aload_0
    //   112: getfield 36	io/intercom/a/a/a/c/a/a/e:cIv	Landroid/content/ContentResolver;
    //   115: aload_1
    //   116: invokevirtual 56	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   119: astore_3
    //   120: aload_3
    //   121: areturn
    //   122: astore_1
    //   123: aload_3
    //   124: ifnull +9 -> 133
    //   127: aload_3
    //   128: invokeinterface 110 1 0
    //   133: aload_1
    //   134: athrow
    //   135: astore_3
    //   136: new 97	java/io/FileNotFoundException
    //   139: dup
    //   140: new 77	java/lang/StringBuilder
    //   143: dup
    //   144: ldc -118
    //   146: invokespecial 82	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload_1
    //   150: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   153: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: invokespecial 139	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   159: aload_3
    //   160: invokevirtual 143	java/io/FileNotFoundException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   163: checkcast 97	java/io/FileNotFoundException
    //   166: athrow
    //   167: aconst_null
    //   168: astore_1
    //   169: goto -72 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	e
    //   0	172	1	paramUri	android.net.Uri
    //   21	31	2	bool	boolean
    //   10	118	3	localObject	Object
    //   135	25	3	localNullPointerException	NullPointerException
    // Exception table:
    //   from	to	target	type
    //   15	22	122	finally
    //   38	51	122	finally
    //   67	97	122	finally
    //   111	120	135	java/lang/NullPointerException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */