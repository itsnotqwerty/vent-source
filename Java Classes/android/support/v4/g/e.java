package android.support.v4.g;

import android.util.Log;
import java.io.Writer;

public final class e
  extends Writer
{
  private StringBuilder Ey = new StringBuilder(128);
  private final String mTag;
  
  public e(String paramString)
  {
    this.mTag = paramString;
  }
  
  private void dH()
  {
    if (this.Ey.length() > 0)
    {
      Log.d(this.mTag, this.Ey.toString());
      this.Ey.delete(0, this.Ey.length());
    }
  }
  
  public final void close()
  {
    dH();
  }
  
  public final void flush()
  {
    dH();
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n') {
        dH();
      }
      for (;;)
      {
        i += 1;
        break;
        this.Ey.append(c);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/g/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */