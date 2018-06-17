package com.amazonaws;

import com.amazonaws.http.HttpResponse;

public final class Response<T>
{
  public final T amM;
  private final HttpResponse amN;
  
  public Response(T paramT, HttpResponse paramHttpResponse)
  {
    this.amM = paramT;
    this.amN = paramHttpResponse;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/Response.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */