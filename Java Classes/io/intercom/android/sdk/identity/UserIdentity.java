package io.intercom.android.sdk.identity;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import io.intercom.android.sdk.UserAttributes;
import io.intercom.android.sdk.models.User;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class UserIdentity
{
  public static final String ANONYMOUS_ID = "anonymous_id";
  public static final String EMAIL = "email";
  public static final String INTERCOM_ID = "intercom_id";
  private static final String KEY_ANONYMOUS_ID = "INTERCOM_SDK_ANONYMOUS_ID";
  private static final String KEY_EMAIL_ID = "INTERCOM_SDK_EMAIL_ID";
  private static final String KEY_INTERCOM_ID = "INTERCOM_SDK_INTERCOM_ID";
  private static final String KEY_PREFIX = "intercomsdk-session-";
  private static final String KEY_SECURE_DATA = "SecureMode_Data";
  private static final String KEY_SECURE_HMAC = "SecureMode_HMAC";
  private static final String KEY_USER_ID = "INTERCOM_SDK_USER_ID";
  private static final String TYPE = "type";
  private static final String USER = "user";
  private static final String USER_ID = "user_id";
  private String anonymousId;
  private String data;
  private String email;
  private String fingerprint = "";
  private String hmac;
  private String intercomId;
  private final SharedPreferences prefs;
  private SoftUserIdentity softUserIdentity = SoftUserIdentity.NONE;
  private String userId;
  
  public UserIdentity(Context paramContext)
  {
    this.prefs = paramContext.getSharedPreferences("INTERCOM_SDK_USER_PREFS", 0);
    this.anonymousId = this.prefs.getString("intercomsdk-session-INTERCOM_SDK_ANONYMOUS_ID", "");
    this.intercomId = this.prefs.getString("intercomsdk-session-INTERCOM_SDK_INTERCOM_ID", "");
    this.userId = this.prefs.getString("intercomsdk-session-INTERCOM_SDK_USER_ID", "");
    this.email = this.prefs.getString("intercomsdk-session-INTERCOM_SDK_EMAIL_ID", "");
    this.data = this.prefs.getString("intercomsdk-session-SecureMode_Data", "");
    this.hmac = this.prefs.getString("intercomsdk-session-SecureMode_HMAC", "");
    if (identityExists()) {
      this.fingerprint = generateFingerprint();
    }
  }
  
  private String generateFingerprint()
  {
    return UUID.randomUUID().toString();
  }
  
  public boolean canRegisterIdentifiedUser(Registration paramRegistration)
  {
    return (paramRegistration.isValidRegistration()) && (!isIdentified());
  }
  
  public boolean canRegisterUnidentifiedUser()
  {
    return !identityExists();
  }
  
  public String getAnonymousId()
  {
    return this.anonymousId;
  }
  
  public String getData()
  {
    return this.data;
  }
  
  public String getEmail()
  {
    return this.email;
  }
  
  public String getFingerprint()
  {
    return this.fingerprint;
  }
  
  public String getHmac()
  {
    return this.hmac;
  }
  
  public String getIntercomId()
  {
    return this.intercomId;
  }
  
  public String getSoftUserIdentityHmac()
  {
    return this.softUserIdentity.hmac();
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public void hardReset()
  {
    this.softUserIdentity = SoftUserIdentity.NONE;
  }
  
  public boolean hasIntercomId()
  {
    return !getIntercomId().isEmpty();
  }
  
  public boolean identityExists()
  {
    return (!this.email.isEmpty()) || (!this.userId.isEmpty()) || (!this.intercomId.isEmpty()) || (!this.anonymousId.isEmpty());
  }
  
  public boolean isIdentified()
  {
    return (identityExists()) && (!isUnidentified());
  }
  
  public boolean isSameUser(Registration paramRegistration)
  {
    if (isUnidentified()) {
      return false;
    }
    return this.softUserIdentity.isSameUser(paramRegistration);
  }
  
  public boolean isSoftReset()
  {
    return this.softUserIdentity.isPresent();
  }
  
  public boolean isUnidentified()
  {
    return (!this.anonymousId.isEmpty()) && (this.email.isEmpty()) && (this.userId.isEmpty());
  }
  
  public void registerIdentifiedUser(Registration paramRegistration)
  {
    this.intercomId = "";
    SharedPreferences.Editor localEditor = this.prefs.edit().putString("intercomsdk-session-INTERCOM_SDK_INTERCOM_ID", this.intercomId);
    if (!paramRegistration.getUserId().isEmpty())
    {
      this.userId = paramRegistration.getUserId();
      localEditor.putString("intercomsdk-session-INTERCOM_SDK_USER_ID", this.userId);
    }
    if (!paramRegistration.getEmail().isEmpty())
    {
      this.email = paramRegistration.getEmail();
      localEditor.putString("intercomsdk-session-INTERCOM_SDK_EMAIL_ID", this.email);
    }
    localEditor.apply();
    if (this.fingerprint.isEmpty()) {
      this.fingerprint = generateFingerprint();
    }
  }
  
  public void registerUnidentifiedUser()
  {
    this.anonymousId = UUID.randomUUID().toString();
    this.prefs.edit().putString("intercomsdk-session-INTERCOM_SDK_ANONYMOUS_ID", this.anonymousId).apply();
    if (this.fingerprint.isEmpty()) {
      this.fingerprint = generateFingerprint();
    }
  }
  
  public boolean registrationHasAttributes(Registration paramRegistration)
  {
    return (paramRegistration != null) && (paramRegistration.getAttributes() != null) && (!paramRegistration.getAttributes().isEmpty());
  }
  
  public void setSecureMode(String paramString1, String paramString2)
  {
    this.data = paramString2;
    this.hmac = paramString1;
    this.prefs.edit().putString("intercomsdk-session-SecureMode_Data", paramString2).putString("intercomsdk-session-SecureMode_HMAC", paramString1).apply();
  }
  
  public void setUserHash(String paramString)
  {
    this.hmac = paramString;
    this.data = "";
    this.prefs.edit().putString("intercomsdk-session-SecureMode_HMAC", paramString).remove("intercomsdk-session-SecureMode_Data").apply();
  }
  
  public void softReset()
  {
    if (!isSoftReset())
    {
      this.softUserIdentity = SoftUserIdentity.create(this.anonymousId, this.data, this.email, this.fingerprint, this.hmac, this.intercomId, this.userId);
      this.prefs.edit().clear().apply();
      this.anonymousId = "";
      this.intercomId = "";
      this.userId = "";
      this.email = "";
      this.data = "";
      this.hmac = "";
      this.fingerprint = "";
    }
  }
  
  public void softRestart()
  {
    this.userId = this.softUserIdentity.userId();
    this.email = this.softUserIdentity.email();
    this.anonymousId = this.softUserIdentity.anonymousId();
    this.intercomId = this.softUserIdentity.intercomId();
    this.data = this.softUserIdentity.data();
    this.hmac = this.softUserIdentity.hmac();
    this.fingerprint = this.softUserIdentity.fingerprint();
    this.prefs.edit().putString("intercomsdk-session-INTERCOM_SDK_USER_ID", this.userId).putString("intercomsdk-session-INTERCOM_SDK_EMAIL_ID", this.email).putString("intercomsdk-session-INTERCOM_SDK_ANONYMOUS_ID", this.anonymousId).putString("intercomsdk-session-INTERCOM_SDK_INTERCOM_ID", this.intercomId).apply();
    this.softUserIdentity = SoftUserIdentity.NONE;
  }
  
  public boolean softUserIdentityHmacDiffers(String paramString)
  {
    return (this.softUserIdentity.isPresent()) && (!getSoftUserIdentityHmac().equals(paramString));
  }
  
  public Map<String, Object> toMap()
  {
    HashMap localHashMap = new HashMap();
    if (!this.anonymousId.isEmpty()) {
      localHashMap.put("anonymous_id", this.anonymousId);
    }
    for (;;)
    {
      if (!this.userId.isEmpty()) {
        localHashMap.put("user_id", this.userId);
      }
      if (!this.email.isEmpty()) {
        localHashMap.put("email", this.email);
      }
      localHashMap.put("type", "user");
      return localHashMap;
      if (!this.intercomId.isEmpty()) {
        localHashMap.put("intercom_id", this.intercomId);
      }
    }
  }
  
  public void update(User paramUser)
  {
    if (paramUser == User.NULL) {
      return;
    }
    this.userId = paramUser.getUserId();
    this.email = paramUser.getEmail();
    this.anonymousId = paramUser.getAnonymousId();
    SharedPreferences.Editor localEditor = this.prefs.edit().putString("intercomsdk-session-INTERCOM_SDK_USER_ID", this.userId).putString("intercomsdk-session-INTERCOM_SDK_EMAIL_ID", this.email).putString("intercomsdk-session-INTERCOM_SDK_ANONYMOUS_ID", this.anonymousId);
    if (!paramUser.getIntercomId().isEmpty())
    {
      this.intercomId = paramUser.getIntercomId();
      localEditor.putString("intercomsdk-session-INTERCOM_SDK_INTERCOM_ID", this.intercomId);
    }
    localEditor.apply();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/identity/UserIdentity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */