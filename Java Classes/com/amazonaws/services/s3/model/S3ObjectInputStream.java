package com.amazonaws.services.s3.model;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.client.methods.HttpRequestBase;

public class S3ObjectInputStream
  extends SdkFilterInputStream
{
  private final HttpRequestBase asJ = null;
  
  public S3ObjectInputStream(InputStream paramInputStream)
  {
    this(paramInputStream, (byte)0);
  }
  
  @Deprecated
  private S3ObjectInputStream(InputStream paramInputStream, byte paramByte)
  {
    this(paramInputStream, '\000');
  }
  
  @Deprecated
  private S3ObjectInputStream(InputStream paramInputStream, char paramChar)
  {
    super(paramInputStream);
  }
  
  public final void abort()
  {
    try
    {
      close();
      return;
    }
    catch (IOException localIOException)
    {
      LogFactory.getLog(getClass()).debug("FYI", localIOException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/S3ObjectInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */