package com.amazonaws.services.s3.model;

import java.util.Date;

public class Bucket
{
  public Owner aqn = null;
  public Date aqq = null;
  public String name = null;
  
  public String toString()
  {
    return "S3Bucket [name=" + this.name + ", creationDate=" + this.aqq + ", owner=" + this.aqn + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/Bucket.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */