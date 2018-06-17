package com.amazonaws.services.s3.model;

import java.io.Serializable;

public class Owner
  implements Serializable
{
  public String arj;
  public String id;
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Owner)) {
      return false;
    }
    paramObject = (Owner)paramObject;
    Object localObject1 = ((Owner)paramObject).id;
    Object localObject2 = ((Owner)paramObject).arj;
    Object localObject3 = this.id;
    String str = this.arj;
    paramObject = localObject1;
    if (localObject1 == null) {
      paramObject = "";
    }
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    localObject2 = localObject3;
    if (localObject3 == null) {
      localObject2 = "";
    }
    localObject3 = str;
    if (str == null) {
      localObject3 = "";
    }
    return (((String)paramObject).equals(localObject2)) && (((String)localObject1).equals(localObject3));
  }
  
  public int hashCode()
  {
    if (this.id != null) {
      return this.id.hashCode();
    }
    return 0;
  }
  
  public String toString()
  {
    return "S3Owner [name=" + this.arj + ",id=" + this.id + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/Owner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */