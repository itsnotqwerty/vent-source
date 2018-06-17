package io.intercom.retrofit2;

import io.intercom.b.c;
import io.intercom.b.e;
import io.intercom.b.h;
import io.intercom.b.l;
import io.intercom.b.s;
import io.intercom.okhttp3.Call.Factory;
import io.intercom.okhttp3.MediaType;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Response.Builder;
import io.intercom.okhttp3.ResponseBody;
import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

final class OkHttpCall<T>
  implements Call<T>
{
  @Nullable
  private final Object[] args;
  private volatile boolean canceled;
  @Nullable
  @GuardedBy("this")
  private Throwable creationFailure;
  @GuardedBy("this")
  private boolean executed;
  @Nullable
  @GuardedBy("this")
  private io.intercom.okhttp3.Call rawCall;
  private final ServiceMethod<T, ?> serviceMethod;
  
  OkHttpCall(ServiceMethod<T, ?> paramServiceMethod, @Nullable Object[] paramArrayOfObject)
  {
    this.serviceMethod = paramServiceMethod;
    this.args = paramArrayOfObject;
  }
  
  private io.intercom.okhttp3.Call createRawCall()
    throws IOException
  {
    Object localObject = this.serviceMethod.toRequest(this.args);
    localObject = this.serviceMethod.callFactory.newCall((Request)localObject);
    if (localObject == null) {
      throw new NullPointerException("Call.Factory returned null.");
    }
    return (io.intercom.okhttp3.Call)localObject;
  }
  
  public final void cancel()
  {
    this.canceled = true;
    try
    {
      io.intercom.okhttp3.Call localCall = this.rawCall;
      if (localCall != null) {
        localCall.cancel();
      }
      return;
    }
    finally {}
  }
  
  public final OkHttpCall<T> clone()
  {
    return new OkHttpCall(this.serviceMethod, this.args);
  }
  
  public final void enqueue(final Callback<T> paramCallback)
  {
    Utils.checkNotNull(paramCallback, "callback == null");
    try
    {
      if (this.executed) {
        throw new IllegalStateException("Already executed.");
      }
    }
    finally {}
    this.executed = true;
    Object localObject = this.rawCall;
    Throwable localThrowable1 = this.creationFailure;
    if ((localObject == null) && (localThrowable1 == null)) {}
    for (;;)
    {
      try
      {
        io.intercom.okhttp3.Call localCall = createRawCall();
        this.rawCall = localCall;
        localObject = localCall;
      }
      catch (Throwable localThrowable2)
      {
        this.creationFailure = localThrowable2;
        continue;
        if (!this.canceled) {
          continue;
        }
        ((io.intercom.okhttp3.Call)localObject).cancel();
        ((io.intercom.okhttp3.Call)localObject).enqueue(new io.intercom.okhttp3.Callback()
        {
          private void callFailure(Throwable paramAnonymousThrowable)
          {
            try
            {
              paramCallback.onFailure(OkHttpCall.this, paramAnonymousThrowable);
              return;
            }
            catch (Throwable paramAnonymousThrowable)
            {
              paramAnonymousThrowable.printStackTrace();
            }
          }
          
          private void callSuccess(Response<T> paramAnonymousResponse)
          {
            try
            {
              paramCallback.onResponse(OkHttpCall.this, paramAnonymousResponse);
              return;
            }
            catch (Throwable paramAnonymousResponse)
            {
              paramAnonymousResponse.printStackTrace();
            }
          }
          
          public void onFailure(io.intercom.okhttp3.Call paramAnonymousCall, IOException paramAnonymousIOException)
          {
            try
            {
              paramCallback.onFailure(OkHttpCall.this, paramAnonymousIOException);
              return;
            }
            catch (Throwable paramAnonymousCall)
            {
              paramAnonymousCall.printStackTrace();
            }
          }
          
          public void onResponse(io.intercom.okhttp3.Call paramAnonymousCall, io.intercom.okhttp3.Response paramAnonymousResponse)
            throws IOException
          {
            try
            {
              paramAnonymousCall = OkHttpCall.this.parseResponse(paramAnonymousResponse);
              callSuccess(paramAnonymousCall);
              return;
            }
            catch (Throwable paramAnonymousCall)
            {
              callFailure(paramAnonymousCall);
            }
          }
        });
        return;
      }
      if (localThrowable1 != null)
      {
        paramCallback.onFailure(this, localThrowable1);
        return;
      }
    }
  }
  
  public final Response<T> execute()
    throws IOException
  {
    try
    {
      if (this.executed) {
        throw new IllegalStateException("Already executed.");
      }
    }
    finally {}
    this.executed = true;
    if (this.creationFailure != null)
    {
      if ((this.creationFailure instanceof IOException)) {
        throw ((IOException)this.creationFailure);
      }
      throw ((RuntimeException)this.creationFailure);
    }
    io.intercom.okhttp3.Call localCall = this.rawCall;
    Object localObject2 = localCall;
    if (localCall == null) {}
    try
    {
      localObject2 = createRawCall();
      this.rawCall = ((io.intercom.okhttp3.Call)localObject2);
      if (this.canceled) {
        ((io.intercom.okhttp3.Call)localObject2).cancel();
      }
      return parseResponse(((io.intercom.okhttp3.Call)localObject2).execute());
    }
    catch (RuntimeException localRuntimeException)
    {
      this.creationFailure = localRuntimeException;
      throw localRuntimeException;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public final boolean isCanceled()
  {
    boolean bool = true;
    if (this.canceled) {
      return true;
    }
    for (;;)
    {
      try
      {
        if ((this.rawCall != null) && (this.rawCall.isCanceled())) {
          return bool;
        }
      }
      finally {}
      bool = false;
    }
  }
  
  public final boolean isExecuted()
  {
    try
    {
      boolean bool = this.executed;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final Response<T> parseResponse(io.intercom.okhttp3.Response paramResponse)
    throws IOException
  {
    Object localObject = paramResponse.body();
    io.intercom.okhttp3.Response localResponse = paramResponse.newBuilder().body(new NoContentResponseBody(((ResponseBody)localObject).contentType(), ((ResponseBody)localObject).contentLength())).build();
    int i = localResponse.code();
    if ((i < 200) || (i >= 300)) {
      try
      {
        paramResponse = Response.error(Utils.buffer((ResponseBody)localObject), localResponse);
        return paramResponse;
      }
      finally
      {
        ((ResponseBody)localObject).close();
      }
    }
    if ((i == 204) || (i == 205))
    {
      ((ResponseBody)localObject).close();
      return Response.success(null, localResponse);
    }
    paramResponse = new ExceptionCatchingRequestBody((ResponseBody)localObject);
    try
    {
      localObject = Response.success(this.serviceMethod.toResponse(paramResponse), localResponse);
      return (Response<T>)localObject;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramResponse.throwIfCaught();
      throw localRuntimeException;
    }
  }
  
  public final Request request()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = this.rawCall;
        if (localObject1 != null)
        {
          localObject1 = ((io.intercom.okhttp3.Call)localObject1).request();
          return (Request)localObject1;
        }
        if (this.creationFailure == null) {
          break label66;
        }
        if ((this.creationFailure instanceof IOException)) {
          throw new RuntimeException("Unable to create request.", this.creationFailure);
        }
      }
      finally {}
      throw ((RuntimeException)this.creationFailure);
      try
      {
        label66:
        Object localObject3 = createRawCall();
        this.rawCall = ((io.intercom.okhttp3.Call)localObject3);
        localObject3 = ((io.intercom.okhttp3.Call)localObject3).request();
      }
      catch (RuntimeException localRuntimeException)
      {
        this.creationFailure = localRuntimeException;
        throw localRuntimeException;
      }
      catch (IOException localIOException)
      {
        this.creationFailure = localIOException;
        throw new RuntimeException("Unable to create request.", localIOException);
      }
    }
  }
  
  static final class ExceptionCatchingRequestBody
    extends ResponseBody
  {
    private final ResponseBody delegate;
    IOException thrownException;
    
    ExceptionCatchingRequestBody(ResponseBody paramResponseBody)
    {
      this.delegate = paramResponseBody;
    }
    
    public final void close()
    {
      this.delegate.close();
    }
    
    public final long contentLength()
    {
      return this.delegate.contentLength();
    }
    
    public final MediaType contentType()
    {
      return this.delegate.contentType();
    }
    
    public final e source()
    {
      l.b(new h(this.delegate.source())
      {
        public long read(c paramAnonymousc, long paramAnonymousLong)
          throws IOException
        {
          try
          {
            paramAnonymousLong = super.read(paramAnonymousc, paramAnonymousLong);
            return paramAnonymousLong;
          }
          catch (IOException paramAnonymousc)
          {
            OkHttpCall.ExceptionCatchingRequestBody.this.thrownException = paramAnonymousc;
            throw paramAnonymousc;
          }
        }
      });
    }
    
    final void throwIfCaught()
      throws IOException
    {
      if (this.thrownException != null) {
        throw this.thrownException;
      }
    }
  }
  
  static final class NoContentResponseBody
    extends ResponseBody
  {
    private final long contentLength;
    private final MediaType contentType;
    
    NoContentResponseBody(MediaType paramMediaType, long paramLong)
    {
      this.contentType = paramMediaType;
      this.contentLength = paramLong;
    }
    
    public final long contentLength()
    {
      return this.contentLength;
    }
    
    public final MediaType contentType()
    {
      return this.contentType;
    }
    
    public final e source()
    {
      throw new IllegalStateException("Cannot read raw response body of a converted body.");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/retrofit2/OkHttpCall.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */