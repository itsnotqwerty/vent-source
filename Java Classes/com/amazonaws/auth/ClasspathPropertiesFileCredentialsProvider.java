package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;

@Deprecated
public class ClasspathPropertiesFileCredentialsProvider
  implements AWSCredentialsProvider
{
  private static String ant = "AwsCredentials.properties";
  private final String anu;
  
  public ClasspathPropertiesFileCredentialsProvider()
  {
    this(ant);
  }
  
  private ClasspathPropertiesFileCredentialsProvider(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Credentials file path cannot be null");
    }
    if (!paramString.startsWith("/"))
    {
      this.anu = ("/" + paramString);
      return;
    }
    this.anu = paramString;
  }
  
  public final AWSCredentials jy()
  {
    Object localObject = getClass().getResourceAsStream(this.anu);
    if (localObject == null) {
      throw new AmazonClientException("Unable to load AWS credentials from the " + this.anu + " file on the classpath");
    }
    try
    {
      localObject = new PropertiesCredentials((InputStream)localObject);
      return (AWSCredentials)localObject;
    }
    catch (IOException localIOException)
    {
      throw new AmazonClientException("Unable to load AWS credentials from the " + this.anu + " file on the classpath", localIOException);
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.anu + ")";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */