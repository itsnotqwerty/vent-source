package io.intercom.okhttp3;

import java.io.IOException;

public abstract interface Call
  extends Cloneable
{
  public abstract void cancel();
  
  public abstract Call clone();
  
  public abstract void enqueue(Callback paramCallback);
  
  public abstract Response execute()
    throws IOException;
  
  public abstract boolean isCanceled();
  
  public abstract boolean isExecuted();
  
  public abstract Request request();
  
  public static abstract interface Factory
  {
    public abstract Call newCall(Request paramRequest);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/Call.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */