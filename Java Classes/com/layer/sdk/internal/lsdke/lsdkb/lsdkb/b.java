package com.layer.sdk.internal.lsdke.lsdkb.lsdkb;

import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class b
  implements Comparable<b>
{
  public static final Pattern b = Pattern.compile("^(\\d+)_?((?<=_)[\\w\\s-]+)?(?<!_)\\.sql$");
  private final String a;
  private final Long c;
  private final String d;
  
  protected b(String paramString)
  {
    String str = paramString.trim();
    int i = str.lastIndexOf(File.separatorChar);
    if (i == -1) {}
    Matcher localMatcher;
    for (paramString = str;; paramString = str.substring(i + 1))
    {
      localMatcher = b.matcher(paramString);
      if (localMatcher.matches()) {
        break;
      }
      throw new IllegalArgumentException("Invalid migration name: " + paramString);
    }
    this.a = str;
    if (localMatcher.groupCount() == 1)
    {
      this.c = Long.valueOf(Long.parseLong(localMatcher.group(1)));
      this.d = null;
      return;
    }
    this.c = Long.valueOf(Long.parseLong(localMatcher.group(1)));
    this.d = localMatcher.group(2);
  }
  
  public int a(b paramb)
  {
    return b().compareTo(paramb.b());
  }
  
  protected String a()
  {
    return this.a;
  }
  
  public Long b()
  {
    return this.c;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    paramObject = (b)paramObject;
    return b().equals(((b)paramObject).b());
  }
  
  public int hashCode()
  {
    return b().hashCode();
  }
  
  public String toString()
  {
    return "Migration{mPath='" + this.a + '\'' + ", mVersion=" + this.c + ", mDescription='" + this.d + '\'' + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkb/lsdkb/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */