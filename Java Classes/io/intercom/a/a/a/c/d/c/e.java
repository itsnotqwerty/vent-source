package io.intercom.a.a.a.c.d.c;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.k;
import java.io.IOException;
import java.util.List;

public final class e
  implements k<Uri, Drawable>
{
  private final Context context;
  
  public e(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
  }
  
  private Context a(Uri paramUri, String paramString)
  {
    try
    {
      paramString = this.context.createPackageContext(paramString, 0);
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + paramUri, paramString);
    }
  }
  
  private int v(Uri paramUri)
  {
    Object localObject3 = paramUri.getPathSegments();
    String str;
    if (((List)localObject3).size() == 2)
    {
      localObject1 = paramUri.getAuthority();
      str = (String)((List)localObject3).get(0);
      localObject3 = (String)((List)localObject3).get(1);
    }
    Object localObject2;
    for (Object localObject1 = Integer.valueOf(this.context.getResources().getIdentifier((String)localObject3, str, (String)localObject1)); localObject1 == null; localObject2 = null)
    {
      throw new IllegalArgumentException("Unrecognized Uri format: " + paramUri);
      if (((List)localObject3).size() == 1) {
        try
        {
          localObject1 = Integer.valueOf((String)((List)localObject3).get(0));
        }
        catch (NumberFormatException localNumberFormatException) {}
      }
    }
    if (((Integer)localObject2).intValue() == 0) {
      throw new IllegalArgumentException("Failed to obtain resource id for: " + paramUri);
    }
    return ((Integer)localObject2).intValue();
  }
  
  public final u<Drawable> u(Uri paramUri)
    throws IOException
  {
    int i = v(paramUri);
    String str = paramUri.getAuthority();
    if (str.equals(this.context.getPackageName())) {}
    for (paramUri = this.context;; paramUri = a(paramUri, str)) {
      return d.n(a.a(paramUri, i));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/c/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */