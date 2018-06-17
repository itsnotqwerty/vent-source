package com.amazonaws.services.s3.model;

public enum CannedAccessControlList
{
  private final String arh;
  
  private CannedAccessControlList(String paramString)
  {
    this.arh = paramString;
  }
  
  public final String toString()
  {
    return this.arh;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/CannedAccessControlList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */