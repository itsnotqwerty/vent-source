package com.amazonaws.auth;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

class DecodedStreamBuffer
{
  static final Log alS = LogFactory.getLog(DecodedStreamBuffer.class);
  int anf;
  byte[] anv;
  int anw;
  boolean anx;
  int pos = -1;
  
  public DecodedStreamBuffer(int paramInt)
  {
    this.anv = new byte[paramInt];
    this.anf = paramInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/DecodedStreamBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */