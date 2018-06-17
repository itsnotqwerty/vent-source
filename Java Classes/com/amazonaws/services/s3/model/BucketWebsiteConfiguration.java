package com.amazonaws.services.s3.model;

import java.util.LinkedList;
import java.util.List;

public class BucketWebsiteConfiguration
{
  public String aqL;
  public String aqM;
  public RedirectRule aqN;
  public List<RoutingRule> aqO = new LinkedList();
  
  public BucketWebsiteConfiguration() {}
  
  public BucketWebsiteConfiguration(byte paramByte)
  {
    this.aqL = null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/BucketWebsiteConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */