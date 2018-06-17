package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class AWSCredentialsProviderChain
  implements AWSCredentialsProvider
{
  private static final Log alS = LogFactory.getLog(AWSCredentialsProviderChain.class);
  private List<AWSCredentialsProvider> amY = new LinkedList();
  private boolean amZ = true;
  private AWSCredentialsProvider ana;
  
  public AWSCredentialsProviderChain(AWSCredentialsProvider... paramVarArgs)
  {
    int i = 0;
    while (i < 2)
    {
      AWSCredentialsProvider localAWSCredentialsProvider = paramVarArgs[i];
      this.amY.add(localAWSCredentialsProvider);
      i += 1;
    }
  }
  
  public final AWSCredentials jy()
  {
    if ((this.amZ) && (this.ana != null)) {
      return this.ana.jy();
    }
    Iterator localIterator = this.amY.iterator();
    while (localIterator.hasNext())
    {
      AWSCredentialsProvider localAWSCredentialsProvider = (AWSCredentialsProvider)localIterator.next();
      try
      {
        AWSCredentials localAWSCredentials = localAWSCredentialsProvider.jy();
        if ((localAWSCredentials.jw() != null) && (localAWSCredentials.jx() != null))
        {
          alS.debug("Loading credentials from " + localAWSCredentialsProvider.toString());
          this.ana = localAWSCredentialsProvider;
          return localAWSCredentials;
        }
      }
      catch (Exception localException)
      {
        alS.debug("Unable to load credentials from " + localAWSCredentialsProvider.toString() + ": " + localException.getMessage());
      }
    }
    throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/AWSCredentialsProviderChain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */