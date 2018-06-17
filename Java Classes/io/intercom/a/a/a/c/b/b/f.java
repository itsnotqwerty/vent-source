package io.intercom.a.a.a.c.b.b;

import android.content.Context;
import java.io.File;

public final class f
  extends d
{
  public f(Context paramContext)
  {
    this(paramContext, "image_manager_disk_cache");
  }
  
  private f(Context paramContext, final String paramString)
  {
    super(new d.a()
    {
      public final File IE()
      {
        File localFile = f.this.getCacheDir();
        if (localFile == null) {
          return null;
        }
        if (paramString != null) {
          return new File(localFile, paramString);
        }
        return localFile;
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */