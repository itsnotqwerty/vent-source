package com.amazonaws.auth;

public class PropertiesCredentials
  implements AWSCredentials
{
  private final String ano;
  private final String any;
  
  /* Error */
  public PropertiesCredentials(java.io.File paramFile)
    throws java.io.FileNotFoundException, java.io.IOException, java.lang.IllegalArgumentException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 20	java/lang/Object:<init>	()V
    //   4: aload_1
    //   5: invokevirtual 26	java/io/File:exists	()Z
    //   8: ifne +30 -> 38
    //   11: new 13	java/io/FileNotFoundException
    //   14: dup
    //   15: new 28	java/lang/StringBuilder
    //   18: dup
    //   19: ldc 30
    //   21: invokespecial 33	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   24: aload_1
    //   25: invokevirtual 37	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   28: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokespecial 45	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   37: athrow
    //   38: new 47	java/io/FileInputStream
    //   41: dup
    //   42: aload_1
    //   43: invokespecial 49	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   46: astore_2
    //   47: new 51	java/util/Properties
    //   50: dup
    //   51: invokespecial 52	java/util/Properties:<init>	()V
    //   54: astore_3
    //   55: aload_3
    //   56: aload_2
    //   57: invokevirtual 56	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   60: aload_3
    //   61: ldc 58
    //   63: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   66: ifnull +12 -> 78
    //   69: aload_3
    //   70: ldc 64
    //   72: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   75: ifnonnull +42 -> 117
    //   78: new 17	java/lang/IllegalArgumentException
    //   81: dup
    //   82: new 28	java/lang/StringBuilder
    //   85: dup
    //   86: ldc 66
    //   88: invokespecial 33	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: aload_1
    //   92: invokevirtual 37	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   95: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: ldc 68
    //   100: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: invokespecial 69	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   109: athrow
    //   110: astore_1
    //   111: aload_2
    //   112: invokevirtual 72	java/io/FileInputStream:close	()V
    //   115: aload_1
    //   116: athrow
    //   117: aload_0
    //   118: aload_3
    //   119: ldc 58
    //   121: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   124: putfield 74	com/amazonaws/auth/PropertiesCredentials:ano	Ljava/lang/String;
    //   127: aload_0
    //   128: aload_3
    //   129: ldc 64
    //   131: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   134: putfield 76	com/amazonaws/auth/PropertiesCredentials:any	Ljava/lang/String;
    //   137: aload_2
    //   138: invokevirtual 72	java/io/FileInputStream:close	()V
    //   141: return
    //   142: astore_1
    //   143: return
    //   144: astore_2
    //   145: goto -30 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	PropertiesCredentials
    //   0	148	1	paramFile	java.io.File
    //   46	92	2	localFileInputStream	java.io.FileInputStream
    //   144	1	2	localIOException	java.io.IOException
    //   54	75	3	localProperties	java.util.Properties
    // Exception table:
    //   from	to	target	type
    //   47	78	110	finally
    //   78	110	110	finally
    //   117	137	110	finally
    //   137	141	142	java/io/IOException
    //   111	115	144	java/io/IOException
  }
  
  /* Error */
  public PropertiesCredentials(java.io.InputStream paramInputStream)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 20	java/lang/Object:<init>	()V
    //   4: new 51	java/util/Properties
    //   7: dup
    //   8: invokespecial 52	java/util/Properties:<init>	()V
    //   11: astore_2
    //   12: aload_2
    //   13: aload_1
    //   14: invokevirtual 56	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   17: aload_1
    //   18: invokevirtual 83	java/io/InputStream:close	()V
    //   21: aload_2
    //   22: ldc 58
    //   24: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   27: ifnull +12 -> 39
    //   30: aload_2
    //   31: ldc 64
    //   33: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   36: ifnonnull +20 -> 56
    //   39: new 17	java/lang/IllegalArgumentException
    //   42: dup
    //   43: ldc 85
    //   45: invokespecial 69	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   48: athrow
    //   49: astore_2
    //   50: aload_1
    //   51: invokevirtual 83	java/io/InputStream:close	()V
    //   54: aload_2
    //   55: athrow
    //   56: aload_0
    //   57: aload_2
    //   58: ldc 58
    //   60: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   63: putfield 74	com/amazonaws/auth/PropertiesCredentials:ano	Ljava/lang/String;
    //   66: aload_0
    //   67: aload_2
    //   68: ldc 64
    //   70: invokevirtual 62	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   73: putfield 76	com/amazonaws/auth/PropertiesCredentials:any	Ljava/lang/String;
    //   76: return
    //   77: astore_1
    //   78: goto -57 -> 21
    //   81: astore_1
    //   82: goto -28 -> 54
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	PropertiesCredentials
    //   0	85	1	paramInputStream	java.io.InputStream
    //   11	20	2	localProperties	java.util.Properties
    //   49	19	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   12	17	49	finally
    //   17	21	77	java/lang/Exception
    //   50	54	81	java/lang/Exception
  }
  
  public final String jw()
  {
    return this.ano;
  }
  
  public final String jx()
  {
    return this.any;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/PropertiesCredentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */