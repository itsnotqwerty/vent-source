package com.amazonaws.auth;

import com.amazonaws.Request;

public abstract interface Signer
{
  public abstract void a(Request<?> paramRequest, AWSCredentials paramAWSCredentials);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/Signer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */