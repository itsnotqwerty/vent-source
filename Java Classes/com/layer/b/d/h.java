package com.layer.b.d;

import com.layer.b.e.d;
import com.layer.b.f.c.m;
import com.layer.b.f.c.p;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;

public final class h
  extends m
{
  public Long bwE = null;
  public Integer bwF;
  public Integer bwG;
  public Integer bwH;
  public Integer bwI;
  public Integer bwJ;
  public Integer bwK;
  public Integer bwL;
  private Set<i> bwM = null;
  public boolean y;
  
  public h()
  {
    this((byte)0);
  }
  
  private h(byte paramByte) {}
  
  private h(m paramm)
  {
    super(paramm);
    if (paramm.N())
    {
      this.bwM = new HashSet();
      paramm = paramm.bEP.iterator();
      while (paramm.hasNext())
      {
        p localp = (p)paramm.next();
        this.bwM.add(new i(localp));
      }
    }
  }
  
  public h(m paramm, byte paramByte)
  {
    this(paramm);
  }
  
  public final UUID b()
  {
    if (xG()) {
      return d.s(yZ());
    }
    return null;
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
      this.bEK = paramUUID;
      return;
      paramUUID = d.d(paramUUID);
      break;
    }
  }
  
  public final UUID c()
  {
    if (xm()) {
      return d.s(za());
    }
    return null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof h)) {
        return false;
      }
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (h)paramObject;
      if (this.bwE == null) {
        break;
      }
    } while (this.bwE.equals(((h)paramObject).bwE));
    for (;;)
    {
      return false;
      if (((h)paramObject).bwE == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (this.bwE != null) {}
    for (int i = this.bwE.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public final String toString()
  {
    return "Stream{mDatabaseId=" + this.bwE + ", mMinSyncedSeq=" + this.bwF + ", mMaxSyncedSeq=" + this.bwG + ", mBaseSyncSeq=" + this.bwH + ", mMarkedToFetchHistoricData=" + this.bwI + ", mDeleted=" + this.y + ", mBaseSyncMutationSeq=" + this.bwJ + ", mMinSyncedMutationSeq=" + this.bwK + ", mMaxSyncedMutationSeq=" + this.bwL + "} extends " + super.toString();
  }
  
  public final UUID wV()
  {
    if (ys()) {
      return d.s(zd());
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/d/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */