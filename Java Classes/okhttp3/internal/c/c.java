package okhttp3.internal.c;

import d.r;
import java.io.IOException;
import okhttp3.w;
import okhttp3.y;
import okhttp3.y.a;
import okhttp3.z;

public abstract interface c
{
  public abstract r a(w paramw, long paramLong);
  
  public abstract y.a bz(boolean paramBoolean)
    throws IOException;
  
  public abstract void d(w paramw)
    throws IOException;
  
  public abstract z e(y paramy)
    throws IOException;
  
  public abstract void finishRequest()
    throws IOException;
  
  public abstract void flushRequest()
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */