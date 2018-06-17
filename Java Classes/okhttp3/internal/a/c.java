package okhttp3.internal.a;

import java.util.Date;
import javax.annotation.Nullable;
import okhttp3.internal.c.e;
import okhttp3.p;
import okhttp3.w;
import okhttp3.y;

public final class c
{
  @Nullable
  public final w cZT;
  @Nullable
  public final y cZw;
  
  c(w paramw, y paramy)
  {
    this.cZT = paramw;
    this.cZw = paramy;
  }
  
  public static boolean a(y paramy, w paramw)
  {
    switch (paramy.code)
    {
    }
    do
    {
      return false;
    } while (((paramy.header("Expires", null) == null) && (paramy.MG().maxAgeSeconds == -1) && (!paramy.MG().isPublic) && (!paramy.MG().isPrivate)) || (paramy.MG().noStore) || (paramw.MG().noStore));
    return true;
  }
  
  public static final class a
  {
    int ageSeconds = -1;
    final w cZt;
    final y cZw;
    String etag;
    Date expires;
    Date lastModified;
    String lastModifiedString;
    final long nowMillis;
    long receivedResponseMillis;
    long sentRequestMillis;
    Date servedDate;
    String servedDateString;
    
    public a(long paramLong, w paramw, y paramy)
    {
      this.nowMillis = paramLong;
      this.cZt = paramw;
      this.cZw = paramy;
      if (paramy != null)
      {
        this.sentRequestMillis = paramy.sentRequestAtMillis;
        this.receivedResponseMillis = paramy.receivedResponseAtMillis;
        paramw = paramy.cZo;
        int i = 0;
        int j = paramw.namesAndValues.length / 2;
        if (i < j)
        {
          paramy = paramw.name(i);
          String str = paramw.value(i);
          if ("Date".equalsIgnoreCase(paramy))
          {
            this.servedDate = okhttp3.internal.c.d.parse(str);
            this.servedDateString = str;
          }
          for (;;)
          {
            i += 1;
            break;
            if ("Expires".equalsIgnoreCase(paramy))
            {
              this.expires = okhttp3.internal.c.d.parse(str);
            }
            else if ("Last-Modified".equalsIgnoreCase(paramy))
            {
              this.lastModified = okhttp3.internal.c.d.parse(str);
              this.lastModifiedString = str;
            }
            else if ("ETag".equalsIgnoreCase(paramy))
            {
              this.etag = str;
            }
            else if ("Age".equalsIgnoreCase(paramy))
            {
              this.ageSeconds = e.parseSeconds(str, -1);
            }
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */