package io.intercom.a.b.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
  extends i
  implements Iterable<i>
{
  private final List<i> bgS = new ArrayList();
  
  public final void a(i parami)
  {
    Object localObject = parami;
    if (parami == null) {
      localObject = k.cRt;
    }
    this.bgS.add(localObject);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof g)) && (((g)paramObject).bgS.equals(this.bgS)));
  }
  
  public final boolean getAsBoolean()
  {
    if (this.bgS.size() == 1) {
      return ((i)this.bgS.get(0)).getAsBoolean();
    }
    throw new IllegalStateException();
  }
  
  public final double getAsDouble()
  {
    if (this.bgS.size() == 1) {
      return ((i)this.bgS.get(0)).getAsDouble();
    }
    throw new IllegalStateException();
  }
  
  public final int getAsInt()
  {
    if (this.bgS.size() == 1) {
      return ((i)this.bgS.get(0)).getAsInt();
    }
    throw new IllegalStateException();
  }
  
  public final long getAsLong()
  {
    if (this.bgS.size() == 1) {
      return ((i)this.bgS.get(0)).getAsLong();
    }
    throw new IllegalStateException();
  }
  
  public final int hashCode()
  {
    return this.bgS.hashCode();
  }
  
  public final Iterator<i> iterator()
  {
    return this.bgS.iterator();
  }
  
  public final Number ve()
  {
    if (this.bgS.size() == 1) {
      return ((i)this.bgS.get(0)).ve();
    }
    throw new IllegalStateException();
  }
  
  public final String vf()
  {
    if (this.bgS.size() == 1) {
      return ((i)this.bgS.get(0)).vf();
    }
    throw new IllegalStateException();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */