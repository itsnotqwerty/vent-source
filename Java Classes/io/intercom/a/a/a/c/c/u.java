package io.intercom.a.a.a.c.c;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.InputStream;

public final class u<Data>
  implements n<String, Data>
{
  private final n<Uri, Data> cNm;
  
  public u(n<Uri, Data> paramn)
  {
    this.cNm = paramn;
  }
  
  private static Uri eZ(String paramString)
  {
    return Uri.fromFile(new File(paramString));
  }
  
  public static final class a
    implements o<String, ParcelFileDescriptor>
  {
    public final n<String, ParcelFileDescriptor> a(r paramr)
    {
      return new u(paramr.b(Uri.class, ParcelFileDescriptor.class));
    }
  }
  
  public static final class b
    implements o<String, InputStream>
  {
    public final n<String, InputStream> a(r paramr)
    {
      return new u(paramr.b(Uri.class, InputStream.class));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */