package io.intercom.okhttp3.internal.http;

import io.intercom.b.c;
import io.intercom.b.d;
import io.intercom.b.g;
import io.intercom.b.l;
import io.intercom.b.r;
import io.intercom.okhttp3.EventListener;
import io.intercom.okhttp3.Interceptor;
import io.intercom.okhttp3.Interceptor.Chain;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.RequestBody;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.Response.Builder;
import io.intercom.okhttp3.ResponseBody;
import io.intercom.okhttp3.internal.Util;
import io.intercom.okhttp3.internal.connection.RealConnection;
import io.intercom.okhttp3.internal.connection.StreamAllocation;
import java.io.IOException;
import java.net.ProtocolException;

public final class CallServerInterceptor
  implements Interceptor
{
  private final boolean forWebSocket;
  
  public CallServerInterceptor(boolean paramBoolean)
  {
    this.forWebSocket = paramBoolean;
  }
  
  public final Response intercept(Interceptor.Chain paramChain)
    throws IOException
  {
    RealInterceptorChain localRealInterceptorChain = (RealInterceptorChain)paramChain;
    HttpCodec localHttpCodec = localRealInterceptorChain.httpStream();
    StreamAllocation localStreamAllocation = localRealInterceptorChain.streamAllocation();
    Object localObject = (RealConnection)localRealInterceptorChain.connection();
    Request localRequest = localRealInterceptorChain.request();
    long l = System.currentTimeMillis();
    localRealInterceptorChain.eventListener().requestHeadersStart(localRealInterceptorChain.call());
    localHttpCodec.writeRequestHeaders(localRequest);
    localRealInterceptorChain.eventListener().requestHeadersEnd(localRealInterceptorChain.call(), localRequest);
    paramChain = null;
    if ((HttpMethod.permitsRequestBody(localRequest.method())) && (localRequest.body() != null))
    {
      if ("100-continue".equalsIgnoreCase(localRequest.header("Expect")))
      {
        localHttpCodec.flushRequest();
        localRealInterceptorChain.eventListener().responseHeadersStart(localRealInterceptorChain.call());
        paramChain = localHttpCodec.readResponseHeaders(true);
      }
      if (paramChain == null)
      {
        localRealInterceptorChain.eventListener().requestBodyStart(localRealInterceptorChain.call());
        localObject = new CountingSink(localHttpCodec.createRequestBody(localRequest, localRequest.body().contentLength()));
        d locald = l.b((r)localObject);
        localRequest.body().writeTo(locald);
        locald.close();
        localRealInterceptorChain.eventListener().requestBodyEnd(localRealInterceptorChain.call(), ((CountingSink)localObject).successfulCount);
      }
    }
    for (;;)
    {
      localHttpCodec.finishRequest();
      localObject = paramChain;
      if (paramChain == null)
      {
        localRealInterceptorChain.eventListener().responseHeadersStart(localRealInterceptorChain.call());
        localObject = localHttpCodec.readResponseHeaders(false);
      }
      paramChain = ((Response.Builder)localObject).request(localRequest).handshake(localStreamAllocation.connection().handshake()).sentRequestAtMillis(l).receivedResponseAtMillis(System.currentTimeMillis()).build();
      localRealInterceptorChain.eventListener().responseHeadersEnd(localRealInterceptorChain.call(), paramChain);
      int i = paramChain.code();
      if ((this.forWebSocket) && (i == 101)) {}
      for (paramChain = paramChain.newBuilder().body(Util.EMPTY_RESPONSE).build();; paramChain = paramChain.newBuilder().body(localHttpCodec.openResponseBody(paramChain)).build())
      {
        if (("close".equalsIgnoreCase(paramChain.request().header("Connection"))) || ("close".equalsIgnoreCase(paramChain.header("Connection")))) {
          localStreamAllocation.noNewStreams();
        }
        if (((i != 204) && (i != 205)) || (paramChain.body().contentLength() <= 0L)) {
          break label482;
        }
        throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + paramChain.body().contentLength());
        if (!((RealConnection)localObject).isMultiplexed()) {
          localStreamAllocation.noNewStreams();
        }
        break;
      }
      label482:
      return paramChain;
      paramChain = null;
    }
  }
  
  static final class CountingSink
    extends g
  {
    long successfulCount;
    
    CountingSink(r paramr)
    {
      super();
    }
    
    public final void write(c paramc, long paramLong)
      throws IOException
    {
      super.write(paramc, paramLong);
      this.successfulCount += paramLong;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http/CallServerInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */