package com.amazonaws.handlers;

public abstract class RequestHandler2
{
  public static RequestHandler2 a(RequestHandler paramRequestHandler)
  {
    return new RequestHandler2Adaptor(paramRequestHandler);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/handlers/RequestHandler2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */