package io.intercom.android.sdk.identity;

import android.text.TextUtils;
import com.google.auto.value.AutoValue;

@AutoValue
abstract class SoftUserIdentity
{
  static final SoftUserIdentity NONE = create("", "", "", "", "", "", "");
  
  static SoftUserIdentity create(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    return new AutoValue_SoftUserIdentity(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7);
  }
  
  abstract String anonymousId();
  
  abstract String data();
  
  abstract String email();
  
  abstract String fingerprint();
  
  abstract String hmac();
  
  abstract String intercomId();
  
  boolean isPresent()
  {
    return !equals(NONE);
  }
  
  boolean isSameUser(Registration paramRegistration)
  {
    String str = paramRegistration.getUserId();
    paramRegistration = paramRegistration.getEmail();
    boolean bool1;
    boolean bool2;
    if ((!TextUtils.isEmpty(str)) || (!TextUtils.isEmpty(paramRegistration)))
    {
      bool1 = true;
      bool2 = bool1;
      if (!TextUtils.isEmpty(str))
      {
        if ((!bool1) || (!str.equals(userId()))) {
          break label85;
        }
        bool2 = true;
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramRegistration))
      {
        if ((bool2) && (paramRegistration.equals(email())))
        {
          return true;
          bool1 = false;
          break;
          label85:
          bool2 = false;
          continue;
        }
        return false;
      }
    }
    return bool2;
  }
  
  abstract String userId();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/identity/SoftUserIdentity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */