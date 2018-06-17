package io.intercom.a.a.a.c.a;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.g;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class j<T>
  implements b<T>
{
  private final ContentResolver cIv;
  private T data;
  private final Uri uri;
  
  public j(ContentResolver paramContentResolver, Uri paramUri)
  {
    this.cIv = paramContentResolver;
    this.uri = paramUri;
  }
  
  public final a HT()
  {
    return a.cHC;
  }
  
  protected abstract T a(Uri paramUri, ContentResolver paramContentResolver)
    throws FileNotFoundException;
  
  public final void a(g paramg, b.a<? super T> parama)
  {
    try
    {
      this.data = a(this.uri, this.cIv);
      parama.as(this.data);
      return;
    }
    catch (FileNotFoundException paramg)
    {
      if (Log.isLoggable("LocalUriFetcher", 3)) {
        Log.d("LocalUriFetcher", "Failed to open Uri", paramg);
      }
      parama.i(paramg);
    }
  }
  
  protected abstract void ar(T paramT)
    throws IOException;
  
  public final void cancel() {}
  
  public final void cleanup()
  {
    if (this.data != null) {}
    try
    {
      ar(this.data);
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */