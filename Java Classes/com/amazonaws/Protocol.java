package com.amazonaws;

public enum Protocol
{
  private final String protocol;
  
  private Protocol(String paramString)
  {
    this.protocol = paramString;
  }
  
  public final String toString()
  {
    return this.protocol;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/Protocol.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */