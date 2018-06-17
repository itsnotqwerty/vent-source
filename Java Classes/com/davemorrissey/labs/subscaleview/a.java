package com.davemorrissey.labs.subscaleview;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public final class a
{
  final Bitmap avo;
  final Integer avp;
  boolean avq;
  int avr;
  int avs;
  Rect avt;
  boolean avu;
  final Uri uri;
  
  a(int paramInt)
  {
    this.avo = null;
    this.uri = null;
    this.avp = Integer.valueOf(paramInt);
    this.avq = true;
  }
  
  private a(Uri paramUri)
  {
    String str = paramUri.toString();
    Uri localUri1 = paramUri;
    if (str.startsWith("file:///"))
    {
      localUri1 = paramUri;
      if (new File(str.substring(7)).exists()) {}
    }
    try
    {
      localUri1 = Uri.parse(URLDecoder.decode(str, "UTF-8"));
      this.avo = null;
      this.uri = localUri1;
      this.avp = null;
      this.avq = true;
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        Uri localUri2 = paramUri;
      }
    }
  }
  
  public static a aH(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("Uri must not be null");
    }
    String str = paramString;
    if (!paramString.contains("://"))
    {
      str = paramString;
      if (paramString.startsWith("/")) {
        str = paramString.substring(1);
      }
      str = "file:///" + str;
    }
    return new a(Uri.parse(str));
  }
  
  public static a i(Uri paramUri)
  {
    if (paramUri == null) {
      throw new NullPointerException("Uri must not be null");
    }
    return new a(paramUri);
  }
  
  public final a as(int paramInt1, int paramInt2)
  {
    if (this.avo == null)
    {
      this.avr = paramInt1;
      this.avs = paramInt2;
    }
    if (this.avt != null)
    {
      this.avq = true;
      this.avr = this.avt.width();
      this.avs = this.avt.height();
    }
    return this;
  }
  
  public final a km()
  {
    this.avq = true;
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/davemorrissey/labs/subscaleview/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */