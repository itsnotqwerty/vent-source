package okhttp3.internal.c;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Pattern;
import okhttp3.internal.c;
import okhttp3.j;
import okhttp3.k;
import okhttp3.p;
import okhttp3.p.a;
import okhttp3.q;
import okhttp3.w;
import okhttp3.y;

public final class e
{
  private static final Pattern PARAMETER = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");
  
  public static void a(k paramk, q paramq, p paramp)
  {
    if (paramk == k.cYM) {}
    while (j.a(paramq, paramp).isEmpty()) {
      return;
    }
    paramk.Md();
  }
  
  public static boolean a(y paramy, p paramp, w paramw)
  {
    paramy = d(paramy.cZo).iterator();
    while (paramy.hasNext())
    {
      String str = (String)paramy.next();
      if (!c.equal(paramp.values(str), paramw.cZo.values(str))) {
        return false;
      }
    }
    return true;
  }
  
  private static Set<String> d(p paramp)
  {
    Object localObject2 = Collections.emptySet();
    int k = paramp.namesAndValues.length / 2;
    int i = 0;
    while (i < k)
    {
      Object localObject3 = localObject2;
      if ("Vary".equalsIgnoreCase(paramp.name(i)))
      {
        localObject3 = paramp.value(i);
        Object localObject1 = localObject2;
        if (((Set)localObject2).isEmpty()) {
          localObject1 = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        }
        localObject2 = ((String)localObject3).split(",");
        int m = localObject2.length;
        int j = 0;
        for (;;)
        {
          localObject3 = localObject1;
          if (j >= m) {
            break;
          }
          ((Set)localObject1).add(localObject2[j].trim());
          j += 1;
        }
      }
      i += 1;
      localObject2 = localObject3;
    }
    return (Set<String>)localObject2;
  }
  
  public static long f(y paramy)
  {
    return stringToLong(paramy.cZo.get("Content-Length"));
  }
  
  public static boolean g(y paramy)
  {
    return d(paramy.cZo).contains("*");
  }
  
  public static p h(y paramy)
  {
    p localp = paramy.cZv.cZt.cZo;
    paramy = d(paramy.cZo);
    if (paramy.isEmpty()) {
      return new p.a().MB();
    }
    p.a locala = new p.a();
    int i = 0;
    int j = localp.namesAndValues.length / 2;
    while (i < j)
    {
      String str = localp.name(i);
      if (paramy.contains(str)) {
        locala.X(str, localp.value(i));
      }
      i += 1;
    }
    return locala.MB();
  }
  
  public static boolean i(y paramy)
  {
    if (paramy.cZt.method.equals("HEAD")) {}
    do
    {
      return false;
      int i = paramy.code;
      if (((i < 100) || (i >= 200)) && (i != 204) && (i != 304)) {
        return true;
      }
    } while ((f(paramy) == -1L) && (!"chunked".equalsIgnoreCase(paramy.header("Transfer-Encoding", null))));
    return true;
  }
  
  public static int parseSeconds(String paramString, int paramInt)
  {
    try
    {
      long l = Long.parseLong(paramString);
      if (l > 2147483647L) {
        return Integer.MAX_VALUE;
      }
      if (l < 0L) {
        return 0;
      }
      return (int)l;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  public static int skipUntil(String paramString1, int paramInt, String paramString2)
  {
    while ((paramInt < paramString1.length()) && (paramString2.indexOf(paramString1.charAt(paramInt)) == -1)) {
      paramInt += 1;
    }
    return paramInt;
  }
  
  public static int skipWhitespace(String paramString, int paramInt)
  {
    while (paramInt < paramString.length())
    {
      int i = paramString.charAt(paramInt);
      if ((i != 32) && (i != 9)) {
        break;
      }
      paramInt += 1;
    }
    return paramInt;
  }
  
  private static long stringToLong(String paramString)
  {
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */