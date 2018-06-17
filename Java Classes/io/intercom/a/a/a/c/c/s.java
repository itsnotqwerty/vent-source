package io.intercom.a.a.a.c.c;

import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;

public final class s<Data>
  implements n<Integer, Data>
{
  private final n<Uri, Data> cNm;
  private final Resources cNn;
  
  public s(Resources paramResources, n<Uri, Data> paramn)
  {
    this.cNn = paramResources;
    this.cNm = paramn;
  }
  
  private Uri e(Integer paramInteger)
  {
    try
    {
      Uri localUri = Uri.parse("android.resource://" + this.cNn.getResourcePackageName(paramInteger.intValue()) + '/' + this.cNn.getResourceTypeName(paramInteger.intValue()) + '/' + this.cNn.getResourceEntryName(paramInteger.intValue()));
      return localUri;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      if (Log.isLoggable("ResourceLoader", 5)) {
        Log.w("ResourceLoader", "Received invalid resource id: " + paramInteger, localNotFoundException);
      }
    }
    return null;
  }
  
  public static final class a
    implements o<Integer, ParcelFileDescriptor>
  {
    private final Resources cNn;
    
    public a(Resources paramResources)
    {
      this.cNn = paramResources;
    }
    
    public final n<Integer, ParcelFileDescriptor> a(r paramr)
    {
      return new s(this.cNn, paramr.b(Uri.class, ParcelFileDescriptor.class));
    }
  }
  
  public static final class b
    implements o<Integer, InputStream>
  {
    private final Resources cNn;
    
    public b(Resources paramResources)
    {
      this.cNn = paramResources;
    }
    
    public final n<Integer, InputStream> a(r paramr)
    {
      return new s(this.cNn, paramr.b(Uri.class, InputStream.class));
    }
  }
  
  public static final class c
    implements o<Integer, Uri>
  {
    private final Resources cNn;
    
    public c(Resources paramResources)
    {
      this.cNn = paramResources;
    }
    
    public final n<Integer, Uri> a(r paramr)
    {
      return new s(this.cNn, v.IS());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */