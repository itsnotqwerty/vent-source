package com.layer.sdk.internal.lsdkf;

import com.layer.sdk.policy.Policy;
import com.layer.sdk.policy.Policy.PolicyType;
import java.util.ArrayList;

public class b
  extends Policy
{
  private ArrayList<Object> c = new ArrayList();
  
  public b(Policy.PolicyType paramPolicyType, String paramString)
  {
    super(Policy.PolicyType.BLOCK, paramString);
    if (paramString != null)
    {
      paramString = new a(this);
      this.c.add(paramString);
    }
    switch (1.bqe[paramPolicyType.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Don't know how to handle type " + paramPolicyType.toString());
    }
  }
  
  public Policy.PolicyType getPolicyType()
  {
    return this.a;
  }
  
  final class a
  {
    b brZ;
    
    public a(b paramb)
    {
      this.brZ = paramb;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkf/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */