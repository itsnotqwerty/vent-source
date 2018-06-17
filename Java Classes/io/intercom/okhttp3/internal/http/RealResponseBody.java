package io.intercom.okhttp3.internal.http;

import io.intercom.b.e;
import io.intercom.okhttp3.MediaType;
import io.intercom.okhttp3.ResponseBody;
import javax.annotation.Nullable;

public final class RealResponseBody
  extends ResponseBody
{
  private final long contentLength;
  @Nullable
  private final String contentTypeString;
  private final e source;
  
  public RealResponseBody(@Nullable String paramString, long paramLong, e parame)
  {
    this.contentTypeString = paramString;
    this.contentLength = paramLong;
    this.source = parame;
  }
  
  public final long contentLength()
  {
    return this.contentLength;
  }
  
  public final MediaType contentType()
  {
    if (this.contentTypeString != null) {
      return MediaType.parse(this.contentTypeString);
    }
    return null;
  }
  
  public final e source()
  {
    return this.source;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http/RealResponseBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */