package com.amazonaws.internal.config;

public class SignerConfig
{
  public final String aov;
  
  SignerConfig(String paramString)
  {
    this.aov = paramString;
  }
  
  public String toString()
  {
    return this.aov;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/config/SignerConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */