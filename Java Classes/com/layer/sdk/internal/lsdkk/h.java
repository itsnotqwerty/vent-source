package com.layer.sdk.internal.lsdkk;

import com.layer.b.e.b;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class h
{
  public static File a(String[] paramArrayOfString, String paramString)
    throws IOException
  {
    int i = 0;
    File localFile = new File(paramString);
    ZipOutputStream localZipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(localFile)));
    for (;;)
    {
      try
      {
        byte[] arrayOfByte = new byte['ࠀ'];
        if (i >= paramArrayOfString.length) {
          continue;
        }
        if (paramArrayOfString[i] == null) {
          continue;
        }
        paramString = new BufferedInputStream(new FileInputStream(paramArrayOfString[i]), 2048);
        try
        {
          localZipOutputStream.putNextEntry(new ZipEntry(paramArrayOfString[i].substring(paramArrayOfString[i].lastIndexOf("/") + 1)));
          int j = paramString.read(arrayOfByte, 0, 2048);
          if (j == -1) {
            continue;
          }
          localZipOutputStream.write(arrayOfByte, 0, j);
          continue;
          if (paramString == null) {
            continue;
          }
        }
        finally {}
      }
      finally
      {
        paramString = null;
        continue;
      }
      paramString.close();
      localZipOutputStream.close();
      throw paramArrayOfString;
      paramString.close();
      i += 1;
    }
    localZipOutputStream.close();
    return localFile;
  }
  
  /* Error */
  public static Exception a(File paramFile, a parama)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 78	java/io/File:exists	()Z
    //   4: ifne +16 -> 20
    //   7: aload_0
    //   8: invokevirtual 82	java/io/File:getParentFile	()Ljava/io/File;
    //   11: invokevirtual 85	java/io/File:mkdirs	()Z
    //   14: pop
    //   15: aload_0
    //   16: invokevirtual 88	java/io/File:createNewFile	()Z
    //   19: pop
    //   20: new 90	java/io/RandomAccessFile
    //   23: dup
    //   24: aload_0
    //   25: ldc 92
    //   27: invokespecial 95	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   30: astore_2
    //   31: aload_2
    //   32: invokevirtual 99	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   35: lconst_0
    //   36: ldc2_w 100
    //   39: iconst_0
    //   40: invokevirtual 107	java/nio/channels/FileChannel:lock	(JJZ)Ljava/nio/channels/FileLock;
    //   43: astore_3
    //   44: aload_1
    //   45: aload_0
    //   46: invokeinterface 109 2 0
    //   51: aload_3
    //   52: ifnull +7 -> 59
    //   55: aload_3
    //   56: invokevirtual 114	java/nio/channels/FileLock:release	()V
    //   59: aload_2
    //   60: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore_0
    //   66: aconst_null
    //   67: astore_3
    //   68: aconst_null
    //   69: astore_1
    //   70: aload_3
    //   71: ifnull +7 -> 78
    //   74: aload_3
    //   75: invokevirtual 114	java/nio/channels/FileLock:release	()V
    //   78: aload_1
    //   79: ifnull +7 -> 86
    //   82: aload_1
    //   83: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   86: aload_0
    //   87: areturn
    //   88: astore_0
    //   89: aconst_null
    //   90: astore_3
    //   91: aconst_null
    //   92: astore_2
    //   93: aload_3
    //   94: ifnull +7 -> 101
    //   97: aload_3
    //   98: invokevirtual 114	java/nio/channels/FileLock:release	()V
    //   101: aload_2
    //   102: ifnull +7 -> 109
    //   105: aload_2
    //   106: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   109: aload_0
    //   110: athrow
    //   111: astore_0
    //   112: aconst_null
    //   113: astore_3
    //   114: goto -21 -> 93
    //   117: astore_0
    //   118: goto -25 -> 93
    //   121: astore_0
    //   122: aconst_null
    //   123: astore_3
    //   124: aload_2
    //   125: astore_1
    //   126: goto -56 -> 70
    //   129: astore_0
    //   130: aload_2
    //   131: astore_1
    //   132: goto -62 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	paramFile	File
    //   0	135	1	parama	a
    //   30	101	2	localRandomAccessFile	java.io.RandomAccessFile
    //   43	81	3	localFileLock	java.nio.channels.FileLock
    // Exception table:
    //   from	to	target	type
    //   0	20	65	java/lang/Exception
    //   20	31	65	java/lang/Exception
    //   0	20	88	finally
    //   20	31	88	finally
    //   31	44	111	finally
    //   44	51	117	finally
    //   31	44	121	java/lang/Exception
    //   44	51	129	java/lang/Exception
  }
  
  public static String a(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1.endsWith(paramString2)) {
      str = paramString1.substring(0, paramString1.length() - paramString2.length());
    }
    return str;
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong)
    throws IOException
  {
    byte[] arrayOfByte = new byte['ࠀ'];
    while (paramLong > 0L)
    {
      if (paramLong > 2048L) {}
      for (int i = 2048;; i = (int)paramLong)
      {
        i = paramInputStream.read(arrayOfByte, 0, i);
        if (i >= 0) {
          break;
        }
        throw new IOException("Reached the end of the InputStream, but expected " + paramLong + " more bytes.");
      }
      if (i > 0)
      {
        paramLong -= i;
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
  }
  
  public static void a(String[] paramArrayOfString)
    throws IOException
  {
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (paramArrayOfString[i] != null) {
        new File(paramArrayOfString[i]).delete();
      }
      i += 1;
    }
  }
  
  public static boolean a(File paramFile)
  {
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      boolean bool1 = true;
      for (;;)
      {
        bool2 = bool1;
        if (i >= j) {
          break;
        }
        bool1 &= a(arrayOfFile[i]);
        i += 1;
      }
    }
    boolean bool2 = true;
    return (paramFile.delete()) && (bool2);
  }
  
  public static long b(File paramFile)
  {
    long l1 = 0L;
    long l2 = l1;
    if (paramFile != null)
    {
      l2 = l1;
      if (paramFile.exists())
      {
        l2 = l1;
        if (paramFile.isDirectory())
        {
          paramFile = paramFile.listFiles();
          int j = paramFile.length;
          int i = 0;
          l2 = l1;
          if (i < j)
          {
            File localFile = paramFile[i];
            if (localFile.isFile()) {}
            for (l1 += localFile.length();; l1 += b(localFile))
            {
              i += 1;
              break;
            }
          }
        }
      }
    }
    return l2;
  }
  
  public static boolean b(String paramString1, String paramString2)
  {
    try
    {
      b.a(new FileInputStream(paramString1), new FileOutputStream(paramString2));
      return true;
    }
    catch (IOException paramString1) {}
    return false;
  }
  
  public static abstract interface a
  {
    public abstract void a(File paramFile)
      throws Exception;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */