package io.intercom.a.a.a.c;

import io.intercom.a.a.a.i.h;
import java.security.MessageDigest;

public final class i<T>
{
  private static final a<Object> cIc = new a()
  {
    public final void a(byte[] paramAnonymousArrayOfByte, Object paramAnonymousObject, MessageDigest paramAnonymousMessageDigest) {}
  };
  final T cId;
  final a<T> cIe;
  volatile byte[] cIf;
  final String key;
  
  private i(String paramString, T paramT, a<T> parama)
  {
    this.key = h.fc(paramString);
    this.cId = paramT;
    this.cIe = ((a)h.checkNotNull(parama, "Argument must not be null"));
  }
  
  public static <T> i<T> a(String paramString, T paramT, a<T> parama)
  {
    return new i(paramString, paramT, parama);
  }
  
  public static <T> i<T> eW(String paramString)
  {
    return new i(paramString, null, cIc);
  }
  
  public static <T> i<T> n(String paramString, T paramT)
  {
    return new i(paramString, paramT, cIc);
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof i))
    {
      paramObject = (i)paramObject;
      return this.key.equals(((i)paramObject).key);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return this.key.hashCode();
  }
  
  public final String toString()
  {
    return "Option{key='" + this.key + '\'' + '}';
  }
  
  public static abstract interface a<T>
  {
    public abstract void a(byte[] paramArrayOfByte, T paramT, MessageDigest paramMessageDigest);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */