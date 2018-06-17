package io.intercom.okhttp3;

import io.intercom.b.d;
import io.intercom.b.e;
import io.intercom.b.f;
import io.intercom.b.g;
import io.intercom.b.h;
import io.intercom.b.l;
import io.intercom.b.r;
import io.intercom.b.s;
import io.intercom.okhttp3.internal.Util;
import io.intercom.okhttp3.internal.cache.CacheRequest;
import io.intercom.okhttp3.internal.cache.CacheStrategy;
import io.intercom.okhttp3.internal.cache.DiskLruCache;
import io.intercom.okhttp3.internal.cache.DiskLruCache.Editor;
import io.intercom.okhttp3.internal.cache.DiskLruCache.Snapshot;
import io.intercom.okhttp3.internal.cache.InternalCache;
import io.intercom.okhttp3.internal.http.HttpHeaders;
import io.intercom.okhttp3.internal.http.StatusLine;
import io.intercom.okhttp3.internal.io.FileSystem;
import io.intercom.okhttp3.internal.platform.Platform;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

public final class Cache
  implements Closeable, Flushable
{
  private static final int ENTRY_BODY = 1;
  private static final int ENTRY_COUNT = 2;
  private static final int ENTRY_METADATA = 0;
  private static final int VERSION = 201105;
  final DiskLruCache cache;
  private int hitCount;
  final InternalCache internalCache = new InternalCache()
  {
    public Response get(Request paramAnonymousRequest)
      throws IOException
    {
      return Cache.this.get(paramAnonymousRequest);
    }
    
    public CacheRequest put(Response paramAnonymousResponse)
      throws IOException
    {
      return Cache.this.put(paramAnonymousResponse);
    }
    
    public void remove(Request paramAnonymousRequest)
      throws IOException
    {
      Cache.this.remove(paramAnonymousRequest);
    }
    
    public void trackConditionalCacheHit()
    {
      Cache.this.trackConditionalCacheHit();
    }
    
    public void trackResponse(CacheStrategy paramAnonymousCacheStrategy)
    {
      Cache.this.trackResponse(paramAnonymousCacheStrategy);
    }
    
    public void update(Response paramAnonymousResponse1, Response paramAnonymousResponse2)
    {
      Cache.this.update(paramAnonymousResponse1, paramAnonymousResponse2);
    }
  };
  private int networkCount;
  private int requestCount;
  int writeAbortCount;
  int writeSuccessCount;
  
  public Cache(File paramFile, long paramLong)
  {
    this(paramFile, paramLong, FileSystem.SYSTEM);
  }
  
  Cache(File paramFile, long paramLong, FileSystem paramFileSystem)
  {
    this.cache = DiskLruCache.create(paramFileSystem, paramFile, 201105, 2, paramLong);
  }
  
  private void abortQuietly(@Nullable DiskLruCache.Editor paramEditor)
  {
    if (paramEditor != null) {}
    try
    {
      paramEditor.abort();
      return;
    }
    catch (IOException paramEditor) {}
  }
  
  public static String key(HttpUrl paramHttpUrl)
  {
    return f.fh(paramHttpUrl.toString()).KG().KJ();
  }
  
  static int readInt(e parame)
    throws IOException
  {
    long l;
    try
    {
      l = parame.Kw();
      parame = parame.Kz();
      if ((l < 0L) || (l > 2147483647L) || (!parame.isEmpty())) {
        throw new IOException("expected an int but was \"" + l + parame + "\"");
      }
    }
    catch (NumberFormatException parame)
    {
      throw new IOException(parame.getMessage());
    }
    return (int)l;
  }
  
  public final void close()
    throws IOException
  {
    this.cache.close();
  }
  
  public final void delete()
    throws IOException
  {
    this.cache.delete();
  }
  
  public final File directory()
  {
    return this.cache.getDirectory();
  }
  
  public final void evictAll()
    throws IOException
  {
    this.cache.evictAll();
  }
  
  public final void flush()
    throws IOException
  {
    this.cache.flush();
  }
  
  @Nullable
  final Response get(Request paramRequest)
  {
    Object localObject = key(paramRequest.url());
    try
    {
      localObject = this.cache.get((String)localObject);
      if (localObject == null) {
        return null;
      }
      try
      {
        Entry localEntry = new Entry(((DiskLruCache.Snapshot)localObject).getSource(0));
        localObject = localEntry.response((DiskLruCache.Snapshot)localObject);
        if (!localEntry.matches(paramRequest, (Response)localObject))
        {
          Util.closeQuietly(((Response)localObject).body());
          return null;
        }
      }
      catch (IOException paramRequest)
      {
        Util.closeQuietly((Closeable)localObject);
        return null;
      }
      return (Response)localObject;
    }
    catch (IOException paramRequest) {}
    return null;
  }
  
  public final int hitCount()
  {
    try
    {
      int i = this.hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void initialize()
    throws IOException
  {
    this.cache.initialize();
  }
  
  public final boolean isClosed()
  {
    return this.cache.isClosed();
  }
  
  public final long maxSize()
  {
    return this.cache.getMaxSize();
  }
  
  public final int networkCount()
  {
    try
    {
      int i = this.networkCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  @Nullable
  final CacheRequest put(Response paramResponse)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 227	io/intercom/okhttp3/Response:request	()Lio/intercom/okhttp3/Request;
    //   4: invokevirtual 230	io/intercom/okhttp3/Request:method	()Ljava/lang/String;
    //   7: astore_2
    //   8: aload_1
    //   9: invokevirtual 227	io/intercom/okhttp3/Response:request	()Lio/intercom/okhttp3/Request;
    //   12: invokevirtual 230	io/intercom/okhttp3/Request:method	()Ljava/lang/String;
    //   15: invokestatic 236	io/intercom/okhttp3/internal/http/HttpMethod:invalidatesCache	(Ljava/lang/String;)Z
    //   18: ifeq +13 -> 31
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 227	io/intercom/okhttp3/Response:request	()Lio/intercom/okhttp3/Request;
    //   26: invokevirtual 240	io/intercom/okhttp3/Cache:remove	(Lio/intercom/okhttp3/Request;)V
    //   29: aconst_null
    //   30: areturn
    //   31: aload_2
    //   32: ldc -14
    //   34: invokevirtual 246	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   37: ifeq -8 -> 29
    //   40: aload_1
    //   41: invokestatic 252	io/intercom/okhttp3/internal/http/HttpHeaders:hasVaryAll	(Lio/intercom/okhttp3/Response;)Z
    //   44: ifne -15 -> 29
    //   47: new 24	io/intercom/okhttp3/Cache$Entry
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 255	io/intercom/okhttp3/Cache$Entry:<init>	(Lio/intercom/okhttp3/Response;)V
    //   55: astore_2
    //   56: aload_0
    //   57: getfield 71	io/intercom/okhttp3/Cache:cache	Lio/intercom/okhttp3/internal/cache/DiskLruCache;
    //   60: aload_1
    //   61: invokevirtual 227	io/intercom/okhttp3/Response:request	()Lio/intercom/okhttp3/Request;
    //   64: invokevirtual 171	io/intercom/okhttp3/Request:url	()Lio/intercom/okhttp3/HttpUrl;
    //   67: invokestatic 173	io/intercom/okhttp3/Cache:key	(Lio/intercom/okhttp3/HttpUrl;)Ljava/lang/String;
    //   70: invokevirtual 259	io/intercom/okhttp3/internal/cache/DiskLruCache:edit	(Ljava/lang/String;)Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;
    //   73: astore_1
    //   74: aload_1
    //   75: ifnull -46 -> 29
    //   78: aload_2
    //   79: aload_1
    //   80: invokevirtual 262	io/intercom/okhttp3/Cache$Entry:writeTo	(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    //   83: new 14	io/intercom/okhttp3/Cache$CacheRequestImpl
    //   86: dup
    //   87: aload_0
    //   88: aload_1
    //   89: invokespecial 265	io/intercom/okhttp3/Cache$CacheRequestImpl:<init>	(Lio/intercom/okhttp3/Cache;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    //   92: astore_2
    //   93: aload_2
    //   94: areturn
    //   95: astore_1
    //   96: aconst_null
    //   97: astore_1
    //   98: aload_0
    //   99: aload_1
    //   100: invokespecial 267	io/intercom/okhttp3/Cache:abortQuietly	(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;)V
    //   103: aconst_null
    //   104: areturn
    //   105: astore_2
    //   106: goto -8 -> 98
    //   109: astore_1
    //   110: aconst_null
    //   111: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	Cache
    //   0	112	1	paramResponse	Response
    //   7	87	2	localObject	Object
    //   105	1	2	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   56	74	95	java/io/IOException
    //   78	93	105	java/io/IOException
    //   21	29	109	java/io/IOException
  }
  
  final void remove(Request paramRequest)
    throws IOException
  {
    this.cache.remove(key(paramRequest.url()));
  }
  
  public final int requestCount()
  {
    try
    {
      int i = this.requestCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final long size()
    throws IOException
  {
    return this.cache.size();
  }
  
  final void trackConditionalCacheHit()
  {
    try
    {
      this.hitCount += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  final void trackResponse(CacheStrategy paramCacheStrategy)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 271	io/intercom/okhttp3/Cache:requestCount	I
    //   7: iconst_1
    //   8: iadd
    //   9: putfield 271	io/intercom/okhttp3/Cache:requestCount	I
    //   12: aload_1
    //   13: getfield 283	io/intercom/okhttp3/internal/cache/CacheStrategy:networkRequest	Lio/intercom/okhttp3/Request;
    //   16: ifnull +16 -> 32
    //   19: aload_0
    //   20: aload_0
    //   21: getfield 221	io/intercom/okhttp3/Cache:networkCount	I
    //   24: iconst_1
    //   25: iadd
    //   26: putfield 221	io/intercom/okhttp3/Cache:networkCount	I
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_1
    //   33: getfield 287	io/intercom/okhttp3/internal/cache/CacheStrategy:cacheResponse	Lio/intercom/okhttp3/Response;
    //   36: ifnull -7 -> 29
    //   39: aload_0
    //   40: aload_0
    //   41: getfield 209	io/intercom/okhttp3/Cache:hitCount	I
    //   44: iconst_1
    //   45: iadd
    //   46: putfield 209	io/intercom/okhttp3/Cache:hitCount	I
    //   49: goto -20 -> 29
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	Cache
    //   0	57	1	paramCacheStrategy	CacheStrategy
    // Exception table:
    //   from	to	target	type
    //   2	29	52	finally
    //   32	49	52	finally
  }
  
  final void update(Response paramResponse1, Response paramResponse2)
  {
    Entry localEntry = new Entry(paramResponse2);
    paramResponse2 = ((CacheResponseBody)paramResponse1.body()).snapshot;
    paramResponse1 = null;
    try
    {
      paramResponse2 = paramResponse2.edit();
      if (paramResponse2 != null)
      {
        paramResponse1 = paramResponse2;
        localEntry.writeTo(paramResponse2);
        paramResponse1 = paramResponse2;
        paramResponse2.commit();
      }
      return;
    }
    catch (IOException paramResponse2)
    {
      abortQuietly(paramResponse1);
    }
  }
  
  public final Iterator<String> urls()
    throws IOException
  {
    new Iterator()
    {
      boolean canRemove;
      final Iterator<DiskLruCache.Snapshot> delegate = Cache.this.cache.snapshots();
      @Nullable
      String nextUrl;
      
      public boolean hasNext()
      {
        if (this.nextUrl != null) {
          return true;
        }
        this.canRemove = false;
        while (this.delegate.hasNext())
        {
          DiskLruCache.Snapshot localSnapshot = (DiskLruCache.Snapshot)this.delegate.next();
          try
          {
            this.nextUrl = l.b(localSnapshot.getSource(0)).Kz();
            localSnapshot.close();
            return true;
          }
          catch (IOException localIOException)
          {
            localIOException = localIOException;
            localSnapshot.close();
          }
          finally
          {
            localObject = finally;
            localSnapshot.close();
            throw ((Throwable)localObject);
          }
        }
        return false;
      }
      
      public String next()
      {
        if (!hasNext()) {
          throw new NoSuchElementException();
        }
        String str = this.nextUrl;
        this.nextUrl = null;
        this.canRemove = true;
        return str;
      }
      
      public void remove()
      {
        if (!this.canRemove) {
          throw new IllegalStateException("remove() before next()");
        }
        this.delegate.remove();
      }
    };
  }
  
  public final int writeAbortCount()
  {
    try
    {
      int i = this.writeAbortCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int writeSuccessCount()
  {
    try
    {
      int i = this.writeSuccessCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private final class CacheRequestImpl
    implements CacheRequest
  {
    private r body;
    private r cacheOut;
    boolean done;
    private final DiskLruCache.Editor editor;
    
    CacheRequestImpl(final DiskLruCache.Editor paramEditor)
    {
      this.editor = paramEditor;
      this.cacheOut = paramEditor.newSink(1);
      this.body = new g(this.cacheOut)
      {
        public void close()
          throws IOException
        {
          synchronized (Cache.this)
          {
            if (Cache.CacheRequestImpl.this.done) {
              return;
            }
            Cache.CacheRequestImpl.this.done = true;
            Cache localCache2 = Cache.this;
            localCache2.writeSuccessCount += 1;
            super.close();
            paramEditor.commit();
            return;
          }
        }
      };
    }
    
    public final void abort()
    {
      synchronized (Cache.this)
      {
        if (this.done) {
          return;
        }
        this.done = true;
        Cache localCache2 = Cache.this;
        localCache2.writeAbortCount += 1;
        Util.closeQuietly(this.cacheOut);
        try
        {
          this.editor.abort();
          return;
        }
        catch (IOException localIOException) {}
      }
    }
    
    public final r body()
    {
      return this.body;
    }
  }
  
  private static class CacheResponseBody
    extends ResponseBody
  {
    private final e bodySource;
    @Nullable
    private final String contentLength;
    @Nullable
    private final String contentType;
    final DiskLruCache.Snapshot snapshot;
    
    CacheResponseBody(final DiskLruCache.Snapshot paramSnapshot, String paramString1, String paramString2)
    {
      this.snapshot = paramSnapshot;
      this.contentType = paramString1;
      this.contentLength = paramString2;
      this.bodySource = l.b(new h(paramSnapshot.getSource(1))
      {
        public void close()
          throws IOException
        {
          paramSnapshot.close();
          super.close();
        }
      });
    }
    
    public long contentLength()
    {
      long l = -1L;
      try
      {
        if (this.contentLength != null) {
          l = Long.parseLong(this.contentLength);
        }
        return l;
      }
      catch (NumberFormatException localNumberFormatException) {}
      return -1L;
    }
    
    public MediaType contentType()
    {
      if (this.contentType != null) {
        return MediaType.parse(this.contentType);
      }
      return null;
    }
    
    public e source()
    {
      return this.bodySource;
    }
  }
  
  private static final class Entry
  {
    private static final String RECEIVED_MILLIS = Platform.get().getPrefix() + "-Received-Millis";
    private static final String SENT_MILLIS = Platform.get().getPrefix() + "-Sent-Millis";
    private final int code;
    @Nullable
    private final Handshake handshake;
    private final String message;
    private final Protocol protocol;
    private final long receivedResponseMillis;
    private final String requestMethod;
    private final Headers responseHeaders;
    private final long sentRequestMillis;
    private final String url;
    private final Headers varyHeaders;
    
    Entry(s params)
      throws IOException
    {
      for (;;)
      {
        try
        {
          e locale1 = l.b(params);
          this.url = locale1.Kz();
          this.requestMethod = locale1.Kz();
          localObject1 = new Headers.Builder();
          int k = Cache.readInt(locale1);
          int i = 0;
          if (i < k)
          {
            ((Headers.Builder)localObject1).addLenient(locale1.Kz());
            i += 1;
            continue;
          }
          this.varyHeaders = ((Headers.Builder)localObject1).build();
          localObject1 = StatusLine.parse(locale1.Kz());
          this.protocol = ((StatusLine)localObject1).protocol;
          this.code = ((StatusLine)localObject1).code;
          this.message = ((StatusLine)localObject1).message;
          localObject1 = new Headers.Builder();
          k = Cache.readInt(locale1);
          i = j;
          if (i < k)
          {
            ((Headers.Builder)localObject1).addLenient(locale1.Kz());
            i += 1;
            continue;
          }
          localObject2 = ((Headers.Builder)localObject1).get(SENT_MILLIS);
          localObject3 = ((Headers.Builder)localObject1).get(RECEIVED_MILLIS);
          ((Headers.Builder)localObject1).removeAll(SENT_MILLIS);
          ((Headers.Builder)localObject1).removeAll(RECEIVED_MILLIS);
          if (localObject2 != null)
          {
            l1 = Long.parseLong((String)localObject2);
            this.sentRequestMillis = l1;
            l1 = l2;
            if (localObject3 != null) {
              l1 = Long.parseLong((String)localObject3);
            }
            this.receivedResponseMillis = l1;
            this.responseHeaders = ((Headers.Builder)localObject1).build();
            if (!isHttps()) {
              break label411;
            }
            localObject1 = locale1.Kz();
            if (((String)localObject1).length() <= 0) {
              break;
            }
            throw new IOException("expected \"\" but was \"" + (String)localObject1 + "\"");
          }
        }
        finally
        {
          params.close();
        }
        long l1 = 0L;
      }
      Object localObject1 = CipherSuite.forJavaName(locale2.Kz());
      Object localObject2 = readCertificateList(locale2);
      Object localObject3 = readCertificateList(locale2);
      TlsVersion localTlsVersion;
      if (!locale2.Kr()) {
        localTlsVersion = TlsVersion.forJavaName(locale2.Kz());
      }
      label411:
      for (this.handshake = Handshake.get(localTlsVersion, (CipherSuite)localObject1, (List)localObject2, (List)localObject3);; this.handshake = null)
      {
        params.close();
        return;
        localTlsVersion = TlsVersion.SSL_3_0;
        break;
      }
    }
    
    Entry(Response paramResponse)
    {
      this.url = paramResponse.request().url().toString();
      this.varyHeaders = HttpHeaders.varyHeaders(paramResponse);
      this.requestMethod = paramResponse.request().method();
      this.protocol = paramResponse.protocol();
      this.code = paramResponse.code();
      this.message = paramResponse.message();
      this.responseHeaders = paramResponse.headers();
      this.handshake = paramResponse.handshake();
      this.sentRequestMillis = paramResponse.sentRequestAtMillis();
      this.receivedResponseMillis = paramResponse.receivedResponseAtMillis();
    }
    
    private boolean isHttps()
    {
      return this.url.startsWith("https://");
    }
    
    /* Error */
    private List<Certificate> readCertificateList(e parame)
      throws IOException
    {
      // Byte code:
      //   0: aload_1
      //   1: invokestatic 85	io/intercom/okhttp3/Cache:readInt	(Lio/intercom/b/e;)I
      //   4: istore_3
      //   5: iload_3
      //   6: iconst_m1
      //   7: if_icmpne +11 -> 18
      //   10: invokestatic 238	java/util/Collections:emptyList	()Ljava/util/List;
      //   13: astore 4
      //   15: aload 4
      //   17: areturn
      //   18: ldc -16
      //   20: invokestatic 246	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
      //   23: astore 6
      //   25: new 248	java/util/ArrayList
      //   28: dup
      //   29: iload_3
      //   30: invokespecial 251	java/util/ArrayList:<init>	(I)V
      //   33: astore 5
      //   35: iconst_0
      //   36: istore_2
      //   37: aload 5
      //   39: astore 4
      //   41: iload_2
      //   42: iload_3
      //   43: if_icmpge -28 -> 15
      //   46: aload_1
      //   47: invokeinterface 74 1 0
      //   52: astore 4
      //   54: new 253	io/intercom/b/c
      //   57: dup
      //   58: invokespecial 254	io/intercom/b/c:<init>	()V
      //   61: astore 7
      //   63: aload 7
      //   65: aload 4
      //   67: invokestatic 260	io/intercom/b/f:fj	(Ljava/lang/String;)Lio/intercom/b/f;
      //   70: invokevirtual 264	io/intercom/b/c:a	(Lio/intercom/b/f;)Lio/intercom/b/c;
      //   73: pop
      //   74: aload 5
      //   76: aload 6
      //   78: aload 7
      //   80: invokevirtual 268	io/intercom/b/c:Ks	()Ljava/io/InputStream;
      //   83: invokevirtual 272	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
      //   86: invokeinterface 278 2 0
      //   91: pop
      //   92: iload_2
      //   93: iconst_1
      //   94: iadd
      //   95: istore_2
      //   96: goto -59 -> 37
      //   99: astore_1
      //   100: new 62	java/io/IOException
      //   103: dup
      //   104: aload_1
      //   105: invokevirtual 281	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
      //   108: invokespecial 146	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   111: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	112	0	this	Entry
      //   0	112	1	parame	e
      //   36	60	2	i	int
      //   4	40	3	j	int
      //   13	53	4	localObject	Object
      //   33	42	5	localArrayList	java.util.ArrayList
      //   23	54	6	localCertificateFactory	java.security.cert.CertificateFactory
      //   61	18	7	localc	io.intercom.b.c
      // Exception table:
      //   from	to	target	type
      //   18	35	99	java/security/cert/CertificateException
      //   46	92	99	java/security/cert/CertificateException
    }
    
    private void writeCertList(d paramd, List<Certificate> paramList)
      throws IOException
    {
      try
      {
        paramd.am(paramList.size()).fB(10);
        int j = paramList.size();
        int i = 0;
        while (i < j)
        {
          paramd.fg(f.H(((Certificate)paramList.get(i)).getEncoded()).KF()).fB(10);
          i += 1;
        }
        return;
      }
      catch (CertificateEncodingException paramd)
      {
        throw new IOException(paramd.getMessage());
      }
    }
    
    public final boolean matches(Request paramRequest, Response paramResponse)
    {
      return (this.url.equals(paramRequest.url().toString())) && (this.requestMethod.equals(paramRequest.method())) && (HttpHeaders.varyMatches(paramResponse, this.varyHeaders, paramRequest));
    }
    
    public final Response response(DiskLruCache.Snapshot paramSnapshot)
    {
      String str1 = this.responseHeaders.get("Content-Type");
      String str2 = this.responseHeaders.get("Content-Length");
      Request localRequest = new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build();
      return new Response.Builder().request(localRequest).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new Cache.CacheResponseBody(paramSnapshot, str1, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
    }
    
    public final void writeTo(DiskLruCache.Editor paramEditor)
      throws IOException
    {
      int j = 0;
      paramEditor = l.b(paramEditor.newSink(0));
      paramEditor.fg(this.url).fB(10);
      paramEditor.fg(this.requestMethod).fB(10);
      paramEditor.am(this.varyHeaders.size()).fB(10);
      int k = this.varyHeaders.size();
      int i = 0;
      while (i < k)
      {
        paramEditor.fg(this.varyHeaders.name(i)).fg(": ").fg(this.varyHeaders.value(i)).fB(10);
        i += 1;
      }
      paramEditor.fg(new StatusLine(this.protocol, this.code, this.message).toString()).fB(10);
      paramEditor.am(this.responseHeaders.size() + 2).fB(10);
      k = this.responseHeaders.size();
      i = j;
      while (i < k)
      {
        paramEditor.fg(this.responseHeaders.name(i)).fg(": ").fg(this.responseHeaders.value(i)).fB(10);
        i += 1;
      }
      paramEditor.fg(SENT_MILLIS).fg(": ").am(this.sentRequestMillis).fB(10);
      paramEditor.fg(RECEIVED_MILLIS).fg(": ").am(this.receivedResponseMillis).fB(10);
      if (isHttps())
      {
        paramEditor.fB(10);
        paramEditor.fg(this.handshake.cipherSuite().javaName()).fB(10);
        writeCertList(paramEditor, this.handshake.peerCertificates());
        writeCertList(paramEditor, this.handshake.localCertificates());
        paramEditor.fg(this.handshake.tlsVersion().javaName()).fB(10);
      }
      paramEditor.close();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/Cache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */