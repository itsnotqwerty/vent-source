package io.intercom.android.sdk.utilities;

import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.util.Map;

public class AttributeSanitiser
{
  private static final String EMAIL = "email";
  private static final String USER_ID = "user_id";
  private static final Twig twig = ;
  
  public static void anonymousSanitisation(Map<String, ?> paramMap)
  {
    if (paramMap.containsKey("email"))
    {
      Object localObject = paramMap.remove("email");
      twig.e(String.format("You cannot update the email of an anonymous user. Please call registerIdentified user instead. The email: %s was NOT applied", new Object[] { localObject }), new Object[0]);
    }
    if (paramMap.containsKey("user_id"))
    {
      paramMap = paramMap.remove("user_id");
      twig.e(String.format("You cannot update the user_id of an anonymous user. Please call registerIdentified user instead. The user_id: %s was NOT applied", new Object[] { paramMap }), new Object[0]);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/AttributeSanitiser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */