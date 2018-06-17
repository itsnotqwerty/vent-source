package io.intercom.a.a.a.c.c;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.f;
import io.intercom.a.a.a.c.a.k;
import java.io.InputStream;

public final class a<Data>
  implements n<Uri, Data>
{
  private static final int bMQ = 22;
  private final AssetManager bMR;
  private final a<Data> cMu;
  
  public a(AssetManager paramAssetManager, a<Data> parama)
  {
    this.bMR = paramAssetManager;
    this.cMu = parama;
  }
  
  public static abstract interface a<Data>
  {
    public abstract b<Data> b(AssetManager paramAssetManager, String paramString);
  }
  
  public static final class b
    implements a.a<ParcelFileDescriptor>, o<Uri, ParcelFileDescriptor>
  {
    private final AssetManager bMR;
    
    public b(AssetManager paramAssetManager)
    {
      this.bMR = paramAssetManager;
    }
    
    public final n<Uri, ParcelFileDescriptor> a(r paramr)
    {
      return new a(this.bMR, this);
    }
    
    public final b<ParcelFileDescriptor> b(AssetManager paramAssetManager, String paramString)
    {
      return new f(paramAssetManager, paramString);
    }
  }
  
  public static final class c
    implements a.a<InputStream>, o<Uri, InputStream>
  {
    private final AssetManager bMR;
    
    public c(AssetManager paramAssetManager)
    {
      this.bMR = paramAssetManager;
    }
    
    public final n<Uri, InputStream> a(r paramr)
    {
      return new a(this.bMR, this);
    }
    
    public final b<InputStream> b(AssetManager paramAssetManager, String paramString)
    {
      return new k(paramAssetManager, paramString);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */