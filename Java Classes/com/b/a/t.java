package com.b.a;

import com.b.a.a.a.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public final class t
{
  public final String[] a;
  
  private t(a parama)
  {
    this.a = ((String[])parama.a.toArray(new String[parama.a.size()]));
  }
  
  public final a Ab()
  {
    a locala = new a();
    Collections.addAll(locala.a, this.a);
    return locala;
  }
  
  public final String a(String paramString)
  {
    String[] arrayOfString = this.a;
    int i = arrayOfString.length - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase(arrayOfString[i])) {
        return arrayOfString[(i + 1)];
      }
      i -= 2;
    }
    return null;
  }
  
  public final Date dH(String paramString)
  {
    paramString = a(paramString);
    if (paramString != null) {
      return f.dE(paramString);
    }
    return null;
  }
  
  public final String dV(int paramInt)
  {
    paramInt *= 2;
    if ((paramInt < 0) || (paramInt >= this.a.length)) {
      return null;
    }
    return this.a[paramInt];
  }
  
  public final String dW(int paramInt)
  {
    paramInt = paramInt * 2 + 1;
    if ((paramInt < 0) || (paramInt >= this.a.length)) {
      return null;
    }
    return this.a[paramInt];
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = this.a.length / 2;
    while (i < j)
    {
      localStringBuilder.append(dV(i)).append(": ").append(dW(i)).append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    final List<String> a = new ArrayList(20);
    
    public final t Ac()
    {
      return new t(this, (byte)0);
    }
    
    public final a M(String paramString1, String paramString2)
    {
      if (paramString1 == null) {
        throw new IllegalArgumentException("name == null");
      }
      if (paramString2 == null) {
        throw new IllegalArgumentException("value == null");
      }
      if ((paramString1.length() == 0) || (paramString1.indexOf(0) != -1) || (paramString2.indexOf(0) != -1)) {
        throw new IllegalArgumentException("Unexpected header: " + paramString1 + ": " + paramString2);
      }
      return N(paramString1, paramString2);
    }
    
    final a N(String paramString1, String paramString2)
    {
      this.a.add(paramString1);
      this.a.add(paramString2.trim());
      return this;
    }
    
    public final a O(String paramString1, String paramString2)
    {
      dI(paramString1);
      M(paramString1, paramString2);
      return this;
    }
    
    public final String c(String paramString)
    {
      int i = this.a.size() - 2;
      while (i >= 0)
      {
        if (paramString.equalsIgnoreCase((String)this.a.get(i))) {
          return (String)this.a.get(i + 1);
        }
        i -= 2;
      }
      return null;
    }
    
    public final a dI(String paramString)
    {
      int j;
      for (int i = 0; i < this.a.size(); i = j + 2)
      {
        j = i;
        if (paramString.equalsIgnoreCase((String)this.a.get(i)))
        {
          this.a.remove(i);
          this.a.remove(i);
          j = i - 2;
        }
      }
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */