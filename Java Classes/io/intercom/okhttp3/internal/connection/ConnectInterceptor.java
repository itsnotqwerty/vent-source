package io.intercom.okhttp3.internal.connection;

import io.intercom.okhttp3.Interceptor;
import io.intercom.okhttp3.Interceptor.Chain;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.internal.http.RealInterceptorChain;
import java.io.IOException;

public final class ConnectInterceptor
  implements Interceptor
{
  public final OkHttpClient client;
  
  public ConnectInterceptor(OkHttpClient paramOkHttpClient)
  {
    this.client = paramOkHttpClient;
  }
  
  public final Response intercept(Interceptor.Chain paramChain)
    throws IOException
  {
    RealInterceptorChain localRealInterceptorChain = (RealInterceptorChain)paramChain;
    Request localRequest = localRealInterceptorChain.request();
    StreamAllocation localStreamAllocation = localRealInterceptorChain.streamAllocation();
    if (!localRequest.method().equals("GET")) {}
    for (boolean bool = true;; bool = false) {
      return localRealInterceptorChain.proceed(localRequest, localStreamAllocation, localStreamAllocation.newStream(this.client, paramChain, bool), localStreamAllocation.connection());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/connection/ConnectInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */