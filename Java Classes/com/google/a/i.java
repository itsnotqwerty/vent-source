package com.google.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class i
  extends k
  implements Iterable<k>
{
  private final List<k> bgS = new ArrayList();
  
  public final void a(k paramk)
  {
    Object localObject = paramk;
    if (paramk == null) {
      localObject = m.bgT;
    }
    this.bgS.add(localObject);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof i)) && (((i)paramObject).bgS.equals(this.bgS)));
  }
  
  public final boolean getAsBoolean()
  {
    if (this.bgS.size() == 1) {
      return ((k)this.bgS.get(0)).getAsBoolean();
    }
    throw new IllegalStateException();
  }
  
  public final double getAsDouble()
  {
    if (this.bgS.size() == 1) {
      return ((k)this.bgS.get(0)).getAsDouble();
    }
    throw new IllegalStateException();
  }
  
  public final int getAsInt()
  {
    if (this.bgS.size() == 1) {
      return ((k)this.bgS.get(0)).getAsInt();
    }
    throw new IllegalStateException();
  }
  
  public final long getAsLong()
  {
    if (this.bgS.size() == 1) {
      return ((k)this.bgS.get(0)).getAsLong();
    }
    throw new IllegalStateException();
  }
  
  public final int hashCode()
  {
    return this.bgS.hashCode();
  }
  
  public final Iterator<k> iterator()
  {
    return this.bgS.iterator();
  }
  
  public final Number ve()
  {
    if (this.bgS.size() == 1) {
      return ((k)this.bgS.get(0)).ve();
    }
    throw new IllegalStateException();
  }
  
  public final String vf()
  {
    if (this.bgS.size() == 1) {
      return ((k)this.bgS.get(0)).vf();
    }
    throw new IllegalStateException();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */