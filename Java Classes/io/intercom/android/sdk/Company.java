package io.intercom.android.sdk;

import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.CustomAttributeValidator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Company
{
  private static final String COMPANY_ID = "id";
  private static final String CREATED_AT = "created_at";
  private static final String CUSTOM_ATTRIBUTES = "custom_attributes";
  private static final String MONTHLY_SPEND = "monthly_spend";
  private static final String NAME = "name";
  private static final String PLAN = "plan";
  private static final Twig TWIG = ;
  private final Map<String, Object> attributes;
  private final Map<String, Object> customAttributes;
  
  Company(Builder paramBuilder)
  {
    this.attributes = paramBuilder.attributes;
    this.customAttributes = paramBuilder.customAttributes;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (paramObject == null);
        bool1 = bool2;
      } while (getClass() != paramObject.getClass());
      paramObject = (Company)paramObject;
      bool1 = bool2;
    } while (!this.attributes.equals(((Company)paramObject).attributes));
    return this.customAttributes.equals(((Company)paramObject).customAttributes);
  }
  
  Map<String, Object> getAttributes()
  {
    if (!this.customAttributes.isEmpty()) {
      this.attributes.put("custom_attributes", this.customAttributes);
    }
    return this.attributes;
  }
  
  public int hashCode()
  {
    return this.attributes.hashCode() * 31 + this.customAttributes.hashCode();
  }
  
  public String toString()
  {
    return "Company{attributes=" + this.attributes + ", customAttributes=" + this.customAttributes + '}';
  }
  
  public static final class Builder
  {
    final Map<String, Object> attributes = new HashMap();
    final Map<String, Object> customAttributes = new HashMap();
    
    public final Company build()
    {
      return new Company(this);
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (this == paramObject) {
        bool1 = true;
      }
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramObject == null);
          bool1 = bool2;
        } while (getClass() != paramObject.getClass());
        paramObject = (Builder)paramObject;
        bool1 = bool2;
      } while (!this.attributes.equals(((Builder)paramObject).attributes));
      return this.customAttributes.equals(((Builder)paramObject).customAttributes);
    }
    
    public final int hashCode()
    {
      return this.attributes.hashCode() * 31 + this.customAttributes.hashCode();
    }
    
    public final String toString()
    {
      return "Builder{attributes=" + this.attributes + ", customAttributes=" + this.customAttributes + '}';
    }
    
    public final Builder withCompanyId(String paramString)
    {
      this.attributes.put("id", paramString);
      return this;
    }
    
    public final Builder withCreatedAt(Long paramLong)
    {
      this.attributes.put("created_at", paramLong);
      return this;
    }
    
    public final Builder withCustomAttribute(String paramString, Object paramObject)
    {
      if (paramString == null)
      {
        Company.TWIG.w("The key you provided was null for the attribute " + paramObject, new Object[0]);
        return this;
      }
      if (CustomAttributeValidator.isValid(paramObject))
      {
        this.customAttributes.put(paramString, paramObject);
        return this;
      }
      Company.TWIG.w("The custom company attribute " + paramString + " was of type " + paramObject.getClass().getSimpleName() + " We only accept the following types: " + CustomAttributeValidator.getAcceptedTypes(), new Object[0]);
      return this;
    }
    
    public final Builder withCustomAttributes(Map<String, ?> paramMap)
    {
      if (paramMap == null) {
        Company.TWIG.w("The map of attributes you provided was null.", new Object[0]);
      }
      for (;;)
      {
        return this;
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          if (CustomAttributeValidator.isValid(localEntry.getValue())) {
            this.customAttributes.put(localEntry.getKey(), localEntry.getValue());
          } else {
            Company.TWIG.w("The custom company attribute " + (String)localEntry.getKey() + " was of type " + localEntry.getClass().getSimpleName() + " We only accept the following types: " + CustomAttributeValidator.getAcceptedTypes(), new Object[0]);
          }
        }
      }
    }
    
    public final Builder withMonthlySpend(Integer paramInteger)
    {
      this.attributes.put("monthly_spend", paramInteger);
      return this;
    }
    
    public final Builder withName(String paramString)
    {
      this.attributes.put("name", paramString);
      return this;
    }
    
    public final Builder withPlan(String paramString)
    {
      this.attributes.put("plan", paramString);
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/Company.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */