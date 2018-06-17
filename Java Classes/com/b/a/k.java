package com.b.a;

import com.b.a.a.i;

public final class k
{
  public final String a;
  public final String b;
  
  public k(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof k)) && (i.a(this.a, ((k)paramObject).a)) && (i.a(this.b, ((k)paramObject).b));
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (this.b != null) {}
    for (int i = this.b.hashCode();; i = 0)
    {
      if (this.a != null) {
        j = this.a.hashCode();
      }
      return (i + 899) * 31 + j;
    }
  }
  
  public final String toString()
  {
    return this.a + " realm=\"" + this.b + "\"";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */