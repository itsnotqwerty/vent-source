package com.layer.sdk.policy;

import com.layer.sdk.internal.lsdkf.b;

public abstract class Policy
{
  protected PolicyType a;
  protected String b;
  
  protected Policy(PolicyType paramPolicyType, String paramString)
  {
    this.a = paramPolicyType;
    this.b = paramString;
  }
  
  public static Builder builder(PolicyType paramPolicyType)
  {
    return new Builder(paramPolicyType);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof Policy)) {
        return false;
      }
      paramObject = (Policy)paramObject;
      if (this.a != ((Policy)paramObject).a) {
        return false;
      }
      if (this.b == null) {
        break;
      }
    } while (this.b.equals(((Policy)paramObject).b));
    for (;;)
    {
      return false;
      if (((Policy)paramObject).b == null) {
        break;
      }
    }
  }
  
  public PolicyType getPolicyType()
  {
    return this.a;
  }
  
  public String getSentByUserID()
  {
    return this.b;
  }
  
  public int hashCode()
  {
    int j = this.a.hashCode();
    if (this.b != null) {}
    for (int i = this.b.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public static class Builder
  {
    private String a = null;
    private Policy.PolicyType b;
    
    public Builder(Policy.PolicyType paramPolicyType)
    {
      this.b = paramPolicyType;
    }
    
    public Policy build()
    {
      return new b(this.b, this.a);
    }
    
    public Builder sentByUserId(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
  
  public static enum PolicyType
  {
    BLOCK;
    
    private PolicyType() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/policy/Policy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */