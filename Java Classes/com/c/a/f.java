package com.c.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Contacts;
import java.io.IOException;

final class f
  extends y
{
  private static final UriMatcher bNn;
  private final Context context;
  
  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    bNn = localUriMatcher;
    localUriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
    bNn.addURI("com.android.contacts", "contacts/lookup/*", 1);
    bNn.addURI("com.android.contacts", "contacts/#/photo", 2);
    bNn.addURI("com.android.contacts", "contacts/#", 3);
    bNn.addURI("com.android.contacts", "display_photo/#", 4);
  }
  
  f(Context paramContext)
  {
    this.context = paramContext;
  }
  
  public final y.a a(w paramw, int paramInt)
    throws IOException
  {
    ContentResolver localContentResolver = this.context.getContentResolver();
    Uri localUri = paramw.uri;
    paramw = localUri;
    switch (bNn.match(localUri))
    {
    default: 
      throw new IllegalStateException("Invalid uri: " + localUri);
    case 1: 
      localUri = ContactsContract.Contacts.lookupContact(localContentResolver, localUri);
      paramw = localUri;
      if (localUri == null) {
        paramw = null;
      }
      break;
    }
    while (paramw != null)
    {
      return new y.a(paramw, t.d.bOo);
      if (Build.VERSION.SDK_INT < 14)
      {
        paramw = ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, paramw);
      }
      else
      {
        paramw = ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, paramw, true);
        continue;
        paramw = localContentResolver.openInputStream(localUri);
      }
    }
    return null;
  }
  
  public final boolean a(w paramw)
  {
    Uri localUri = paramw.uri;
    return ("content".equals(localUri.getScheme())) && (ContactsContract.Contacts.CONTENT_URI.getHost().equals(localUri.getHost())) && (bNn.match(paramw.uri) != -1);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */