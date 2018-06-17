package io.intercom.a.a.a.c;

import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.d.a.q;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public final class g
{
  public static f.a a(List<f> paramList, InputStream paramInputStream, b paramb)
    throws IOException
  {
    if (paramInputStream == null) {
      return f.a.cHY;
    }
    Object localObject = paramInputStream;
    if (!paramInputStream.markSupported()) {
      localObject = new q(paramInputStream, paramb);
    }
    ((InputStream)localObject).mark(5242880);
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      paramInputStream = (f)paramList.get(i);
      try
      {
        paramInputStream = paramInputStream.p((InputStream)localObject);
        paramb = f.a.cHY;
        if (paramInputStream != paramb) {
          return paramInputStream;
        }
        ((InputStream)localObject).reset();
        i += 1;
      }
      finally
      {
        ((InputStream)localObject).reset();
      }
    }
    return f.a.cHY;
  }
  
  public static int b(List<f> paramList, InputStream paramInputStream, b paramb)
    throws IOException
  {
    if (paramInputStream == null) {
      return -1;
    }
    Object localObject = paramInputStream;
    if (!paramInputStream.markSupported()) {
      localObject = new q(paramInputStream, paramb);
    }
    ((InputStream)localObject).mark(5242880);
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      paramInputStream = (f)paramList.get(i);
      try
      {
        int k = paramInputStream.a((InputStream)localObject, paramb);
        if (k != -1) {
          return k;
        }
        ((InputStream)localObject).reset();
        i += 1;
      }
      finally
      {
        ((InputStream)localObject).reset();
      }
    }
    return -1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */