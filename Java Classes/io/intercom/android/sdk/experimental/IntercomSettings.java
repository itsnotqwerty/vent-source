package io.intercom.android.sdk.experimental;

import android.text.TextUtils;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class IntercomSettings
{
  private String apiKey = "";
  private String appId = "";
  private String email = "";
  private final Twig twig = LumberMill.getLogger();
  private String userHash = "";
  private String userId = "";
  
  public static IntercomSettings create()
  {
    return new IntercomSettings();
  }
  
  public boolean canIdentifyUser()
  {
    return (!TextUtils.isEmpty(this.userId)) || (!TextUtils.isEmpty(this.email));
  }
  
  public String getApiKey()
  {
    return this.apiKey;
  }
  
  public String getAppId()
  {
    return this.appId;
  }
  
  public String getEmail()
  {
    return this.email;
  }
  
  public String getUserHash()
  {
    return this.userHash;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public IntercomSettings withApiKey(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    for (int i = 1; i != 0; i = 0)
    {
      this.apiKey = paramString;
      return this;
    }
    this.twig.e("apiKey cannot be null or empty", new Object[0]);
    return this;
  }
  
  public IntercomSettings withAppId(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    for (int i = 1; i != 0; i = 0)
    {
      this.appId = paramString;
      return this;
    }
    this.twig.e("appId cannot be null or empty", new Object[0]);
    return this;
  }
  
  public IntercomSettings withEmail(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    for (int i = 1; i != 0; i = 0)
    {
      this.email = paramString;
      return this;
    }
    this.twig.e("email cannot be null or empty", new Object[0]);
    return this;
  }
  
  public IntercomSettings withUserHash(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    for (int i = 1; i != 0; i = 0)
    {
      this.userHash = paramString;
      return this;
    }
    this.twig.e("userHash cannot be null or empty", new Object[0]);
    return this;
  }
  
  public IntercomSettings withUserId(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    for (int i = 1; i != 0; i = 0)
    {
      this.userId = paramString;
      return this;
    }
    this.twig.e("userId cannot be null or empty", new Object[0]);
    return this;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/experimental/IntercomSettings.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */