package com.amazonaws.services.s3.model;

public class MultiObjectDeleteException
  extends AmazonS3Exception
{
  public static class DeleteError
  {
    public String arP;
    public String arq;
    public String key;
    public String message;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/MultiObjectDeleteException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */