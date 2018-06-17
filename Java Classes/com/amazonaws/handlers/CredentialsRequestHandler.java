package com.amazonaws.handlers;

import com.amazonaws.auth.AWSCredentials;

public abstract class CredentialsRequestHandler
  extends RequestHandler2
{
  protected AWSCredentials anO;
  
  public final void b(AWSCredentials paramAWSCredentials)
  {
    this.anO = paramAWSCredentials;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/handlers/CredentialsRequestHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */