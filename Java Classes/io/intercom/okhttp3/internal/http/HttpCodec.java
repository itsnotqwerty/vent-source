package io.intercom.okhttp3.internal.http;

import io.intercom.b.r;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.Response.Builder;
import io.intercom.okhttp3.ResponseBody;
import java.io.IOException;

public abstract interface HttpCodec
{
  public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;
  
  public abstract void cancel();
  
  public abstract r createRequestBody(Request paramRequest, long paramLong);
  
  public abstract void finishRequest()
    throws IOException;
  
  public abstract void flushRequest()
    throws IOException;
  
  public abstract ResponseBody openResponseBody(Response paramResponse)
    throws IOException;
  
  public abstract Response.Builder readResponseHeaders(boolean paramBoolean)
    throws IOException;
  
  public abstract void writeRequestHeaders(Request paramRequest)
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http/HttpCodec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */