package com.layer.sdk.internal.lsdkd;

import java.util.Iterator;
import java.util.List;

public class c
{
  private List<b> a;
  
  public c(List<b> paramList)
  {
    this.a = paramList;
  }
  
  public List<b> a()
  {
    return this.a;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ChangeEvent@" + hashCode() + ": [");
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(((b)localIterator.next()).toString());
      localStringBuilder.append(" ");
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public static abstract interface a
  {
    public abstract void a(c paramc);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */