package com.amazonaws.http;

import java.io.IOException;

public abstract interface HttpClient
{
  public abstract HttpResponse a(HttpRequest paramHttpRequest)
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/HttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */