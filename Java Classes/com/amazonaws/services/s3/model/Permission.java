package com.amazonaws.services.s3.model;

public enum Permission
{
  private String aso;
  public String headerName;
  
  private Permission(String paramString1, String paramString2)
  {
    this.aso = paramString1;
    this.headerName = paramString2;
  }
  
  public static Permission ai(String paramString)
  {
    Permission[] arrayOfPermission = values();
    int j = arrayOfPermission.length;
    int i = 0;
    while (i < j)
    {
      Permission localPermission = arrayOfPermission[i];
      if (localPermission.aso.equals(paramString)) {
        return localPermission;
      }
      i += 1;
    }
    return null;
  }
  
  public final String toString()
  {
    return this.aso;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/Permission.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */