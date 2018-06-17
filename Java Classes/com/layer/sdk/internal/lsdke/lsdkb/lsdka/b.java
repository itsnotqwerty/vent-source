package com.layer.sdk.internal.lsdke.lsdkb.lsdka;

import android.content.Context;
import com.layer.sdk.internal.lsdke.lsdkb.lsdkb.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

public class b
  implements a
{
  private final Context a;
  private final String b;
  private final String c;
  
  public b(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (!a(paramContext, paramString1))) {
      throw new IllegalArgumentException("Could not find schema path: '" + paramString1 + "'");
    }
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramString2;
  }
  
  private static int a(String paramString, char paramChar)
  {
    int j = 0;
    int i = 0;
    if (j < paramString.length())
    {
      if (paramString.charAt(j) != paramChar) {
        break label34;
      }
      i += 1;
    }
    label34:
    for (;;)
    {
      j += 1;
      break;
      return i;
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.getClassLoader().getResource(paramString) != null;
  }
  
  public static InputStream b(Context paramContext, String paramString)
  {
    return paramContext.getClassLoader().getResourceAsStream(paramString);
  }
  
  public boolean a()
  {
    return b() != null;
  }
  
  public com.layer.sdk.internal.lsdke.lsdkb.lsdkc.b b()
  {
    if (this.b == null) {
      return null;
    }
    return new com.layer.sdk.internal.lsdke.lsdkb.lsdkc.a(this.a, this.b);
  }
  
  public List<com.layer.sdk.internal.lsdke.lsdkb.lsdkb.b> c()
    throws URISyntaxException, IOException
  {
    if (this.c == null) {
      return new ArrayList();
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Enumeration localEnumeration1 = this.a.getClassLoader().getResources(this.b);
    while (localEnumeration1.hasMoreElements())
    {
      Object localObject1 = (URL)localEnumeration1.nextElement();
      Object localObject2 = ((URL)localObject1).openConnection();
      ((URLConnection)localObject2).setUseCaches(false);
      if ((localObject2 instanceof JarURLConnection))
      {
        localObject2 = (JarURLConnection)localObject2;
        localObject1 = null;
        try
        {
          localObject2 = ((JarURLConnection)localObject2).getJarFile();
          localObject1 = localObject2;
          Enumeration localEnumeration2 = ((JarFile)localObject2).entries();
          for (;;)
          {
            localObject1 = localObject2;
            if (!localEnumeration2.hasMoreElements()) {
              break;
            }
            localObject1 = localObject2;
            String str2 = ((JarEntry)localEnumeration2.nextElement()).getName();
            localObject1 = localObject2;
            if (str2.startsWith(this.c))
            {
              localObject1 = localObject2;
              if (!localLinkedHashMap.containsKey(str2))
              {
                localObject1 = localObject2;
                localLinkedHashMap.put(str2, new c(this.a, str2));
              }
            }
          }
          if (localObject3 == null) {
            continue;
          }
        }
        finally
        {
          if (localObject1 != null) {
            ((JarFile)localObject1).close();
          }
        }
        ((JarFile)localObject3).close();
      }
      else
      {
        localObject1 = new File(((URL)localObject1).toURI());
        int j = a(this.b, File.separatorChar);
        int i = 0;
        while (i < j + 1)
        {
          localObject1 = ((File)localObject1).getParentFile();
          i += 1;
        }
        localObject1 = new File((File)localObject1, this.c).listFiles();
        j = localObject1.length;
        i = 0;
        while (i < j)
        {
          String str1 = localObject1[i];
          str1 = this.c + File.separatorChar + str1.getName();
          if (!localLinkedHashMap.containsKey(str1)) {
            localLinkedHashMap.put(str1, new c(this.a, str1));
          }
          i += 1;
        }
      }
    }
    return new ArrayList(localLinkedHashMap.values());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkb/lsdka/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */