package com.amazonaws.services.s3.model;

public class CanonicalGrantee
  implements Grantee
{
  public String arj = null;
  private String id = null;
  
  public final void ag(String paramString)
  {
    this.id = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof CanonicalGrantee))
    {
      paramObject = (CanonicalGrantee)paramObject;
      return this.id.equals(((CanonicalGrantee)paramObject).id);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.id.hashCode();
  }
  
  public final String jR()
  {
    return "id";
  }
  
  public final String jS()
  {
    return this.id;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/CanonicalGrantee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */