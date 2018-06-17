package com.google.ads.consent;

import com.google.a.a.c;

public class AdProvider
{
  @c("company_id")
  String id;
  @c("company_name")
  private String name;
  @c("policy_url")
  private String privacyPolicyUrlString;
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (AdProvider)paramObject;
    } while ((this.id.equals(((AdProvider)paramObject).id)) && (this.name.equals(((AdProvider)paramObject).name)) && (this.privacyPolicyUrlString.equals(((AdProvider)paramObject).privacyPolicyUrlString)));
    return false;
  }
  
  public int hashCode()
  {
    return (this.id.hashCode() * 31 + this.name.hashCode()) * 31 + this.privacyPolicyUrlString.hashCode();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/consent/AdProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */