package com.amazonaws.regions;

import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class RegionUtils
{
  private static final Log alS = LogFactory.getLog("com.amazonaws.request");
  private static List<Region> aoV;
  
  public static Region T(String paramString)
  {
    Iterator localIterator = jP().iterator();
    while (localIterator.hasNext())
    {
      Region localRegion = (Region)localIterator.next();
      if (localRegion.name.equals(paramString)) {
        return localRegion;
      }
    }
    return null;
  }
  
  /* Error */
  private static void init()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 63
    //   5: invokestatic 69	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   8: astore_0
    //   9: aload_0
    //   10: ifnull +80 -> 90
    //   13: ldc 63
    //   15: invokestatic 69	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   18: astore_0
    //   19: getstatic 21	com/amazonaws/regions/RegionUtils:alS	Lorg/apache/commons/logging/Log;
    //   22: invokeinterface 74 1 0
    //   27: ifeq +32 -> 59
    //   30: getstatic 21	com/amazonaws/regions/RegionUtils:alS	Lorg/apache/commons/logging/Log;
    //   33: new 76	java/lang/StringBuilder
    //   36: dup
    //   37: ldc 78
    //   39: invokespecial 82	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc 88
    //   48: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokeinterface 96 2 0
    //   59: new 98	java/io/FileInputStream
    //   62: dup
    //   63: new 100	java/io/File
    //   66: dup
    //   67: aload_0
    //   68: invokespecial 101	java/io/File:<init>	(Ljava/lang/String;)V
    //   71: invokespecial 104	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   74: astore_0
    //   75: new 106	com/amazonaws/regions/RegionMetadataParser
    //   78: dup
    //   79: invokespecial 108	com/amazonaws/regions/RegionMetadataParser:<init>	()V
    //   82: pop
    //   83: aload_0
    //   84: invokestatic 112	com/amazonaws/regions/RegionMetadataParser:e	(Ljava/io/InputStream;)Ljava/util/List;
    //   87: putstatic 114	com/amazonaws/regions/RegionUtils:aoV	Ljava/util/List;
    //   90: getstatic 114	com/amazonaws/regions/RegionUtils:aoV	Ljava/util/List;
    //   93: ifnonnull +30 -> 123
    //   96: getstatic 21	com/amazonaws/regions/RegionUtils:alS	Lorg/apache/commons/logging/Log;
    //   99: invokeinterface 74 1 0
    //   104: ifeq +13 -> 117
    //   107: getstatic 21	com/amazonaws/regions/RegionUtils:alS	Lorg/apache/commons/logging/Log;
    //   110: ldc 116
    //   112: invokeinterface 96 2 0
    //   117: invokestatic 119	com/amazonaws/regions/RegionDefaults:jP	()Ljava/util/List;
    //   120: putstatic 114	com/amazonaws/regions/RegionUtils:aoV	Ljava/util/List;
    //   123: getstatic 114	com/amazonaws/regions/RegionUtils:aoV	Ljava/util/List;
    //   126: ifnonnull +46 -> 172
    //   129: new 121	java/lang/RuntimeException
    //   132: dup
    //   133: ldc 123
    //   135: invokespecial 124	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   138: athrow
    //   139: astore_0
    //   140: ldc 2
    //   142: monitorexit
    //   143: aload_0
    //   144: athrow
    //   145: astore_0
    //   146: getstatic 21	com/amazonaws/regions/RegionUtils:alS	Lorg/apache/commons/logging/Log;
    //   149: ldc 126
    //   151: aload_0
    //   152: invokeinterface 130 3 0
    //   157: goto -67 -> 90
    //   160: astore_0
    //   161: new 121	java/lang/RuntimeException
    //   164: dup
    //   165: ldc -124
    //   167: aload_0
    //   168: invokespecial 135	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   171: athrow
    //   172: ldc 2
    //   174: monitorexit
    //   175: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   8	76	0	localObject1	Object
    //   139	5	0	localObject2	Object
    //   145	7	0	localException	Exception
    //   160	8	0	localFileNotFoundException	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   3	9	139	finally
    //   13	59	139	finally
    //   59	75	139	finally
    //   75	90	139	finally
    //   90	117	139	finally
    //   117	123	139	finally
    //   123	139	139	finally
    //   146	157	139	finally
    //   161	172	139	finally
    //   75	90	145	java/lang/Exception
    //   13	59	160	java/io/FileNotFoundException
    //   59	75	160	java/io/FileNotFoundException
    //   75	90	160	java/io/FileNotFoundException
    //   146	157	160	java/io/FileNotFoundException
  }
  
  private static List<Region> jP()
  {
    try
    {
      if (aoV == null) {
        init();
      }
      List localList = aoV;
      return localList;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/regions/RegionUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */