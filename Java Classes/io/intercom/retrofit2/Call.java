package io.intercom.retrofit2;

import io.intercom.okhttp3.Request;
import java.io.IOException;

public abstract interface Call<T>
  extends Cloneable
{
  public abstract void cancel();
  
  public abstract Call<T> clone();
  
  public abstract void enqueue(Callback<T> paramCallback);
  
  public abstract Response<T> execute()
    throws IOException;
  
  public abstract boolean isCanceled();
  
  public abstract boolean isExecuted();
  
  public abstract Request request();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/retrofit2/Call.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */