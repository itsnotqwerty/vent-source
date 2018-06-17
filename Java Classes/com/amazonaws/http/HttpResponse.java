package com.amazonaws.http;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class HttpResponse
{
  private InputStream amE;
  public final String aog;
  final InputStream aoh;
  public final Map<String, String> headers;
  public final int statusCode;
  
  private HttpResponse(String paramString, int paramInt, Map<String, String> paramMap, InputStream paramInputStream)
  {
    this.aog = paramString;
    this.statusCode = paramInt;
    this.headers = paramMap;
    this.aoh = paramInputStream;
  }
  
  public static Builder jE()
  {
    return new Builder();
  }
  
  /* Error */
  public final InputStream getContent()
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	com/amazonaws/http/HttpResponse:amE	Ljava/io/InputStream;
    //   4: ifnonnull +48 -> 52
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 30	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   13: ifnull +44 -> 57
    //   16: ldc 47
    //   18: aload_0
    //   19: getfield 28	com/amazonaws/http/HttpResponse:headers	Ljava/util/Map;
    //   22: ldc 49
    //   24: invokeinterface 55 2 0
    //   29: invokevirtual 61	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifeq +25 -> 57
    //   35: aload_0
    //   36: new 63	java/util/zip/GZIPInputStream
    //   39: dup
    //   40: aload_0
    //   41: getfield 30	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   44: invokespecial 66	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   47: putfield 45	com/amazonaws/http/HttpResponse:amE	Ljava/io/InputStream;
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_0
    //   53: getfield 45	com/amazonaws/http/HttpResponse:amE	Ljava/io/InputStream;
    //   56: areturn
    //   57: aload_0
    //   58: aload_0
    //   59: getfield 30	com/amazonaws/http/HttpResponse:aoh	Ljava/io/InputStream;
    //   62: putfield 45	com/amazonaws/http/HttpResponse:amE	Ljava/io/InputStream;
    //   65: goto -15 -> 50
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	HttpResponse
    //   68	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	50	68	finally
    //   50	52	68	finally
    //   57	65	68	finally
    //   69	71	68	finally
  }
  
  public static class Builder
  {
    InputStream amE;
    String aog;
    final Map<String, String> headers = new HashMap();
    int statusCode;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/HttpResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */