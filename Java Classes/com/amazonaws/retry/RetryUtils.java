package com.amazonaws.retry;

import com.amazonaws.AmazonServiceException;

public class RetryUtils
{
  public static boolean a(AmazonServiceException paramAmazonServiceException)
  {
    if (paramAmazonServiceException == null) {}
    do
    {
      return false;
      paramAmazonServiceException = paramAmazonServiceException.alK;
    } while ((!"Throttling".equals(paramAmazonServiceException)) && (!"ThrottlingException".equals(paramAmazonServiceException)) && (!"ProvisionedThroughputExceededException".equals(paramAmazonServiceException)));
    return true;
  }
  
  public static boolean b(AmazonServiceException paramAmazonServiceException)
  {
    if (paramAmazonServiceException == null) {}
    do
    {
      return false;
      paramAmazonServiceException = paramAmazonServiceException.alK;
    } while ((!"RequestTimeTooSkewed".equals(paramAmazonServiceException)) && (!"RequestExpired".equals(paramAmazonServiceException)) && (!"InvalidSignatureException".equals(paramAmazonServiceException)) && (!"SignatureDoesNotMatch".equals(paramAmazonServiceException)));
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/retry/RetryUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */