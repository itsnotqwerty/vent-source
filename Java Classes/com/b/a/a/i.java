package com.b.a.a;

import b.c;
import b.f;
import b.s;
import b.t;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public final class i
{
  public static final byte[] bIG = new byte[0];
  public static final String[] bIH = new String[0];
  public static final Charset bII = Charset.forName("UTF-8");
  
  public static f a(f paramf)
  {
    try
    {
      paramf = f.L(MessageDigest.getInstance("SHA-1").digest(paramf.g()));
      return paramf;
    }
    catch (NoSuchAlgorithmException paramf)
    {
      throw new AssertionError(paramf);
    }
  }
  
  public static <T> List<T> a(List<T> paramList)
  {
    return Collections.unmodifiableList(new ArrayList(paramList));
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static void a(Closeable paramCloseable1, Closeable paramCloseable2)
    throws IOException
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        paramCloseable1.close();
        paramCloseable1 = (Closeable)localObject;
      }
      catch (Throwable paramCloseable1)
      {
        continue;
      }
      try
      {
        paramCloseable2.close();
        paramCloseable2 = paramCloseable1;
      }
      catch (Throwable localThrowable)
      {
        paramCloseable2 = paramCloseable1;
        if (paramCloseable1 != null) {
          continue;
        }
        paramCloseable2 = localThrowable;
        continue;
        if (!(paramCloseable2 instanceof IOException)) {
          continue;
        }
        throw ((IOException)paramCloseable2);
        if (!(paramCloseable2 instanceof RuntimeException)) {
          continue;
        }
        throw ((RuntimeException)paramCloseable2);
        if (!(paramCloseable2 instanceof Error)) {
          continue;
        }
        throw ((Error)paramCloseable2);
        throw new AssertionError(paramCloseable2);
      }
    }
    if (paramCloseable2 == null) {
      return;
    }
  }
  
  public static void a(Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (RuntimeException paramSocket)
    {
      throw paramSocket;
    }
    catch (Exception paramSocket) {}
  }
  
  public static boolean a(s params, int paramInt, TimeUnit paramTimeUnit)
    throws IOException
  {
    long l2 = System.nanoTime();
    long l1;
    if (params.zA().Ll()) {
      l1 = params.zA().d() - l2;
    }
    for (;;)
    {
      params.zA().aw(Math.min(l1, paramTimeUnit.toNanos(paramInt)) + l2);
      try
      {
        paramTimeUnit = new c();
        while (params.b(paramTimeUnit, 2048L) != -1L) {
          paramTimeUnit.t();
        }
      }
      catch (InterruptedIOException paramTimeUnit)
      {
        if (l1 == Long.MAX_VALUE) {
          params.zA().Ln();
        }
        for (;;)
        {
          return false;
          l1 = Long.MAX_VALUE;
          break;
          if (l1 == Long.MAX_VALUE) {
            params.zA().Ln();
          }
          for (;;)
          {
            return true;
            params.zA().aw(l1 + l2);
          }
          params.zA().aw(l1 + l2);
        }
      }
      finally
      {
        if (l1 != Long.MAX_VALUE) {
          break label188;
        }
      }
    }
    params.zA().Ln();
    for (;;)
    {
      throw paramTimeUnit;
      label188:
      params.zA().aw(l1 + l2);
    }
  }
  
  public static boolean a(s params, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = a(params, 100, paramTimeUnit);
      return bool;
    }
    catch (IOException params) {}
    return false;
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static <T> T[] a(Class<T> paramClass, T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramArrayOfT1.length;
    int i = 0;
    if (i < k)
    {
      T ? = paramArrayOfT1[i];
      int m = paramArrayOfT2.length;
      int j = 0;
      for (;;)
      {
        if (j < m)
        {
          T ? = paramArrayOfT2[j];
          if (?.equals(?)) {
            localArrayList.add(?);
          }
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
    }
    return localArrayList.toArray((Object[])Array.newInstance(paramClass, localArrayList.size()));
  }
  
  public static int c(URL paramURL)
  {
    return f(paramURL.getProtocol(), paramURL.getPort());
  }
  
  public static <T> List<T> c(T... paramVarArgs)
  {
    return Collections.unmodifiableList(Arrays.asList((Object[])paramVarArgs.clone()));
  }
  
  public static void d(long paramLong1, long paramLong2)
  {
    if (((0L | paramLong2) < 0L) || (0L > paramLong1) || (paramLong1 - 0L < paramLong2)) {
      throw new ArrayIndexOutOfBoundsException();
    }
  }
  
  public static int dD(String paramString)
  {
    if ("http".equals(paramString)) {
      return 80;
    }
    if ("https".equals(paramString)) {
      return 443;
    }
    return -1;
  }
  
  private static int f(String paramString, int paramInt)
  {
    if (paramInt != -1) {
      return paramInt;
    }
    return dD(paramString);
  }
  
  public static int g(URI paramURI)
  {
    return f(paramURI.getScheme(), paramURI.getPort());
  }
  
  public static ThreadFactory g(String paramString, final boolean paramBoolean)
  {
    new ThreadFactory()
    {
      public final Thread newThread(Runnable paramAnonymousRunnable)
      {
        paramAnonymousRunnable = new Thread(paramAnonymousRunnable, this.a);
        paramAnonymousRunnable.setDaemon(paramBoolean);
        return paramAnonymousRunnable;
      }
    };
  }
  
  public static <K, V> Map<K, V> j(Map<K, V> paramMap)
  {
    return Collections.unmodifiableMap(new LinkedHashMap(paramMap));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */