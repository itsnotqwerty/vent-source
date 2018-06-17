package io.intercom.a.a.a.c.c.a;

import android.content.Context;
import android.net.Uri;
import io.intercom.a.a.a.c.c.n;
import io.intercom.a.a.a.c.c.o;
import io.intercom.a.a.a.c.c.r;
import java.io.InputStream;

public final class d
  implements n<Uri, InputStream>
{
  private final Context context;
  
  public d(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
  }
  
  public static final class a
    implements o<Uri, InputStream>
  {
    private final Context context;
    
    public a(Context paramContext)
    {
      this.context = paramContext;
    }
    
    public final n<Uri, InputStream> a(r paramr)
    {
      return new d(this.context);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */