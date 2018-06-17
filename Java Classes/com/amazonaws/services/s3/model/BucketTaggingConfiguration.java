package com.amazonaws.services.s3.model;

import java.util.List;

public class BucketTaggingConfiguration
{
  public List<TagSet> aqJ = null;
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{");
    localStringBuffer.append("TagSets: " + this.aqJ);
    localStringBuffer.append("}");
    return localStringBuffer.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/BucketTaggingConfiguration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */