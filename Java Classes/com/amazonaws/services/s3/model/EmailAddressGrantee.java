package com.amazonaws.services.s3.model;

public class EmailAddressGrantee
  implements Grantee
{
  private String art = null;
  
  public final void ag(String paramString)
  {
    this.art = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (EmailAddressGrantee)paramObject;
        if (this.art != null) {
          break;
        }
      } while (((EmailAddressGrantee)paramObject).art == null);
      return false;
    } while (this.art.equals(((EmailAddressGrantee)paramObject).art));
    return false;
  }
  
  public int hashCode()
  {
    if (this.art == null) {}
    for (int i = 0;; i = this.art.hashCode()) {
      return i + 31;
    }
  }
  
  public final String jR()
  {
    return "emailAddress";
  }
  
  public final String jS()
  {
    return this.art;
  }
  
  public String toString()
  {
    return this.art;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/EmailAddressGrantee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */