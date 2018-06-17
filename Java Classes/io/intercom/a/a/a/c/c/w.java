package io.intercom.a.a.a.c.c;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.g;
import io.intercom.a.a.a.c.a.l;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class w<Data>
  implements n<Uri, Data>
{
  private static final Set<String> cNr = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "file", "android.resource", "content" })));
  private final b<Data> cNs;
  
  public w(b<Data> paramb)
  {
    this.cNs = paramb;
  }
  
  public static final class a
    implements o<Uri, ParcelFileDescriptor>, w.b<ParcelFileDescriptor>
  {
    private final ContentResolver cIv;
    
    public a(ContentResolver paramContentResolver)
    {
      this.cIv = paramContentResolver;
    }
    
    public final n<Uri, ParcelFileDescriptor> a(r paramr)
    {
      return new w(this);
    }
    
    public final b<ParcelFileDescriptor> t(Uri paramUri)
    {
      return new g(this.cIv, paramUri);
    }
  }
  
  public static abstract interface b<Data>
  {
    public abstract b<Data> t(Uri paramUri);
  }
  
  public static final class c
    implements o<Uri, InputStream>, w.b<InputStream>
  {
    private final ContentResolver cIv;
    
    public c(ContentResolver paramContentResolver)
    {
      this.cIv = paramContentResolver;
    }
    
    public final n<Uri, InputStream> a(r paramr)
    {
      return new w(this);
    }
    
    public final b<InputStream> t(Uri paramUri)
    {
      return new l(this.cIv, paramUri);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */