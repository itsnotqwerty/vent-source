package io.intercom.android.sdk.api;

import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.okhttp3.Interceptor;
import io.intercom.okhttp3.Interceptor.Chain;
import io.intercom.okhttp3.Response;
import io.intercom.okhttp3.Response.Builder;
import io.intercom.okhttp3.ResponseBody;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class ShutdownInterceptor
  implements Interceptor
{
  private static final String ERROR = "error";
  private static final String MESSAGE = "message";
  private static final String MESSENGER_SHUTDOWN_RESPONSE = "messenger_shutdown_response";
  private static final String SHUTDOWN_PERIOD = "shutdown_period";
  private static final String TYPE = "type";
  private final ShutdownState shutdownState;
  private final Twig twig = LumberMill.getLogger();
  
  public ShutdownInterceptor(ShutdownState paramShutdownState)
  {
    this.shutdownState = paramShutdownState;
  }
  
  public Response intercept(Interceptor.Chain paramChain)
    throws IOException
  {
    if (!this.shutdownState.canSendNetworkRequests())
    {
      this.twig.e(this.shutdownState.getShutdownReason(), new Object[0]);
      throw new IOException(this.shutdownState.getShutdownReason());
    }
    Response localResponse = paramChain.proceed(paramChain.request());
    paramChain = localResponse;
    String str;
    if (!localResponse.isSuccessful())
    {
      paramChain = localResponse.body();
      str = paramChain.string();
      localResponse = localResponse.newBuilder().body(ResponseBody.create(paramChain.contentType(), str)).build();
      paramChain.close();
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(str).getJSONObject("error");
      paramChain = localResponse;
      if (localJSONObject.getString("type").equals("messenger_shutdown_response"))
      {
        long l = localJSONObject.getLong("shutdown_period");
        paramChain = localJSONObject.getString("message");
        this.shutdownState.updateShutdownState(TimeUnit.SECONDS.toMillis(l), paramChain);
        paramChain = localResponse;
      }
      return paramChain;
    }
    catch (JSONException paramChain)
    {
      this.twig.internal("Failed to deserialise error response: `" + str + "` message: `" + localResponse.message() + "`");
    }
    return localResponse;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/ShutdownInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */