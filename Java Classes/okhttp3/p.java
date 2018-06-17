package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.c;

public final class p
{
  public final String[] namesAndValues;
  
  p(a parama)
  {
    this.namesAndValues = ((String[])parama.namesAndValues.toArray(new String[parama.namesAndValues.size()]));
  }
  
  public final a MA()
  {
    a locala = new a();
    Collections.addAll(locala.namesAndValues, this.namesAndValues);
    return locala;
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    return ((paramObject instanceof p)) && (Arrays.equals(((p)paramObject).namesAndValues, this.namesAndValues));
  }
  
  @Nullable
  public final String get(String paramString)
  {
    String[] arrayOfString = this.namesAndValues;
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
  
  public final int hashCode()
  {
    return Arrays.hashCode(this.namesAndValues);
  }
  
  public final String name(int paramInt)
  {
    return this.namesAndValues[(paramInt * 2)];
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = this.namesAndValues.length / 2;
    while (i < j)
    {
      localStringBuilder.append(name(i)).append(": ").append(value(i)).append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public final String value(int paramInt)
  {
    return this.namesAndValues[(paramInt * 2 + 1)];
  }
  
  public final List<String> values(String paramString)
  {
    Object localObject1 = null;
    int i = 0;
    int j = this.namesAndValues.length / 2;
    while (i < j)
    {
      Object localObject2 = localObject1;
      if (paramString.equalsIgnoreCase(name(i)))
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList(2);
        }
        ((List)localObject2).add(value(i));
      }
      i += 1;
      localObject1 = localObject2;
    }
    if (localObject1 != null) {
      return Collections.unmodifiableList((List)localObject1);
    }
    return Collections.emptyList();
  }
  
  public static final class a
  {
    final List<String> namesAndValues = new ArrayList(20);
    
    static void checkNameAndValue(String paramString1, String paramString2)
    {
      if (paramString1 == null) {
        throw new NullPointerException("name == null");
      }
      if (paramString1.isEmpty()) {
        throw new IllegalArgumentException("name is empty");
      }
      int j = paramString1.length();
      int i = 0;
      int k;
      while (i < j)
      {
        k = paramString1.charAt(i);
        if ((k <= 32) || (k >= 127)) {
          throw new IllegalArgumentException(c.format("Unexpected char %#04x at %d in header name: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(i), paramString1 }));
        }
        i += 1;
      }
      if (paramString2 == null) {
        throw new NullPointerException("value for name " + paramString1 + " == null");
      }
      j = paramString2.length();
      i = 0;
      while (i < j)
      {
        k = paramString2.charAt(i);
        if (((k <= 31) && (k != 9)) || (k >= 127)) {
          throw new IllegalArgumentException(c.format("Unexpected char %#04x at %d in %s value: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(i), paramString1, paramString2 }));
        }
        i += 1;
      }
    }
    
    public final p MB()
    {
      return new p(this);
    }
    
    public final a X(String paramString1, String paramString2)
    {
      checkNameAndValue(paramString1, paramString2);
      return Y(paramString1, paramString2);
    }
    
    final a Y(String paramString1, String paramString2)
    {
      this.namesAndValues.add(paramString1);
      this.namesAndValues.add(paramString2.trim());
      return this;
    }
    
    final a fr(String paramString)
    {
      int i = paramString.indexOf(":", 1);
      if (i != -1) {
        return Y(paramString.substring(0, i), paramString.substring(i + 1));
      }
      if (paramString.startsWith(":")) {
        return Y("", paramString.substring(1));
      }
      return Y("", paramString);
    }
    
    public final a fs(String paramString)
    {
      int j;
      for (int i = 0; i < this.namesAndValues.size(); i = j + 2)
      {
        j = i;
        if (paramString.equalsIgnoreCase((String)this.namesAndValues.get(i)))
        {
          this.namesAndValues.remove(i);
          this.namesAndValues.remove(i);
          j = i - 2;
        }
      }
      return this;
    }
    
    public final String get(String paramString)
    {
      int i = this.namesAndValues.size() - 2;
      while (i >= 0)
      {
        if (paramString.equalsIgnoreCase((String)this.namesAndValues.get(i))) {
          return (String)this.namesAndValues.get(i + 1);
        }
        i -= 2;
      }
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */