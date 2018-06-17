package com.amazonaws.services.s3.model;

public class Grant
{
  public Grantee arw = null;
  public Permission arx = null;
  
  public Grant(Grantee paramGrantee, Permission paramPermission)
  {
    this.arw = paramGrantee;
    this.arx = paramPermission;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (Grant)paramObject;
      if (this.arw == null)
      {
        if (((Grant)paramObject).arw != null) {
          return false;
        }
      }
      else if (!this.arw.equals(((Grant)paramObject).arw)) {
        return false;
      }
    } while (this.arx == ((Grant)paramObject).arx);
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (this.arw == null)
    {
      i = 0;
      if (this.arx != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 31) * 31 + j;
      i = this.arw.hashCode();
      break;
      label39:
      j = this.arx.hashCode();
    }
  }
  
  public String toString()
  {
    return "Grant [grantee=" + this.arw + ", permission=" + this.arx + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/Grant.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */