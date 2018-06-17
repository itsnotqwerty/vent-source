package com.layer.sdk.internal.lsdkf;

import com.layer.a.c.e;
import com.layer.b.d.k.8;
import com.layer.b.d.k.f;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.policy.Policy;
import com.layer.sdk.policy.Policy.PolicyType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a
  extends com.layer.a.c.a<Void, List<Policy>>
{
  private static final k.a a = com.layer.sdk.internal.lsdkk.k.a(a.class);
  private final com.layer.b.d.k c;
  
  public a(com.layer.b.d.k paramk, Void paramVoid)
  {
    super(paramVoid);
    this.c = paramk;
  }
  
  protected List<Policy> a(Void paramVoid)
    throws Exception
  {
    if (this.c == null) {
      return null;
    }
    try
    {
      Object localObject1 = this.c;
      localObject1 = (Map)new k.f((com.layer.b.d.k)localObject1).a(new Integer[] { Integer.valueOf(200) }).a(new k.8((com.layer.b.d.k)localObject1));
      if (localObject1 != null)
      {
        Object localObject2 = ((Map)localObject1).keySet();
        localObject1 = new ArrayList(((Set)localObject2).size());
        localObject2 = ((Set)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(a, "Server says to block: " + str);
          }
          ((List)localObject1).add(new b(Policy.PolicyType.BLOCK, str));
        }
      }
      return new ArrayList();
    }
    catch (Exception localException)
    {
      a(new e(this, paramVoid, localException.getMessage(), localException));
    }
    return localException;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkf/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */