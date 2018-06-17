package com.amazonaws.services.s3.model;

import java.util.List;

public class BucketNotificationConfiguration
{
  public List<TopicConfiguration> aqE = null;
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{");
    localStringBuffer.append("TopicConfigurations: " + this.aqE);
    localStringBuffer.append("}");
    return localStringBuffer.toString();
  }
  
  public static class TopicConfiguration
  {
    private final String aqF;
    private final String aqG;
    
    public TopicConfiguration(String paramString1, String paramString2)
    {
      this.aqF = paramString1;
      this.aqG = paramString2;
    }
    
    public String toString()
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("{");
      localStringBuffer.append("Topic: " + this.aqF + ", ");
      localStringBuffer.append("Event: " + this.aqG + ", ");
      localStringBuffer.append("}");
      return localStringBuffer.toString();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/BucketNotificationConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */