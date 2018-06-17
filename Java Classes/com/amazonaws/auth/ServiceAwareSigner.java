package com.amazonaws.auth;

public abstract interface ServiceAwareSigner
  extends Signer
{
  public abstract void setServiceName(String paramString);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/ServiceAwareSigner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */