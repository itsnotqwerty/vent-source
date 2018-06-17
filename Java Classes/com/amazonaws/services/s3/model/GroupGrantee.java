package com.amazonaws.services.s3.model;

public enum GroupGrantee
  implements Grantee
{
  private String arB;
  
  private GroupGrantee(String paramString)
  {
    this.arB = paramString;
  }
  
  public static GroupGrantee ah(String paramString)
  {
    GroupGrantee[] arrayOfGroupGrantee = values();
    int j = arrayOfGroupGrantee.length;
    int i = 0;
    while (i < j)
    {
      GroupGrantee localGroupGrantee = arrayOfGroupGrantee[i];
      if (localGroupGrantee.arB.equals(paramString)) {
        return localGroupGrantee;
      }
      i += 1;
    }
    return null;
  }
  
  public final void ag(String paramString)
  {
    throw new UnsupportedOperationException("Group grantees have preset identifiers that cannot be modified.");
  }
  
  public final String jR()
  {
    return "uri";
  }
  
  public final String jS()
  {
    return this.arB;
  }
  
  public final String toString()
  {
    return "GroupGrantee [" + this.arB + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/GroupGrantee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */