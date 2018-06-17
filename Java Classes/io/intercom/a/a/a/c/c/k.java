package io.intercom.a.a.a.c.c;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.g;
import java.io.File;
import java.io.FileNotFoundException;

public final class k
  implements n<Uri, File>
{
  private final Context context;
  
  public k(Context paramContext)
  {
    this.context = paramContext;
  }
  
  public static final class a
    implements o<Uri, File>
  {
    private final Context context;
    
    public a(Context paramContext)
    {
      this.context = paramContext;
    }
    
    public final n<Uri, File> a(r paramr)
    {
      return new k(this.context);
    }
  }
  
  private static final class b
    implements b<File>
  {
    private static final String[] cMR = { "_data" };
    private final Context context;
    private final Uri uri;
    
    b(Context paramContext, Uri paramUri)
    {
      this.context = paramContext;
      this.uri = paramUri;
    }
    
    public final a HT()
    {
      return a.cHC;
    }
    
    public final Class<File> HU()
    {
      return File.class;
    }
    
    public final void a(g paramg, b.a<? super File> parama)
    {
      paramg = null;
      Object localObject = null;
      Cursor localCursor = this.context.getContentResolver().query(this.uri, cMR, null, null, null);
      if (localCursor != null) {
        paramg = (g)localObject;
      }
      try
      {
        if (localCursor.moveToFirst()) {
          paramg = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
        }
        localCursor.close();
        if (TextUtils.isEmpty(paramg))
        {
          parama.i(new FileNotFoundException("Failed to find file path for: " + this.uri));
          return;
        }
      }
      finally
      {
        localCursor.close();
      }
      parama.as(new File(paramg));
    }
    
    public final void cancel() {}
    
    public final void cleanup() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */