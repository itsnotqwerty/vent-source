package com.amazonaws.services.s3.model;

import java.util.Date;
import java.util.List;

public class BucketLifecycleConfiguration
{
  public List<Rule> aqs;
  
  public BucketLifecycleConfiguration() {}
  
  public BucketLifecycleConfiguration(List<Rule> paramList)
  {
    this.aqs = paramList;
  }
  
  public static class NoncurrentVersionTransition
  {
    public int aqt = -1;
    public StorageClass aqu;
  }
  
  public static class Rule
  {
    public BucketLifecycleConfiguration.NoncurrentVersionTransition aqA;
    public String aqr;
    public String aqv;
    public int aqw = -1;
    public int aqx = -1;
    public Date aqy;
    public BucketLifecycleConfiguration.Transition aqz;
    public String id;
  }
  
  public static class Transition
  {
    public Date aqB;
    public int aqt = -1;
    public StorageClass aqu;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/BucketLifecycleConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */