package io.intercom.android.sdk.api;

import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.okhttp3.ResponseBody;
import io.intercom.retrofit2.Response;
import java.io.IOException;

public class ErrorObject
{
  private final String errorBody;
  private final int statusCode;
  private final Throwable throwable;
  private final Twig twig = LumberMill.getLogger();
  
  ErrorObject(Throwable paramThrowable, Response paramResponse)
  {
    this.throwable = paramThrowable;
    this.errorBody = parseErrorBody(paramResponse);
    this.statusCode = parseStatusCode(paramResponse);
  }
  
  private String parseErrorBody(Response paramResponse)
  {
    if ((paramResponse != null) && (paramResponse.errorBody() != null)) {
      try
      {
        paramResponse = paramResponse.errorBody().string();
        return paramResponse;
      }
      catch (IOException paramResponse)
      {
        this.twig.internal("Couldn't parse error body: " + paramResponse.getMessage());
      }
    }
    return null;
  }
  
  private int parseStatusCode(Response paramResponse)
  {
    if (paramResponse != null) {
      return paramResponse.code();
    }
    return -1;
  }
  
  String getErrorBody()
  {
    return this.errorBody;
  }
  
  int getStatusCode()
  {
    return this.statusCode;
  }
  
  public Throwable getThrowable()
  {
    return this.throwable;
  }
  
  boolean hasErrorBody()
  {
    return this.errorBody != null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/ErrorObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */