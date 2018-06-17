package io.intercom.okhttp3.internal.http2;

import io.intercom.b.f;
import io.intercom.okhttp3.internal.Util;

public final class Header
{
  public static final f PSEUDO_PREFIX = f.fh(":");
  public static final f RESPONSE_STATUS = f.fh(":status");
  public static final f TARGET_AUTHORITY = f.fh(":authority");
  public static final f TARGET_METHOD = f.fh(":method");
  public static final f TARGET_PATH = f.fh(":path");
  public static final f TARGET_SCHEME = f.fh(":scheme");
  final int hpackSize;
  public final f name;
  public final f value;
  
  public Header(f paramf1, f paramf2)
  {
    this.name = paramf1;
    this.value = paramf2;
    this.hpackSize = (paramf1.size() + 32 + paramf2.size());
  }
  
  public Header(f paramf, String paramString)
  {
    this(paramf, f.fh(paramString));
  }
  
  public Header(String paramString1, String paramString2)
  {
    this(f.fh(paramString1), f.fh(paramString2));
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Header))
    {
      paramObject = (Header)paramObject;
      bool1 = bool2;
      if (this.name.equals(((Header)paramObject).name))
      {
        bool1 = bool2;
        if (this.value.equals(((Header)paramObject).value)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return (this.name.hashCode() + 527) * 31 + this.value.hashCode();
  }
  
  public final String toString()
  {
    return Util.format("%s: %s", new Object[] { this.name.KE(), this.value.KE() });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/internal/http2/Header.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */