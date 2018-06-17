package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;

public class StaticCredentialsProvider
  implements AWSCredentialsProvider
{
  private final AWSCredentials amc;
  
  public StaticCredentialsProvider(AWSCredentials paramAWSCredentials)
  {
    this.amc = paramAWSCredentials;
  }
  
  public final AWSCredentials jy()
  {
    return this.amc;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/StaticCredentialsProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */