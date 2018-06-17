package io.intercom.android.sdk;

import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.CustomAttributeValidator;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class UserAttributes
{
  private static final String COMPANIES = "companies";
  private static final String CUSTOM_ATTRIBUTES = "custom_attributes";
  private static final String EMAIL = "email";
  private static final String LANGUAGE_OVERRIDE = "language_override";
  private static final String NAME = "name";
  private static final String PHONE = "phone";
  private static final String SIGNED_UP_AT = "signed_up_at";
  private static final Twig TWIG = ;
  private static final String UNSUBSCRIBED_FROM_EMAILS = "unsubscribed_from_emails";
  private static final String USER_ID = "user_id";
  private final Map<String, Object> attributes;
  private final List<Map<String, Object>> companies;
  private final Map<String, Object> customAttributes;
  
  UserAttributes(Builder paramBuilder)
  {
    this.attributes = paramBuilder.attributes;
    this.customAttributes = paramBuilder.customAttributes;
    this.companies = paramBuilder.companies;
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
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramObject == null);
          bool1 = bool2;
        } while (getClass() != paramObject.getClass());
        paramObject = (UserAttributes)paramObject;
        bool1 = bool2;
      } while (!this.attributes.equals(((UserAttributes)paramObject).attributes));
      bool1 = bool2;
    } while (!this.customAttributes.equals(((UserAttributes)paramObject).customAttributes));
    return this.companies.equals(((UserAttributes)paramObject).companies);
  }
  
  public int hashCode()
  {
    return (this.attributes.hashCode() * 31 + this.customAttributes.hashCode()) * 31 + this.companies.hashCode();
  }
  
  public boolean isEmpty()
  {
    return (this.attributes.isEmpty()) && (this.customAttributes.isEmpty()) && (this.companies.isEmpty());
  }
  
  public Map<String, Object> toMap()
  {
    if (!this.customAttributes.isEmpty()) {
      this.attributes.put("custom_attributes", this.customAttributes);
    }
    if (!this.companies.isEmpty()) {
      this.attributes.put("companies", this.companies);
    }
    return this.attributes;
  }
  
  public String toString()
  {
    return "UserAttributes{attributes=" + this.attributes + ", customAttributes=" + this.customAttributes + ", companies=" + this.companies + '}';
  }
  
  public static final class Builder
  {
    final Map<String, Object> attributes = new HashMap();
    final List<Map<String, Object>> companies = new ArrayList();
    final Map<String, Object> customAttributes = new HashMap();
    
    public final UserAttributes build()
    {
      return new UserAttributes(this);
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
        bool1 = bool2;
      } while (!this.customAttributes.equals(((Builder)paramObject).customAttributes));
      return this.companies.equals(((Builder)paramObject).companies);
    }
    
    public final int hashCode()
    {
      return (this.attributes.hashCode() * 31 + this.customAttributes.hashCode()) * 31 + this.companies.hashCode();
    }
    
    public final String toString()
    {
      return "Builder{attributes=" + this.attributes + ", customAttributes=" + this.customAttributes + ", companies=" + this.companies + '}';
    }
    
    public final Builder withCompany(Company paramCompany)
    {
      if (paramCompany == null)
      {
        UserAttributes.TWIG.w("The company you provided was null", new Object[0]);
        return this;
      }
      this.companies.add(paramCompany.getAttributes());
      return this;
    }
    
    public final Builder withCustomAttribute(String paramString, Object paramObject)
    {
      if (paramString == null)
      {
        UserAttributes.TWIG.w("The key you provided was null for the attribute " + paramObject, new Object[0]);
        return this;
      }
      if (CustomAttributeValidator.isValid(paramObject))
      {
        this.customAttributes.put(paramString, paramObject);
        return this;
      }
      UserAttributes.TWIG.w("The custom user attribute " + paramString + " was of type " + paramObject.getClass().getSimpleName() + " We only accept the following types: " + CustomAttributeValidator.getAcceptedTypes(), new Object[0]);
      return this;
    }
    
    public final Builder withCustomAttributes(Map<String, ?> paramMap)
    {
      if (paramMap == null) {
        UserAttributes.TWIG.w("The map of attributes you provided was null.", new Object[0]);
      }
      for (;;)
      {
        return this;
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          Object localObject = localEntry.getValue();
          if (CustomAttributeValidator.isValid(localObject)) {
            this.customAttributes.put(localEntry.getKey(), localObject);
          } else {
            UserAttributes.TWIG.w("The custom user attribute " + (String)localEntry.getKey() + " was of type " + localObject.getClass().getSimpleName() + " We only accept the following types: " + CustomAttributeValidator.getAcceptedTypes(), new Object[0]);
          }
        }
      }
    }
    
    public final Builder withEmail(String paramString)
    {
      this.attributes.put("email", paramString);
      return this;
    }
    
    public final Builder withLanguageOverride(String paramString)
    {
      this.attributes.put("language_override", paramString);
      return this;
    }
    
    public final Builder withName(String paramString)
    {
      this.attributes.put("name", paramString);
      return this;
    }
    
    public final Builder withPhone(String paramString)
    {
      this.attributes.put("phone", paramString);
      return this;
    }
    
    public final Builder withSignedUpAt(Long paramLong)
    {
      this.attributes.put("signed_up_at", paramLong);
      return this;
    }
    
    public final Builder withSignedUpAt(Date paramDate)
    {
      if (paramDate == null) {}
      for (paramDate = null;; paramDate = Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(paramDate.getTime()))) {
        return withSignedUpAt(paramDate);
      }
    }
    
    public final Builder withUnsubscribedFromEmails(Boolean paramBoolean)
    {
      this.attributes.put("unsubscribed_from_emails", paramBoolean);
      return this;
    }
    
    public final Builder withUserId(String paramString)
    {
      this.attributes.put("user_id", paramString);
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/UserAttributes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */