package com.amazonaws.auth;

public class BasicAWSCredentials
  implements AWSCredentials
{
  private final String ano;
  private final String anp;
  
  public BasicAWSCredentials(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("Access key cannot be null.");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("Secret key cannot be null.");
    }
    this.ano = paramString1;
    this.anp = paramString2;
  }
  
  public final String jw()
  {
    return this.ano;
  }
  
  public final String jx()
  {
    return this.anp;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/BasicAWSCredentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */