package okhttp3.internal.c;

import d.e;
import javax.annotation.Nullable;
import okhttp3.s;
import okhttp3.z;

public final class h
  extends z
{
  private final long contentLength;
  @Nullable
  private final String contentTypeString;
  private final e dad;
  
  public h(@Nullable String paramString, long paramLong, e parame)
  {
    this.contentTypeString = paramString;
    this.contentLength = paramLong;
    this.dad = parame;
  }
  
  public final s LX()
  {
    if (this.contentTypeString != null) {
      return s.fw(this.contentTypeString);
    }
    return null;
  }
  
  public final e LY()
  {
    return this.dad;
  }
  
  public final long contentLength()
  {
    return this.contentLength;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */