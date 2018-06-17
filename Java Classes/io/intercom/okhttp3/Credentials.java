package io.intercom.okhttp3;

import io.intercom.b.f;
import io.intercom.okhttp3.internal.Util;
import java.nio.charset.Charset;

public final class Credentials
{
  public static String basic(String paramString1, String paramString2)
  {
    return basic(paramString1, paramString2, Util.ISO_8859_1);
  }
  
  public static String basic(String paramString1, String paramString2, Charset paramCharset)
  {
    paramString1 = f.a(paramString1 + ":" + paramString2, paramCharset).KF();
    return "Basic " + paramString1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/Credentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */