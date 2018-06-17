package io.intercom.a.a.a.c.a;

import android.content.res.AssetManager;
import android.util.Log;
import io.intercom.a.a.a.g;
import java.io.IOException;

public abstract class a<T>
  implements b<T>
{
  private final AssetManager bMR;
  private final String cIh;
  private T data;
  
  public a(AssetManager paramAssetManager, String paramString)
  {
    this.bMR = paramAssetManager;
    this.cIh = paramString;
  }
  
  public final io.intercom.a.a.a.c.a HT()
  {
    return io.intercom.a.a.a.c.a.cHC;
  }
  
  protected abstract T a(AssetManager paramAssetManager, String paramString)
    throws IOException;
  
  public final void a(g paramg, b.a<? super T> parama)
  {
    try
    {
      this.data = a(this.bMR, this.cIh);
      parama.as(this.data);
      return;
    }
    catch (IOException paramg)
    {
      if (Log.isLoggable("AssetPathFetcher", 3)) {
        Log.d("AssetPathFetcher", "Failed to load data from asset manager", paramg);
      }
      parama.i(paramg);
    }
  }
  
  protected abstract void ar(T paramT)
    throws IOException;
  
  public final void cancel() {}
  
  public final void cleanup()
  {
    if (this.data == null) {
      return;
    }
    try
    {
      ar(this.data);
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */