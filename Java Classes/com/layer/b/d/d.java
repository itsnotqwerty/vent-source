package com.layer.b.d;

import com.layer.b.f.a.c;

public final class d
  extends c
{
  public boolean bqW;
  public boolean bvT;
  public Long o;
  
  public d()
  {
    this(null);
  }
  
  private d(c paramc)
  {
    super(paramc);
    this.o = null;
  }
  
  public d(c paramc, byte paramByte)
  {
    this(paramc);
  }
  
  public d(Long paramLong)
  {
    this.o = paramLong;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof d)) {
        return false;
      }
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (d)paramObject;
      if (this.o == null) {
        break;
      }
    } while (this.o.equals(((d)paramObject).o));
    for (;;)
    {
      return false;
      if (((d)paramObject).o == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (this.o != null) {}
    for (int i = this.o.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public final String toString()
  {
    return "Identity{mDatabaseId=" + this.o + ", mFollowed=" + this.bqW + ", mSyncableChange=" + this.bvT + "} extends " + super.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/d/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */