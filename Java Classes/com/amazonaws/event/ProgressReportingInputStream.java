package com.amazonaws.event;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class ProgressReportingInputStream
  extends SdkFilterInputStream
{
  private final ProgressListenerCallbackExecutor anL;
  private int anM;
  private boolean anN;
  
  public ProgressReportingInputStream(InputStream paramInputStream, ProgressListenerCallbackExecutor paramProgressListenerCallbackExecutor)
  {
    super(paramInputStream);
    this.anL = paramProgressListenerCallbackExecutor;
  }
  
  private void cp(int paramInt)
  {
    this.anM += paramInt;
    if (this.anM >= 8192)
    {
      this.anL.a(new ProgressEvent(this.anM));
      this.anM = 0;
    }
  }
  
  private void jD()
  {
    if (!this.anN) {
      return;
    }
    ProgressEvent localProgressEvent = new ProgressEvent(this.anM);
    localProgressEvent.co(4);
    this.anM = 0;
    this.anL.a(localProgressEvent);
  }
  
  public void close()
    throws IOException
  {
    if (this.anM > 0)
    {
      this.anL.a(new ProgressEvent(this.anM));
      this.anM = 0;
    }
    super.close();
  }
  
  public int read()
    throws IOException
  {
    int i = super.read();
    if (i == -1)
    {
      jD();
      return i;
    }
    cp(1);
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 == -1) {
      jD();
    }
    if (paramInt1 != -1) {
      cp(paramInt1);
    }
    return paramInt1;
  }
  
  public void reset()
    throws IOException
  {
    super.reset();
    ProgressEvent localProgressEvent = new ProgressEvent(this.anM);
    localProgressEvent.co(32);
    this.anL.a(localProgressEvent);
    this.anM = 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/event/ProgressReportingInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */