package com.amazonaws;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.metrics.RequestMetricCollector;

public abstract class AmazonWebServiceRequest
  implements Cloneable
{
  public final RequestClientOptions ama = new RequestClientOptions();
  @Deprecated
  protected RequestMetricCollector amb;
  public AWSCredentials amc;
  private AmazonWebServiceRequest amd;
  
  public AmazonWebServiceRequest jo()
  {
    try
    {
      AmazonWebServiceRequest localAmazonWebServiceRequest = (AmazonWebServiceRequest)super.clone();
      localAmazonWebServiceRequest.amd = this;
      return localAmazonWebServiceRequest;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", localCloneNotSupportedException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/AmazonWebServiceRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */