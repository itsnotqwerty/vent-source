package com.amazonaws.services.s3.model;

public enum StorageClass
{
  private final String asS;
  
  private StorageClass(String paramString)
  {
    this.asS = paramString;
  }
  
  public static StorageClass am(String paramString)
    throws IllegalArgumentException
  {
    StorageClass[] arrayOfStorageClass = values();
    int j = arrayOfStorageClass.length;
    int i = 0;
    while (i < j)
    {
      StorageClass localStorageClass = arrayOfStorageClass[i];
      if (localStorageClass.toString().equals(paramString)) {
        return localStorageClass;
      }
      i += 1;
    }
    throw new IllegalArgumentException("Cannot create enum from " + paramString + " value!");
  }
  
  public final String toString()
  {
    return this.asS;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/StorageClass.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */