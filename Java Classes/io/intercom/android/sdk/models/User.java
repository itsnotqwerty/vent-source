package io.intercom.android.sdk.models;

import io.intercom.a.b.a.a.c;
import io.intercom.android.sdk.utilities.NullSafety;

public class User
{
  public static final User NULL = new User();
  @c("anonymous_id")
  private final String anonymousId;
  private final String email;
  @c("intercom_id")
  private final String intercomId;
  @c("user_id")
  private final String userId;
  
  public User()
  {
    this.intercomId = "";
    this.anonymousId = "";
    this.userId = "";
    this.email = "";
  }
  
  User(Builder paramBuilder)
  {
    this.intercomId = NullSafety.valueOrEmpty(paramBuilder.intercom_id);
    this.anonymousId = NullSafety.valueOrEmpty(paramBuilder.anonymous_id);
    this.userId = NullSafety.valueOrEmpty(paramBuilder.user_id);
    this.email = NullSafety.valueOrEmpty(paramBuilder.email);
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
            do
            {
              return bool1;
              bool1 = bool2;
            } while (paramObject == null);
            bool1 = bool2;
          } while (getClass() != paramObject.getClass());
          paramObject = (User)paramObject;
          bool1 = bool2;
        } while (!this.intercomId.equals(((User)paramObject).intercomId));
        bool1 = bool2;
      } while (!this.anonymousId.equals(((User)paramObject).anonymousId));
      bool1 = bool2;
    } while (!this.userId.equals(((User)paramObject).userId));
    return this.email.equals(((User)paramObject).email);
  }
  
  public String getAnonymousId()
  {
    return this.anonymousId;
  }
  
  public String getEmail()
  {
    return this.email;
  }
  
  public String getIntercomId()
  {
    return this.intercomId;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public int hashCode()
  {
    return ((this.intercomId.hashCode() * 31 + this.anonymousId.hashCode()) * 31 + this.userId.hashCode()) * 31 + this.email.hashCode();
  }
  
  public static final class Builder
  {
    String anonymous_id;
    private Avatar.Builder avatar;
    String email;
    String intercom_id;
    String user_id;
    
    public final User build()
    {
      return new User(this);
    }
    
    public final Builder withAnonymousId(String paramString)
    {
      this.anonymous_id = paramString;
      return this;
    }
    
    public final Builder withAvatar(Avatar.Builder paramBuilder)
    {
      this.avatar = paramBuilder;
      return this;
    }
    
    public final Builder withEmail(String paramString)
    {
      this.email = paramString;
      return this;
    }
    
    public final Builder withIntercomId(String paramString)
    {
      this.intercom_id = paramString;
      return this;
    }
    
    public final Builder withUserId(String paramString)
    {
      this.user_id = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/User.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */