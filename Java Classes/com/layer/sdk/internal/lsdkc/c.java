package com.layer.sdk.internal.lsdkc;

import com.layer.sdk.internal.a;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class c
  implements f
{
  private final Object a = new Object();
  private Set<String> b = new HashSet(Arrays.asList(a.a));
  private long c = 2048L;
  private long d = 0L;
  
  public f a(long paramLong)
  {
    synchronized (this.a)
    {
      this.c = Math.max(2048L, paramLong);
      return this;
    }
  }
  
  public f a(Collection<String> paramCollection)
  {
    localObject = this.a;
    if (paramCollection == null) {}
    for (paramCollection = null;; paramCollection = new HashSet(paramCollection)) {
      try
      {
        this.b = paramCollection;
        return this;
      }
      finally {}
    }
  }
  
  public Set<String> a()
  {
    synchronized (this.a)
    {
      if (this.b == null)
      {
        localObject1 = null;
        return (Set<String>)localObject1;
      }
      Object localObject1 = new HashSet(this.b);
    }
  }
  
  public long b()
  {
    synchronized (this.a)
    {
      long l = this.c;
      return l;
    }
  }
  
  public f b(long paramLong)
  {
    synchronized (this.a)
    {
      this.d = paramLong;
      return this;
    }
  }
  
  public long c()
  {
    synchronized (this.a)
    {
      long l = this.d;
      return l;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkc/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */