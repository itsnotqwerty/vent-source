package com.amazonaws.auth;

public class BasicSessionCredentials
  implements AWSSessionCredentials
{
  private final String anq;
  private final String anr;
  private final String awsAccessKey;
  
  public BasicSessionCredentials(String paramString1, String paramString2, String paramString3)
  {
    this.awsAccessKey = paramString1;
    this.anq = paramString2;
    this.anr = paramString3;
  }
  
  public final String jw()
  {
    return this.awsAccessKey;
  }
  
  public final String jx()
  {
    return this.anq;
  }
  
  public final String jz()
  {
    return this.anr;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/BasicSessionCredentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */