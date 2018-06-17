package com.amazonaws.services.s3.model;

public class BucketLoggingConfiguration
{
  public String aqC = null;
  public String aqD = null;
  
  private boolean isLoggingEnabled()
  {
    return (this.aqC != null) && (this.aqD != null);
  }
  
  public String toString()
  {
    String str2 = "LoggingConfiguration enabled=" + isLoggingEnabled();
    String str1 = str2;
    if (isLoggingEnabled()) {
      str1 = str2 + ", destinationBucketName=" + this.aqC + ", logFilePrefix=" + this.aqD;
    }
    return str1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/BucketLoggingConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */