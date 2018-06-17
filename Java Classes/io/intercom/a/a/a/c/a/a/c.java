package io.intercom.a.a.a.c.a.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video.Thumbnails;
import android.util.Log;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.g;
import io.intercom.a.a.a.h;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class c
  implements io.intercom.a.a.a.c.a.b<InputStream>
{
  private InputStream asq;
  private final Uri cIx;
  private final e cIy;
  
  private c(Uri paramUri, e parame)
  {
    this.cIx = paramUri;
    this.cIy = parame;
  }
  
  public static c a(Context paramContext, Uri paramUri, d paramd)
  {
    io.intercom.a.a.a.c.b.a.b localb = io.intercom.a.a.a.c.bY(paramContext).cFw;
    return new c(paramUri, new e(io.intercom.a.a.a.c.bY(paramContext).cFv.Hz(), paramd, localb, paramContext.getContentResolver()));
  }
  
  public final a HT()
  {
    return a.cHC;
  }
  
  public final Class<InputStream> HU()
  {
    return InputStream.class;
  }
  
  public final void a(g paramg, b.a<? super InputStream> parama)
  {
    for (;;)
    {
      try
      {
        paramg = this.cIy.s(this.cIx);
        if (paramg == null) {
          break label89;
        }
        i = this.cIy.r(this.cIx);
        if (i != -1)
        {
          paramg = new io.intercom.a.a.a.c.a.e(paramg, i);
          this.asq = paramg;
          parama.as(this.asq);
          return;
        }
      }
      catch (FileNotFoundException paramg)
      {
        if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
          Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", paramg);
        }
        parama.i(paramg);
        return;
      }
      continue;
      label89:
      int i = -1;
    }
  }
  
  public final void cancel() {}
  
  public final void cleanup()
  {
    if (this.asq != null) {}
    try
    {
      this.asq.close();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public static final class a
    implements d
  {
    private static final String[] cIz = { "_data" };
    private final ContentResolver cIv;
    
    public a(ContentResolver paramContentResolver)
    {
      this.cIv = paramContentResolver;
    }
    
    public final Cursor q(Uri paramUri)
    {
      paramUri = paramUri.getLastPathSegment();
      return this.cIv.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, cIz, "kind = 1 AND image_id = ?", new String[] { paramUri }, null);
    }
  }
  
  public static final class b
    implements d
  {
    private static final String[] cIz = { "_data" };
    private final ContentResolver cIv;
    
    public b(ContentResolver paramContentResolver)
    {
      this.cIv = paramContentResolver;
    }
    
    public final Cursor q(Uri paramUri)
    {
      paramUri = paramUri.getLastPathSegment();
      return this.cIv.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, cIz, "kind = 1 AND video_id = ?", new String[] { paramUri }, null);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */