package com.amazonaws;

public class AmazonWebServiceResponse<T>
{
  public ResponseMetadata ame;
  public T result;
  
  public final String jp()
  {
    if (this.ame == null) {
      return null;
    }
    return this.ame.jp();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/AmazonWebServiceResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */