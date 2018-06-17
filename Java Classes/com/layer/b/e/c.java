package com.layer.b.e;

import java.net.MalformedURLException;
import java.net.URL;

public final class c
{
  public static URL a(String paramString)
  {
    try
    {
      URL localURL = new URL(paramString);
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      if (a.a(6)) {
        a.g("MalformedURLException : Bad url " + paramString, localMalformedURLException);
      }
      throw new IllegalStateException("Bad url " + paramString);
    }
  }
  
  /* Error */
  public static URL a(URL paramURL, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 44	java/net/URL:toString	()Ljava/lang/String;
    //   4: astore 5
    //   6: aload_1
    //   7: astore_3
    //   8: aload 5
    //   10: ldc 46
    //   12: invokevirtual 52	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   15: ifeq +62 -> 77
    //   18: ldc 54
    //   20: astore 4
    //   22: aload_1
    //   23: astore_2
    //   24: aload_1
    //   25: astore_3
    //   26: aload_1
    //   27: ldc 46
    //   29: invokevirtual 57	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   32: ifeq +11 -> 43
    //   35: aload_1
    //   36: astore_3
    //   37: aload_1
    //   38: iconst_1
    //   39: invokevirtual 61	java/lang/String:substring	(I)Ljava/lang/String;
    //   42: astore_2
    //   43: aload_2
    //   44: astore_3
    //   45: new 10	java/net/URL
    //   48: dup
    //   49: new 21	java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial 64	java/lang/StringBuilder:<init>	()V
    //   56: aload 5
    //   58: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload 4
    //   63: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload_2
    //   67: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokespecial 14	java/net/URL:<init>	(Ljava/lang/String;)V
    //   76: areturn
    //   77: ldc 46
    //   79: astore 4
    //   81: goto -59 -> 22
    //   84: astore_1
    //   85: bipush 6
    //   87: invokestatic 19	com/layer/b/e/a:a	(I)Z
    //   90: ifeq +32 -> 122
    //   93: new 21	java/lang/StringBuilder
    //   96: dup
    //   97: ldc 23
    //   99: invokespecial 24	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: aload_0
    //   103: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   106: ldc 46
    //   108: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload_3
    //   112: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: aload_1
    //   119: invokestatic 36	com/layer/b/e/a:g	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   122: new 38	java/lang/IllegalStateException
    //   125: dup
    //   126: new 21	java/lang/StringBuilder
    //   129: dup
    //   130: ldc 40
    //   132: invokespecial 24	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   135: aload_0
    //   136: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   139: ldc 46
    //   141: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: aload_3
    //   145: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokespecial 41	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   154: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	paramURL	URL
    //   0	155	1	paramString	String
    //   23	44	2	str1	String
    //   7	138	3	localObject	Object
    //   20	60	4	str2	String
    //   4	53	5	str3	String
    // Exception table:
    //   from	to	target	type
    //   8	18	84	java/net/MalformedURLException
    //   26	35	84	java/net/MalformedURLException
    //   37	43	84	java/net/MalformedURLException
    //   45	77	84	java/net/MalformedURLException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/e/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */