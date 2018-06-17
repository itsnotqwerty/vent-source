package com.layer.b.d;

import java.nio.ByteBuffer;
import java.util.UUID;

public final class c
  extends com.layer.b.f.c.d
{
  public Long bvQ = null;
  public Long bvR;
  public UUID bvS;
  
  private c() {}
  
  public c(byte paramByte)
  {
    this();
  }
  
  private c(com.layer.b.f.c.d paramd)
  {
    super(paramd);
  }
  
  public c(com.layer.b.f.c.d paramd, byte paramByte)
  {
    this(paramd);
  }
  
  public final void b(UUID paramUUID)
  {
    Object localObject = null;
    if (paramUUID == null)
    {
      paramUUID = null;
      if (paramUUID != null) {
        break label28;
      }
    }
    label28:
    for (paramUUID = (UUID)localObject;; paramUUID = ByteBuffer.wrap(paramUUID))
    {
      this.byi = paramUUID;
      return;
      paramUUID = com.layer.b.e.d.d(paramUUID);
      break;
    }
  }
  
  public final UUID d()
  {
    if (yr()) {
      return com.layer.b.e.d.s(yq());
    }
    return null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof c)) {
        return false;
      }
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (c)paramObject;
      if (this.bvQ != null)
      {
        if (this.bvQ.equals(((c)paramObject).bvQ)) {}
      }
      else {
        while (((c)paramObject).bvQ != null) {
          return false;
        }
      }
      if (this.bvR != null)
      {
        if (this.bvR.equals(((c)paramObject).bvR)) {}
      }
      else {
        while (((c)paramObject).bvR != null) {
          return false;
        }
      }
      if (this.bvS == null) {
        break;
      }
    } while (this.bvS.equals(((c)paramObject).bvS));
    for (;;)
    {
      return false;
      if (((c)paramObject).bvS == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = super.hashCode();
    int i;
    if (this.bvQ != null)
    {
      i = this.bvQ.hashCode();
      if (this.bvR == null) {
        break label76;
      }
    }
    label76:
    for (int j = this.bvR.hashCode();; j = 0)
    {
      if (this.bvS != null) {
        k = this.bvS.hashCode();
      }
      return (j + (i + m * 31) * 31) * 31 + k;
      i = 0;
      break;
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Event{mDatabaseId=").append(this.bvQ).append(", clientId=");
    if (d() != null) {}
    for (String str = d().toString();; str = "null") {
      return str + ", mStreamDatabaseId=" + this.bvR + ", mStreamId=" + this.bvS + "} extends " + super.toString();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/d/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */