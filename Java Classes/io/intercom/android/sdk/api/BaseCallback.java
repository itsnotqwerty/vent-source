package io.intercom.android.sdk.api;

import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.retrofit2.Call;
import io.intercom.retrofit2.Callback;
import io.intercom.retrofit2.Response;

public abstract class BaseCallback<T>
  implements Callback<T>
{
  private final Twig twig = LumberMill.getLogger();
  
  static String getDetails(ErrorObject paramErrorObject)
  {
    if (paramErrorObject.hasErrorBody()) {}
    for (paramErrorObject = paramErrorObject.getErrorBody();; paramErrorObject = paramErrorObject.getThrowable().getMessage())
    {
      Object localObject = paramErrorObject;
      if (paramErrorObject == null) {
        localObject = "unknown error";
      }
      return (String)localObject;
    }
  }
  
  private void handleError(ErrorObject paramErrorObject)
  {
    logFailure("Api call failed", paramErrorObject);
    onError(paramErrorObject);
  }
  
  void logFailure(String paramString, ErrorObject paramErrorObject)
  {
    this.twig.e(paramString + ": " + getDetails(paramErrorObject), new Object[0]);
  }
  
  protected void onError(ErrorObject paramErrorObject) {}
  
  public final void onFailure(Call<T> paramCall, Throwable paramThrowable)
  {
    handleError(new ErrorObject(paramThrowable, null));
  }
  
  public final void onResponse(Call<T> paramCall, Response<T> paramResponse)
  {
    if (paramResponse == null)
    {
      handleError(new ErrorObject(new IllegalStateException("No body returned from the server"), null));
      return;
    }
    if (paramResponse.body() == null)
    {
      handleError(new ErrorObject(new IllegalStateException("No body returned from the server"), paramResponse));
      return;
    }
    if (!paramResponse.isSuccessful())
    {
      handleError(new ErrorObject(new Exception("Status code outside the 200-300 range"), paramResponse));
      return;
    }
    onSuccess(paramResponse.body());
  }
  
  protected abstract void onSuccess(T paramT);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/BaseCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */