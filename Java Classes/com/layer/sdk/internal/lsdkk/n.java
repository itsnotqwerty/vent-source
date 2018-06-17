package com.layer.sdk.internal.lsdkk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class n
{
  private static final k.a a = k.a(n.class);
  private final Context b;
  
  public n(Context paramContext)
  {
    this.b = paramContext;
  }
  
  private SharedPreferences a()
  {
    return this.b.getSharedPreferences("layer_sdk_prefs", 0);
  }
  
  public boolean a(String paramString)
  {
    SharedPreferences.Editor localEditor = a().edit();
    localEditor.remove(paramString);
    return localEditor.commit();
  }
  
  /* Error */
  public boolean a(String paramString, java.io.Serializable paramSerializable)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull +11 -> 12
    //   4: aload_0
    //   5: aload_1
    //   6: invokevirtual 57	com/layer/sdk/internal/lsdkk/n:a	(Ljava/lang/String;)Z
    //   9: istore_3
    //   10: iload_3
    //   11: ireturn
    //   12: new 59	java/io/ByteArrayOutputStream
    //   15: dup
    //   16: invokespecial 60	java/io/ByteArrayOutputStream:<init>	()V
    //   19: astore 6
    //   21: new 62	java/io/ObjectOutputStream
    //   24: dup
    //   25: aload 6
    //   27: invokespecial 65	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   30: astore 5
    //   32: aload 5
    //   34: astore 4
    //   36: aload 5
    //   38: aload_2
    //   39: invokevirtual 69	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   42: aload 5
    //   44: astore 4
    //   46: aload 5
    //   48: invokevirtual 72	java/io/ObjectOutputStream:flush	()V
    //   51: aload 5
    //   53: astore 4
    //   55: aload 6
    //   57: invokevirtual 73	java/io/ByteArrayOutputStream:flush	()V
    //   60: aload 5
    //   62: astore 4
    //   64: aload_0
    //   65: aload_1
    //   66: aload 6
    //   68: invokevirtual 77	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   71: invokevirtual 80	com/layer/sdk/internal/lsdkk/n:a	(Ljava/lang/String;[B)Z
    //   74: istore_3
    //   75: aload 5
    //   77: invokevirtual 83	java/io/ObjectOutputStream:close	()V
    //   80: aload 6
    //   82: invokevirtual 84	java/io/ByteArrayOutputStream:close	()V
    //   85: iload_3
    //   86: ireturn
    //   87: astore_1
    //   88: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   91: ldc 86
    //   93: aload_1
    //   94: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   97: iload_3
    //   98: ireturn
    //   99: astore_2
    //   100: aconst_null
    //   101: astore_1
    //   102: iconst_0
    //   103: istore_3
    //   104: aload_1
    //   105: astore 4
    //   107: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   110: ldc 92
    //   112: aload_2
    //   113: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: aload_1
    //   117: ifnull -107 -> 10
    //   120: aload_1
    //   121: invokevirtual 83	java/io/ObjectOutputStream:close	()V
    //   124: aload 6
    //   126: invokevirtual 84	java/io/ByteArrayOutputStream:close	()V
    //   129: iconst_0
    //   130: ireturn
    //   131: astore_1
    //   132: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   135: ldc 86
    //   137: aload_1
    //   138: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   141: iconst_0
    //   142: ireturn
    //   143: astore_1
    //   144: aconst_null
    //   145: astore 4
    //   147: aload 4
    //   149: ifnull +13 -> 162
    //   152: aload 4
    //   154: invokevirtual 83	java/io/ObjectOutputStream:close	()V
    //   157: aload 6
    //   159: invokevirtual 84	java/io/ByteArrayOutputStream:close	()V
    //   162: aload_1
    //   163: athrow
    //   164: astore_2
    //   165: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   168: ldc 86
    //   170: aload_2
    //   171: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   174: goto -12 -> 162
    //   177: astore_1
    //   178: goto -31 -> 147
    //   181: astore_2
    //   182: aload 5
    //   184: astore_1
    //   185: goto -83 -> 102
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	188	0	this	n
    //   0	188	1	paramString	String
    //   0	188	2	paramSerializable	java.io.Serializable
    //   9	95	3	bool	boolean
    //   34	119	4	localObject	Object
    //   30	153	5	localObjectOutputStream	java.io.ObjectOutputStream
    //   19	139	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   75	85	87	java/io/IOException
    //   21	32	99	java/io/IOException
    //   120	129	131	java/io/IOException
    //   21	32	143	finally
    //   152	162	164	java/io/IOException
    //   36	42	177	finally
    //   46	51	177	finally
    //   55	60	177	finally
    //   64	75	177	finally
    //   107	116	177	finally
    //   36	42	181	java/io/IOException
    //   46	51	181	java/io/IOException
    //   55	60	181	java/io/IOException
    //   64	75	181	java/io/IOException
  }
  
  public boolean a(String paramString, Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return a(paramString);
    }
    SharedPreferences.Editor localEditor = a().edit();
    localEditor.putBoolean(paramString, paramBoolean.booleanValue());
    return localEditor.commit();
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    if (paramString2 == null) {
      return a(paramString1);
    }
    SharedPreferences.Editor localEditor = a().edit();
    localEditor.putString(paramString1, paramString2);
    return localEditor.commit();
  }
  
  public boolean a(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return a(paramString);
    }
    return a(paramString, c.a(paramArrayOfByte));
  }
  
  /* Error */
  public Object b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 121	com/layer/sdk/internal/lsdkk/n:c	(Ljava/lang/String;)[B
    //   5: astore_1
    //   6: aload_1
    //   7: ifnonnull +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: new 123	java/io/ObjectInputStream
    //   15: dup
    //   16: new 125	java/io/ByteArrayInputStream
    //   19: dup
    //   20: aload_1
    //   21: invokespecial 128	java/io/ByteArrayInputStream:<init>	([B)V
    //   24: invokespecial 131	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   27: astore_2
    //   28: aload_2
    //   29: astore_1
    //   30: aload_2
    //   31: invokevirtual 135	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   34: astore_3
    //   35: aload_2
    //   36: invokevirtual 136	java/io/ObjectInputStream:close	()V
    //   39: aload_3
    //   40: areturn
    //   41: astore_1
    //   42: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   45: ldc 86
    //   47: aload_1
    //   48: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   51: aload_3
    //   52: areturn
    //   53: astore_3
    //   54: aconst_null
    //   55: astore_2
    //   56: aload_2
    //   57: astore_1
    //   58: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   61: ldc -118
    //   63: aload_3
    //   64: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   67: aload_2
    //   68: ifnull -58 -> 10
    //   71: aload_2
    //   72: invokevirtual 136	java/io/ObjectInputStream:close	()V
    //   75: aconst_null
    //   76: areturn
    //   77: astore_1
    //   78: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   81: ldc 86
    //   83: aload_1
    //   84: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   87: aconst_null
    //   88: areturn
    //   89: astore_3
    //   90: aconst_null
    //   91: astore_2
    //   92: aload_2
    //   93: astore_1
    //   94: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   97: ldc -116
    //   99: aload_3
    //   100: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   103: aload_2
    //   104: ifnull -94 -> 10
    //   107: aload_2
    //   108: invokevirtual 136	java/io/ObjectInputStream:close	()V
    //   111: aconst_null
    //   112: areturn
    //   113: astore_1
    //   114: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   117: ldc 86
    //   119: aload_1
    //   120: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   123: aconst_null
    //   124: areturn
    //   125: astore_2
    //   126: aconst_null
    //   127: astore_1
    //   128: aload_1
    //   129: ifnull +7 -> 136
    //   132: aload_1
    //   133: invokevirtual 136	java/io/ObjectInputStream:close	()V
    //   136: aload_2
    //   137: athrow
    //   138: astore_1
    //   139: getstatic 17	com/layer/sdk/internal/lsdkk/n:a	Lcom/layer/sdk/internal/lsdkk/k$a;
    //   142: ldc 86
    //   144: aload_1
    //   145: invokestatic 90	com/layer/sdk/internal/lsdkk/k:d	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   148: goto -12 -> 136
    //   151: astore_2
    //   152: goto -24 -> 128
    //   155: astore_3
    //   156: goto -64 -> 92
    //   159: astore_3
    //   160: goto -104 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	163	0	this	n
    //   0	163	1	paramString	String
    //   27	81	2	localObjectInputStream	java.io.ObjectInputStream
    //   125	12	2	localObject1	Object
    //   151	1	2	localObject2	Object
    //   34	18	3	localObject3	Object
    //   53	11	3	localIOException1	java.io.IOException
    //   89	11	3	localClassNotFoundException1	ClassNotFoundException
    //   155	1	3	localClassNotFoundException2	ClassNotFoundException
    //   159	1	3	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   35	39	41	java/io/IOException
    //   12	28	53	java/io/IOException
    //   71	75	77	java/io/IOException
    //   12	28	89	java/lang/ClassNotFoundException
    //   107	111	113	java/io/IOException
    //   12	28	125	finally
    //   132	136	138	java/io/IOException
    //   30	35	151	finally
    //   58	67	151	finally
    //   94	103	151	finally
    //   30	35	155	java/lang/ClassNotFoundException
    //   30	35	159	java/io/IOException
  }
  
  public byte[] c(String paramString)
  {
    paramString = d(paramString);
    if ((paramString == null) || (paramString.isEmpty())) {
      return null;
    }
    return c.a(paramString);
  }
  
  public String d(String paramString)
  {
    if (!a().contains(paramString)) {
      return null;
    }
    return a().getString(paramString, null);
  }
  
  public Boolean e(String paramString)
  {
    if (!a().contains(paramString)) {
      return null;
    }
    return Boolean.valueOf(a().getBoolean(paramString, false));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */