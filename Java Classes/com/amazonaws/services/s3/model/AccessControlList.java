package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.HashSet;

public class AccessControlList
  implements Serializable
{
  public HashSet<Grant> aqm = new HashSet();
  public Owner aqn = null;
  
  public String toString()
  {
    return "AccessControlList [owner=" + this.aqn + ", grants=" + this.aqm + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/AccessControlList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */