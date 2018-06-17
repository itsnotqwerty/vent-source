package com.amazonaws.internal.config;

public class HttpClientConfig
{
  public final String alN;
  
  HttpClientConfig(String paramString)
  {
    this.alN = paramString;
  }
  
  public String toString()
  {
    return "serviceName: " + this.alN;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/config/HttpClientConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */