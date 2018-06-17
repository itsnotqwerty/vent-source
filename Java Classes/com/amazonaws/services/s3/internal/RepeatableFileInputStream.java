package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class RepeatableFileInputStream
  extends SdkInputStream
{
  private static final Log alS = LogFactory.getLog(RepeatableFileInputStream.class);
  private FileInputStream apV = null;
  private long apW = 0L;
  private long apX = 0L;
  private final File file;
  
  public RepeatableFileInputStream(File paramFile)
    throws FileNotFoundException
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("File cannot be null");
    }
    this.apV = new FileInputStream(paramFile);
    this.file = paramFile;
  }
  
  public int available()
    throws IOException
  {
    jH();
    return this.apV.available();
  }
  
  public void close()
    throws IOException
  {
    this.apV.close();
    jH();
  }
  
  public void mark(int paramInt)
  {
    jH();
    this.apX += this.apW;
    this.apW = 0L;
    if (alS.isDebugEnabled()) {
      alS.debug("Input stream marked at " + this.apX + " bytes");
    }
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
    throws IOException
  {
    jH();
    int i = this.apV.read();
    if (i != -1)
    {
      this.apW += 1L;
      return i;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    jH();
    paramInt1 = this.apV.read(paramArrayOfByte, paramInt1, paramInt2);
    this.apW += paramInt1;
    return paramInt1;
  }
  
  public void reset()
    throws IOException
  {
    this.apV.close();
    jH();
    this.apV = new FileInputStream(this.file);
    for (long l = this.apX; l > 0L; l -= this.apV.skip(l)) {}
    if (alS.isDebugEnabled()) {
      alS.debug("Reset to mark point " + this.apX + " after returning " + this.apW + " bytes");
    }
    this.apW = 0L;
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    jH();
    paramLong = this.apV.skip(paramLong);
    this.apW += paramLong;
    return paramLong;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/RepeatableFileInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */