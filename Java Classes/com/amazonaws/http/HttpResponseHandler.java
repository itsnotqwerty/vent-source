package com.amazonaws.http;

public abstract interface HttpResponseHandler<T>
{
  public abstract T a(HttpResponse paramHttpResponse)
    throws Exception;
  
  public abstract boolean jF();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/HttpResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */