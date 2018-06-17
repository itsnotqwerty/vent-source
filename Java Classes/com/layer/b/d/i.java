package com.layer.b.d;

import com.layer.b.e.d;
import com.layer.b.f.c.p;
import java.nio.ByteBuffer;
import java.util.UUID;

public final class i
  extends p
{
  public Long bwN;
  public Long bwO;
  public Long bwP;
  public String k;
  public String l;
  
  public i() {}
  
  public i(p paramp)
  {
    super(paramp);
  }
  
  public final void a(UUID paramUUID)
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
      this.bzl = paramUUID;
      return;
      paramUUID = d.d(paramUUID);
      break;
    }
  }
  
  public final String toString()
  {
    return "SyncUserMutation{mDatabaseId=" + this.bwN + ", mConversationObjectIdentifier='" + this.k + '\'' + ", mMessageObjectIdentifier='" + this.l + '\'' + ", mEventDbId=" + this.bwO + ", mStreamDbId=" + this.bwP + "} extends " + super.toString();
  }
  
  public final UUID wV()
  {
    if (xj()) {
      return d.s(zl());
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/d/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */