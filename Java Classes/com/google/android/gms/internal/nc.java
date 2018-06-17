package com.google.android.gms.internal;

import java.io.IOException;

public final class nc
  extends IOException
{
  public nc(String paramString)
  {
    super(paramString);
  }
  
  static nc sU()
  {
    return new nc("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static nc sV()
  {
    return new nc("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static nc sW()
  {
    return new nc("CodedInputStream encountered a malformed varint.");
  }
  
  static nc sX()
  {
    return new nc("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */