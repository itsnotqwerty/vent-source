package io.intercom.a.a.a.c.a;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import java.io.InputStream;

public final class l
  extends j<InputStream>
{
  private static final UriMatcher cIw;
  
  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    cIw = localUriMatcher;
    localUriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
    cIw.addURI("com.android.contacts", "contacts/lookup/*", 1);
    cIw.addURI("com.android.contacts", "contacts/#/photo", 2);
    cIw.addURI("com.android.contacts", "contacts/#", 3);
    cIw.addURI("com.android.contacts", "contacts/#/display_photo", 4);
    cIw.addURI("com.android.contacts", "phone_lookup/*", 5);
  }
  
  public l(ContentResolver paramContentResolver, Uri paramUri)
  {
    super(paramContentResolver, paramUri);
  }
  
  public final Class<InputStream> HU()
  {
    return InputStream.class;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */