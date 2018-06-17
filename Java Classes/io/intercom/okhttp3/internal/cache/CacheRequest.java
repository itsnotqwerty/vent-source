package io.intercom.okhttp3.internal.cache;

import io.intercom.b.r;
import java.io.IOException;

public abstract interface CacheRequest
{
  public abstract void abort();
  
  public abstract r body()
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/cache/CacheRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */