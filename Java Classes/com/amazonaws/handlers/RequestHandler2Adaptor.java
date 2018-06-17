package com.amazonaws.handlers;

final class RequestHandler2Adaptor
  extends RequestHandler2
{
  private final RequestHandler anP;
  
  RequestHandler2Adaptor(RequestHandler paramRequestHandler)
  {
    if (paramRequestHandler == null) {
      throw new IllegalArgumentException();
    }
    this.anP = paramRequestHandler;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof RequestHandler2Adaptor)) {
      return false;
    }
    paramObject = (RequestHandler2Adaptor)paramObject;
    return this.anP.equals(((RequestHandler2Adaptor)paramObject).anP);
  }
  
  public final int hashCode()
  {
    return this.anP.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/handlers/RequestHandler2Adaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */