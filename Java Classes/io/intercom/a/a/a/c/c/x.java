package io.intercom.a.a.a.c.c;

import android.net.Uri;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class x<Data>
  implements n<Uri, Data>
{
  private static final Set<String> cNr = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "http", "https" })));
  private final n<g, Data> cNt;
  
  public x(n<g, Data> paramn)
  {
    this.cNt = paramn;
  }
  
  public static final class a
    implements o<Uri, InputStream>
  {
    public final n<Uri, InputStream> a(r paramr)
    {
      return new x(paramr.b(g.class, InputStream.class));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */