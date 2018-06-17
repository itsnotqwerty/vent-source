package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;

@Deprecated
public class SystemPropertiesCredentialsProvider
  implements AWSCredentialsProvider
{
  public final AWSCredentials jy()
  {
    if ((System.getProperty("aws.accessKeyId") != null) && (System.getProperty("aws.secretKey") != null)) {
      return new BasicAWSCredentials(System.getProperty("aws.accessKeyId"), System.getProperty("aws.secretKey"));
    }
    throw new AmazonClientException("Unable to load AWS credentials from Java system properties (aws.accessKeyId and aws.secretKey)");
  }
  
  public String toString()
  {
    return getClass().getSimpleName();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/SystemPropertiesCredentialsProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */