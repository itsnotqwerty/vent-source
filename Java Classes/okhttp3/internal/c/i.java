package okhttp3.internal.c;

import okhttp3.q;

public final class i
{
  public static String d(q paramq)
  {
    String str1 = paramq.encodedPath();
    String str2 = paramq.encodedQuery();
    paramq = str1;
    if (str2 != null) {
      paramq = str1 + '?' + str2;
    }
    return paramq;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */