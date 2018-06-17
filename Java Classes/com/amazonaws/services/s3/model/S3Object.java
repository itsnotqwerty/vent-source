package com.amazonaws.services.s3.model;

import java.io.Closeable;
import java.io.IOException;

public class S3Object
  implements Closeable
{
  private String ark = null;
  public S3ObjectInputStream asH;
  public boolean asI;
  public ObjectMetadata asr = new ObjectMetadata();
  public String asv;
  private String key = null;
  
  public void close()
    throws IOException
  {
    if (this.asH != null) {
      this.asH.close();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("S3Object [key=").append(this.key).append(",bucket=");
    if (this.ark == null) {}
    for (String str = "<Unknown>";; str = this.ark) {
      return str + "]";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/S3Object.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */