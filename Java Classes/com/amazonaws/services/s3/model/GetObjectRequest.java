package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;

public class GetObjectRequest
  extends AmazonWebServiceRequest
{
  private long[] aru;
  public SSECustomerKey arv;
  
  public final long[] jT()
  {
    if (this.aru == null) {
      return null;
    }
    return (long[])this.aru.clone();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/GetObjectRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */