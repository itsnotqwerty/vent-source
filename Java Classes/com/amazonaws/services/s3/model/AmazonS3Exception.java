package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonServiceException;

public class AmazonS3Exception
  extends AmazonServiceException
{
  public String aqo;
  public String aqp;
  
  public AmazonS3Exception(String paramString)
  {
    super(paramString);
  }
  
  public String toString()
  {
    return super.toString() + ", S3 Extended Request ID: " + this.aqo;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/AmazonS3Exception.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */