package com.amazonaws.services.s3.model;

import java.util.HashMap;
import java.util.Map;

public class TagSet
{
  private Map<String, String> asU = new HashMap(1);
  
  public TagSet() {}
  
  public TagSet(Map<String, String> paramMap)
  {
    this.asU.putAll(paramMap);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{");
    localStringBuffer.append("Tags: " + this.asU);
    localStringBuffer.append("}");
    return localStringBuffer.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/TagSet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */