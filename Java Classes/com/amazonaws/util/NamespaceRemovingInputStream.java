package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

class NamespaceRemovingInputStream
  extends SdkFilterInputStream
{
  private final byte[] ava = new byte['È'];
  private boolean avb = false;
  
  public NamespaceRemovingInputStream(InputStream paramInputStream)
  {
    super(new BufferedInputStream(paramInputStream));
  }
  
  public int read()
    throws IOException
  {
    int m = -1;
    jH();
    int k = this.in.read();
    int j = k;
    if (k == 120)
    {
      j = k;
      if (!this.avb)
      {
        this.ava[0] = ((byte)k);
        this.in.mark(this.ava.length);
        int i = this.in.read(this.ava, 1, this.ava.length - 1);
        this.in.reset();
        String str = new String(this.ava, 0, i + 1, StringUtils.avd);
        StringPrefixSlicer localStringPrefixSlicer = new StringPrefixSlicer(str);
        if (!localStringPrefixSlicer.aA("xmlns")) {
          i = m;
        }
        do
        {
          do
          {
            j = k;
            if (i <= 0) {
              return j;
            }
            j = 0;
            while (j < i - 1)
            {
              this.in.read();
              j += 1;
            }
            localStringPrefixSlicer.aB(" ");
            i = m;
          } while (!localStringPrefixSlicer.aA("="));
          localStringPrefixSlicer.aB(" ");
          i = m;
        } while (!localStringPrefixSlicer.aA("\""));
        i = localStringPrefixSlicer.avc.indexOf("\"");
        if (i < 0) {}
        for (j = 0;; j = 1)
        {
          i = m;
          if (j == 0) {
            break;
          }
          i = str.length() - localStringPrefixSlicer.avc.length();
          break;
          localStringPrefixSlicer.avc = localStringPrefixSlicer.avc.substring("\"".length() + i);
        }
        j = this.in.read();
        this.avb = true;
      }
    }
    return j;
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = 0;
    for (;;)
    {
      int j = paramInt2;
      if (i < paramInt2)
      {
        j = read();
        if (j != -1) {
          break label38;
        }
        if (i == 0) {
          j = -1;
        }
      }
      else
      {
        return j;
      }
      return i;
      label38:
      paramArrayOfByte[(i + paramInt1)] = ((byte)j);
      i += 1;
    }
  }
  
  private static final class StringPrefixSlicer
  {
    String avc;
    
    public StringPrefixSlicer(String paramString)
    {
      this.avc = paramString;
    }
    
    public final boolean aA(String paramString)
    {
      if (!this.avc.startsWith(paramString)) {
        return false;
      }
      this.avc = this.avc.substring(paramString.length());
      return true;
    }
    
    public final boolean aB(String paramString)
    {
      if (!this.avc.startsWith(paramString)) {
        return false;
      }
      while (this.avc.startsWith(paramString)) {
        this.avc = this.avc.substring(paramString.length());
      }
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/NamespaceRemovingInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */