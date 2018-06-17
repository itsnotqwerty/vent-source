package com.amazonaws.auth;

@Deprecated
public class DefaultAWSCredentialsProviderChain
  extends AWSCredentialsProviderChain
{
  public DefaultAWSCredentialsProviderChain()
  {
    super(new AWSCredentialsProvider[] { new SystemPropertiesCredentialsProvider(), new ClasspathPropertiesFileCredentialsProvider() });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/DefaultAWSCredentialsProviderChain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */