package io.intercom.android.sdk.persistence;

import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.e;
import io.intercom.a.b.a.k;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.IoUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

public class JsonStorage
{
  private static final Twig TWIG = ;
  private final e gson;
  
  public JsonStorage(e parame)
  {
    this.gson = parame;
  }
  
  public int getDirectoryFileCount(File paramFile)
  {
    paramFile = paramFile.list();
    if (paramFile == null) {
      return 0;
    }
    return paramFile.length;
  }
  
  public <T> void loadFilesInDirectory(File paramFile, Class<T> paramClass, LoadHandler<List<T>> paramLoadHandler)
  {
    loadFilesInDirectory(paramFile, paramClass, paramLoadHandler, LoadFailureHandler.NONE);
  }
  
  /* Error */
  public <T> void loadFilesInDirectory(File paramFile, Class<T> paramClass, LoadHandler<List<T>> paramLoadHandler, LoadFailureHandler paramLoadFailureHandler)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_1
    //   4: invokevirtual 58	java/io/File:listFiles	()[Ljava/io/File;
    //   7: astore 10
    //   9: aload 10
    //   11: ifnonnull +4 -> 15
    //   14: return
    //   15: new 60	java/util/ArrayList
    //   18: dup
    //   19: aload 10
    //   21: arraylength
    //   22: invokespecial 63	java/util/ArrayList:<init>	(I)V
    //   25: astore 11
    //   27: aload 10
    //   29: arraylength
    //   30: istore 6
    //   32: iconst_0
    //   33: istore 5
    //   35: aload 7
    //   37: astore_1
    //   38: iload 5
    //   40: iload 6
    //   42: if_icmpge +96 -> 138
    //   45: aload 10
    //   47: iload 5
    //   49: aaload
    //   50: astore 12
    //   52: new 65	java/io/FileReader
    //   55: dup
    //   56: aload 12
    //   58: invokespecial 68	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   61: astore 7
    //   63: aload 7
    //   65: astore 8
    //   67: aload 11
    //   69: aload_0
    //   70: getfield 33	io/intercom/android/sdk/persistence/JsonStorage:gson	Lio/intercom/a/b/a/e;
    //   73: aload 7
    //   75: aload_2
    //   76: invokevirtual 74	io/intercom/a/b/a/e:a	(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    //   79: invokeinterface 80 2 0
    //   84: pop
    //   85: aload 7
    //   87: invokestatic 86	io/intercom/android/sdk/utilities/IoUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   90: aload 7
    //   92: astore_1
    //   93: iload 5
    //   95: iconst_1
    //   96: iadd
    //   97: istore 5
    //   99: goto -61 -> 38
    //   102: astore 9
    //   104: aload 7
    //   106: astore_1
    //   107: aload_1
    //   108: astore 8
    //   110: aload 4
    //   112: aload 12
    //   114: aload 9
    //   116: invokeinterface 90 3 0
    //   121: aload_1
    //   122: invokestatic 86	io/intercom/android/sdk/utilities/IoUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   125: goto -32 -> 93
    //   128: astore_2
    //   129: aload 8
    //   131: astore_1
    //   132: aload_1
    //   133: invokestatic 86	io/intercom/android/sdk/utilities/IoUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   136: aload_2
    //   137: athrow
    //   138: aload_3
    //   139: aload 11
    //   141: invokeinterface 94 2 0
    //   146: return
    //   147: astore_2
    //   148: goto -16 -> 132
    //   151: astore 9
    //   153: goto -46 -> 107
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	JsonStorage
    //   0	156	1	paramFile	File
    //   0	156	2	paramClass	Class<T>
    //   0	156	3	paramLoadHandler	LoadHandler<List<T>>
    //   0	156	4	paramLoadFailureHandler	LoadFailureHandler
    //   33	65	5	i	int
    //   30	13	6	j	int
    //   1	104	7	localFileReader	java.io.FileReader
    //   65	65	8	localObject	Object
    //   102	13	9	localException1	Exception
    //   151	1	9	localException2	Exception
    //   7	39	10	arrayOfFile	File[]
    //   25	115	11	localArrayList	java.util.ArrayList
    //   50	63	12	localFile	File
    // Exception table:
    //   from	to	target	type
    //   67	85	102	java/lang/Exception
    //   67	85	128	finally
    //   110	121	128	finally
    //   52	63	147	finally
    //   52	63	151	java/lang/Exception
  }
  
  /* Error */
  public <T> void loadThenDelete(File paramFile, Class<T> paramClass, LoadHandler<T> paramLoadHandler)
  {
    // Byte code:
    //   0: new 65	java/io/FileReader
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 68	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   8: astore 4
    //   10: aload_3
    //   11: aload_0
    //   12: getfield 33	io/intercom/android/sdk/persistence/JsonStorage:gson	Lio/intercom/a/b/a/e;
    //   15: aload 4
    //   17: aload_2
    //   18: invokevirtual 74	io/intercom/a/b/a/e:a	(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    //   21: invokeinterface 94 2 0
    //   26: aload_1
    //   27: invokestatic 99	io/intercom/android/sdk/utilities/IoUtils:safelyDelete	(Ljava/io/File;)V
    //   30: aload 4
    //   32: invokestatic 86	io/intercom/android/sdk/utilities/IoUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   35: return
    //   36: astore_2
    //   37: aconst_null
    //   38: astore 4
    //   40: aload_1
    //   41: invokestatic 99	io/intercom/android/sdk/utilities/IoUtils:safelyDelete	(Ljava/io/File;)V
    //   44: aload 4
    //   46: invokestatic 86	io/intercom/android/sdk/utilities/IoUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   49: return
    //   50: astore_2
    //   51: aconst_null
    //   52: astore_3
    //   53: aload_1
    //   54: invokestatic 99	io/intercom/android/sdk/utilities/IoUtils:safelyDelete	(Ljava/io/File;)V
    //   57: aload_3
    //   58: invokestatic 86	io/intercom/android/sdk/utilities/IoUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   61: aload_2
    //   62: athrow
    //   63: astore_2
    //   64: aload 4
    //   66: astore_3
    //   67: goto -14 -> 53
    //   70: astore_2
    //   71: goto -31 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	JsonStorage
    //   0	74	1	paramFile	File
    //   0	74	2	paramClass	Class<T>
    //   0	74	3	paramLoadHandler	LoadHandler<T>
    //   8	57	4	localFileReader	java.io.FileReader
    // Exception table:
    //   from	to	target	type
    //   0	10	36	java/lang/Exception
    //   0	10	50	finally
    //   10	26	63	finally
    //   10	26	70	java/lang/Exception
  }
  
  public void saveToFileAsJson(Object paramObject, File paramFile)
  {
    Object localObject3 = null;
    k localk = null;
    Object localObject1 = localObject3;
    try
    {
      if (paramFile.exists())
      {
        localObject1 = localObject3;
        if (!paramFile.delete())
        {
          localObject1 = localObject3;
          throw new RuntimeException("Couldn't delete existing file at " + paramFile.getAbsolutePath());
        }
      }
    }
    catch (Exception paramFile)
    {
      paramFile = paramFile;
      paramObject = localk;
      localObject1 = paramObject;
      TWIG.internal("Couldn't save file to disk: " + paramFile);
      IoUtils.closeQuietly((Closeable)paramObject);
      return;
      localObject1 = localObject3;
      File localFile2 = paramFile.getParentFile();
      if (localFile2 != null)
      {
        localObject1 = localObject3;
        if (!localFile2.exists())
        {
          localObject1 = localObject3;
          if (!localFile2.mkdirs())
          {
            localObject1 = localObject3;
            throw new RuntimeException("Couldn't create missing parent dir at " + localFile2.getAbsolutePath());
          }
        }
      }
    }
    finally {}
    for (;;)
    {
      IoUtils.closeQuietly((Closeable)localObject1);
      throw ((Throwable)paramObject);
      localObject1 = localObject3;
      paramFile = new FileWriter(paramFile);
      try
      {
        localObject1 = this.gson;
        if (paramObject != null) {
          ((e)localObject1).a(paramObject, paramObject.getClass(), paramFile);
        }
        for (;;)
        {
          IoUtils.closeQuietly(paramFile);
          return;
          localk = k.cRt;
          try
          {
            paramObject = ((e)localObject1).b(io.intercom.a.b.a.b.j.b(paramFile));
            bool1 = ((c)paramObject).bgE;
            ((c)paramObject).bgE = true;
            bool2 = ((c)paramObject).bgC;
            ((c)paramObject).bgC = ((e)localObject1).bgC;
            bool3 = ((c)paramObject).bgz;
            ((c)paramObject).bgz = ((e)localObject1).bgz;
          }
          catch (IOException paramObject)
          {
            try
            {
              io.intercom.a.b.a.b.j.a(localk, (c)paramObject);
              ((c)paramObject).bgE = bool1;
              ((c)paramObject).bgC = bool2;
              ((c)paramObject).bgz = bool3;
              continue;
            }
            catch (IOException localIOException)
            {
              throw new io.intercom.a.b.a.j(localIOException);
            }
            finally
            {
              boolean bool1;
              boolean bool2;
              boolean bool3;
              ((c)paramObject).bgE = bool1;
              ((c)paramObject).bgC = bool2;
              ((c)paramObject).bgz = bool3;
            }
            paramObject = paramObject;
            throw new io.intercom.a.b.a.j((Throwable)paramObject);
          }
        }
      }
      catch (Exception localException)
      {
        paramObject = paramFile;
        paramFile = localException;
        break;
      }
      finally
      {
        File localFile1 = paramFile;
      }
    }
  }
  
  public static abstract interface LoadFailureHandler
  {
    public static final LoadFailureHandler NONE = new LoadFailureHandler()
    {
      public final void onLoadFailed(File paramAnonymousFile, Exception paramAnonymousException) {}
    };
    
    public abstract void onLoadFailed(File paramFile, Exception paramException);
  }
  
  public static abstract interface LoadHandler<T>
  {
    public abstract void onLoad(T paramT);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/persistence/JsonStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */