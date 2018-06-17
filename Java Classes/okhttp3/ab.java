package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public enum ab
{
  final String javaName;
  
  private ab(String paramString)
  {
    this.javaName = paramString;
  }
  
  public static ab fA(String paramString)
  {
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        throw new IllegalArgumentException("Unexpected TLS version: " + paramString);
        if (paramString.equals("TLSv1.3"))
        {
          i = 0;
          continue;
          if (paramString.equals("TLSv1.2"))
          {
            i = 1;
            continue;
            if (paramString.equals("TLSv1.1"))
            {
              i = 2;
              continue;
              if (paramString.equals("TLSv1"))
              {
                i = 3;
                continue;
                if (paramString.equals("SSLv3")) {
                  i = 4;
                }
              }
            }
          }
        }
        break;
      }
    }
    return cZA;
    return cZB;
    return cZC;
    return cZD;
    return cZE;
  }
  
  static List<ab> forJavaNames(String... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(fA(paramVarArgs[i]));
      i += 1;
    }
    return Collections.unmodifiableList(localArrayList);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */