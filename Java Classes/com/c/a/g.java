package com.c.a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

class g
  extends y
{
  final Context context;
  
  g(Context paramContext)
  {
    this.context = paramContext;
  }
  
  public y.a a(w paramw, int paramInt)
    throws IOException
  {
    return new y.a(b(paramw), t.d.bOo);
  }
  
  public boolean a(w paramw)
  {
    return "content".equals(paramw.uri.getScheme());
  }
  
  final InputStream b(w paramw)
    throws FileNotFoundException
  {
    return this.context.getContentResolver().openInputStream(paramw.uri);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */