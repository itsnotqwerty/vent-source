package com.amazonaws.services.s3.model;

import java.util.List;

public class BucketCrossOriginConfiguration
{
  public List<CORSRule> aqs;
  
  public BucketCrossOriginConfiguration() {}
  
  public BucketCrossOriginConfiguration(List<CORSRule> paramList)
  {
    this.aqs = paramList;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/BucketCrossOriginConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */