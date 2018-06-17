package com.amazonaws.auth;

public enum SignatureVersion
{
  private String value;
  
  private SignatureVersion(String paramString)
  {
    this.value = paramString;
  }
  
  public final String toString()
  {
    return this.value;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/SignatureVersion.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */