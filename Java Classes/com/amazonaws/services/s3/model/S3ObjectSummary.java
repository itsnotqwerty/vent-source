package com.amazonaws.services.s3.model;

import java.util.Date;

public class S3ObjectSummary
{
  protected Owner aqn;
  protected String arR;
  protected String ark;
  protected String arm;
  protected String key;
  protected Date lastModified;
  protected long size;
  
  public final void a(Owner paramOwner)
  {
    this.aqn = paramOwner;
  }
  
  public final void aj(String paramString)
  {
    this.ark = paramString;
  }
  
  public final void ak(String paramString)
  {
    this.arm = paramString;
  }
  
  public final void al(String paramString)
  {
    this.arR = paramString;
  }
  
  public final String getKey()
  {
    return this.key;
  }
  
  public final void h(Date paramDate)
  {
    this.lastModified = paramDate;
  }
  
  public final void setKey(String paramString)
  {
    this.key = paramString;
  }
  
  public final void setSize(long paramLong)
  {
    this.size = paramLong;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/S3ObjectSummary.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */