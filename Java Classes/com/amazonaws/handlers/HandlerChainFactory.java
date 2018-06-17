package com.amazonaws.handlers;

public class HandlerChainFactory
{
  /* Error */
  public final java.util.List<RequestHandler2> b(String paramString, Class<?> paramClass)
  {
    // Byte code:
    //   0: new 17	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 18	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: invokevirtual 22	java/lang/Object:getClass	()Ljava/lang/Class;
    //   13: aload_1
    //   14: invokevirtual 28	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnonnull +6 -> 25
    //   22: aload 4
    //   24: areturn
    //   25: new 30	java/io/BufferedReader
    //   28: dup
    //   29: new 32	java/io/InputStreamReader
    //   32: dup
    //   33: aload_1
    //   34: getstatic 38	com/amazonaws/util/StringUtils:avd	Ljava/nio/charset/Charset;
    //   37: invokespecial 41	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   40: invokespecial 44	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   43: astore_3
    //   44: aload_3
    //   45: invokevirtual 48	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   48: astore_1
    //   49: aload_1
    //   50: ifnull +189 -> 239
    //   53: aload_1
    //   54: invokevirtual 53	java/lang/String:trim	()Ljava/lang/String;
    //   57: astore_1
    //   58: aload_1
    //   59: ldc 55
    //   61: invokevirtual 59	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   64: ifne -20 -> 44
    //   67: aload_1
    //   68: iconst_2
    //   69: anewarray 24	java/lang/Class
    //   72: dup
    //   73: iconst_0
    //   74: aload_2
    //   75: aastore
    //   76: dup
    //   77: iconst_1
    //   78: aload_0
    //   79: invokevirtual 22	java/lang/Object:getClass	()Ljava/lang/Class;
    //   82: aastore
    //   83: invokestatic 64	com/amazonaws/util/ClassLoaderHelper:b	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;
    //   86: invokevirtual 68	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   89: astore 5
    //   91: aload_2
    //   92: aload 5
    //   94: invokevirtual 71	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   97: ifeq +104 -> 201
    //   100: aload_2
    //   101: ldc 73
    //   103: if_acmpne +65 -> 168
    //   106: aload 4
    //   108: aload 5
    //   110: checkcast 73	com/amazonaws/handlers/RequestHandler2
    //   113: invokeinterface 78 2 0
    //   118: pop
    //   119: goto -75 -> 44
    //   122: astore_2
    //   123: aload_3
    //   124: astore_1
    //   125: new 80	com/amazonaws/AmazonClientException
    //   128: dup
    //   129: new 82	java/lang/StringBuilder
    //   132: dup
    //   133: ldc 84
    //   135: invokespecial 87	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: aload_2
    //   139: invokevirtual 90	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   142: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: aload_2
    //   149: invokespecial 100	com/amazonaws/AmazonClientException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   152: athrow
    //   153: astore_3
    //   154: aload_1
    //   155: astore_2
    //   156: aload_3
    //   157: astore_1
    //   158: aload_2
    //   159: ifnull +7 -> 166
    //   162: aload_2
    //   163: invokevirtual 103	java/io/BufferedReader:close	()V
    //   166: aload_1
    //   167: athrow
    //   168: aload_2
    //   169: ldc 105
    //   171: if_acmpne +22 -> 193
    //   174: aload 4
    //   176: aload 5
    //   178: checkcast 105	com/amazonaws/handlers/RequestHandler
    //   181: invokestatic 109	com/amazonaws/handlers/RequestHandler2:a	(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;
    //   184: invokeinterface 78 2 0
    //   189: pop
    //   190: goto -146 -> 44
    //   193: new 111	java/lang/IllegalStateException
    //   196: dup
    //   197: invokespecial 112	java/lang/IllegalStateException:<init>	()V
    //   200: athrow
    //   201: new 80	com/amazonaws/AmazonClientException
    //   204: dup
    //   205: new 82	java/lang/StringBuilder
    //   208: dup
    //   209: ldc 114
    //   211: invokespecial 87	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: aload_1
    //   215: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc 116
    //   220: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: aload_2
    //   224: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   227: ldc 121
    //   229: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: invokespecial 122	com/amazonaws/AmazonClientException:<init>	(Ljava/lang/String;)V
    //   238: athrow
    //   239: aload_3
    //   240: invokevirtual 103	java/io/BufferedReader:close	()V
    //   243: aload 4
    //   245: areturn
    //   246: astore_1
    //   247: goto -4 -> 243
    //   250: astore_2
    //   251: goto -85 -> 166
    //   254: astore_1
    //   255: aconst_null
    //   256: astore_2
    //   257: goto -99 -> 158
    //   260: astore_2
    //   261: aconst_null
    //   262: astore_1
    //   263: goto -138 -> 125
    //   266: astore_1
    //   267: aload_3
    //   268: astore_2
    //   269: goto -111 -> 158
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	HandlerChainFactory
    //   0	272	1	paramString	String
    //   0	272	2	paramClass	Class<?>
    //   43	81	3	localBufferedReader	java.io.BufferedReader
    //   153	115	3	localObject1	Object
    //   7	237	4	localArrayList	java.util.ArrayList
    //   89	88	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   44	49	122	java/lang/Exception
    //   53	100	122	java/lang/Exception
    //   106	119	122	java/lang/Exception
    //   174	190	122	java/lang/Exception
    //   193	201	122	java/lang/Exception
    //   201	239	122	java/lang/Exception
    //   125	153	153	finally
    //   239	243	246	java/io/IOException
    //   162	166	250	java/io/IOException
    //   9	18	254	finally
    //   25	44	254	finally
    //   9	18	260	java/lang/Exception
    //   25	44	260	java/lang/Exception
    //   44	49	266	finally
    //   53	100	266	finally
    //   106	119	266	finally
    //   174	190	266	finally
    //   193	201	266	finally
    //   201	239	266	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/handlers/HandlerChainFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */