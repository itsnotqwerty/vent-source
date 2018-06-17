package io.intercom.a.a.a.c.c.a;

import android.net.Uri;
import io.intercom.a.a.a.c.c.g;
import io.intercom.a.a.a.c.c.n;
import io.intercom.a.a.a.c.c.o;
import io.intercom.a.a.a.c.c.r;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class b
  implements n<Uri, InputStream>
{
  private static final Set<String> cNr = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "http", "https" })));
  private final n<g, InputStream> cNt;
  
  public b(n<g, InputStream> paramn)
  {
    this.cNt = paramn;
  }
  
  public static final class a
    implements o<Uri, InputStream>
  {
    public final n<Uri, InputStream> a(r paramr)
    {
      return new b(paramr.b(g.class, InputStream.class));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */