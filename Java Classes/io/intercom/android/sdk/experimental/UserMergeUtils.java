package io.intercom.android.sdk.experimental;

import io.intercom.android.sdk.identity.Registration;
import java.util.Map;

class UserMergeUtils
{
  private static final String EMAIL = "email";
  private static final String USER_ID = "user_id";
  
  static void addIdentityDataToRegistration(Registration paramRegistration, Map<String, Object> paramMap)
  {
    if (paramMap.containsKey("email")) {
      paramRegistration.withEmail(paramMap.get("email").toString());
    }
    if (paramMap.containsKey("user_id")) {
      paramRegistration.withUserId(paramMap.get("user_id").toString());
    }
  }
  
  static boolean hasIdentificationData(Map<String, Object> paramMap)
  {
    return (paramMap.containsKey("email")) || (paramMap.containsKey("user_id"));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/experimental/UserMergeUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */