package com.amazonaws.internal.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class InternalConfig
{
  private static final Log alS = LogFactory.getLog(InternalConfig.class);
  public final SignerConfig aoo = new SignerConfig("AWS4SignerType");
  public final Map<String, SignerConfig> aop;
  public final Map<String, SignerConfig> aoq;
  public final Map<String, SignerConfig> aor;
  public final Map<String, HttpClientConfig> aos;
  public final List<HostRegexToRegionMapping> aot;
  
  InternalConfig()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("eu-central-1", new SignerConfig("AWS4SignerType"));
    ((Map)localObject).put("cn-north-1", new SignerConfig("AWS4SignerType"));
    this.aoq = ((Map)localObject);
    localObject = new HashMap();
    ((Map)localObject).put("ec2", new SignerConfig("QueryStringSignerType"));
    ((Map)localObject).put("email", new SignerConfig("AWS3SignerType"));
    ((Map)localObject).put("s3", new SignerConfig("S3SignerType"));
    ((Map)localObject).put("sdb", new SignerConfig("QueryStringSignerType"));
    ((Map)localObject).put("runtime.lex", new SignerConfig("AmazonLexV4Signer"));
    this.aor = ((Map)localObject);
    localObject = new HashMap();
    ((Map)localObject).put("s3/eu-central-1", new SignerConfig("AWSS3V4SignerType"));
    ((Map)localObject).put("s3/cn-north-1", new SignerConfig("AWSS3V4SignerType"));
    ((Map)localObject).put("s3/us-east-2", new SignerConfig("AWSS3V4SignerType"));
    ((Map)localObject).put("s3/ca-central-1", new SignerConfig("AWSS3V4SignerType"));
    ((Map)localObject).put("s3/ap-south-1", new SignerConfig("AWSS3V4SignerType"));
    ((Map)localObject).put("s3/ap-northeast-2", new SignerConfig("AWSS3V4SignerType"));
    ((Map)localObject).put("s3/eu-west-2", new SignerConfig("AWSS3V4SignerType"));
    this.aop = ((Map)localObject);
    localObject = new HashMap();
    ((Map)localObject).put("AmazonCloudWatchClient", new HttpClientConfig("monitoring"));
    ((Map)localObject).put("AmazonSimpleDBClient", new HttpClientConfig("sdb"));
    ((Map)localObject).put("AmazonSimpleEmailServiceClient", new HttpClientConfig("email"));
    ((Map)localObject).put("AWSSecurityTokenServiceClient", new HttpClientConfig("sts"));
    ((Map)localObject).put("AmazonCognitoIdentityClient", new HttpClientConfig("cognito-identity"));
    ((Map)localObject).put("AmazonCognitoIdentityProviderClient", new HttpClientConfig("cognito-idp"));
    ((Map)localObject).put("AmazonCognitoSyncClient", new HttpClientConfig("cognito-sync"));
    ((Map)localObject).put("AmazonKinesisFirehoseClient", new HttpClientConfig("firehose"));
    ((Map)localObject).put("AWSIotClient", new HttpClientConfig("execute-api"));
    ((Map)localObject).put("AmazonLexRuntimeClient", new HttpClientConfig("runtime.lex"));
    ((Map)localObject).put("AmazonPinpointClient", new HttpClientConfig("mobiletargeting"));
    ((Map)localObject).put("AmazonPinpointAnalyticsClient", new HttpClientConfig("mobileanalytics"));
    this.aos = ((Map)localObject);
    localObject = new ArrayList();
    ((List)localObject).add(new HostRegexToRegionMapping("(.+\\.)?s3\\.amazonaws\\.com", "us-east-1"));
    ((List)localObject).add(new HostRegexToRegionMapping("(.+\\.)?s3-external-1\\.amazonaws\\.com", "us-east-1"));
    ((List)localObject).add(new HostRegexToRegionMapping("(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com", "us-gov-west-1"));
    this.aot = ((List)localObject);
  }
  
  public static class Factory
  {
    private static final InternalConfig aou;
    
    static
    {
      try
      {
        InternalConfig localInternalConfig = new InternalConfig();
        aou = localInternalConfig;
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw localRuntimeException;
      }
      catch (Exception localException)
      {
        throw new IllegalStateException("Fatal: Failed to load the internal config for AWS Android SDK", localException);
      }
    }
    
    public static InternalConfig jI()
    {
      return aou;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/config/InternalConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */