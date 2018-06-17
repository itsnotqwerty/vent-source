package io.intercom.android.sdk.api;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import io.intercom.android.sdk.commons.utilities.DeviceUtils;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppIdentity;

public class ShutdownState
{
  private static final String PREFS_SHUTDOWN_EXPIRY = "ShutdownExpiry";
  private static final String PREFS_SHUTDOWN_FINGERPRINT = "ShutdownFingerprint";
  private static final String PREFS_SHUTDOWN_REASON = "ShutdownReason";
  private final AppIdentity appIdentity;
  private final Context context;
  private final SharedPreferences prefs;
  long shutdownExpiry;
  String shutdownFingerprint;
  private String shutdownReason;
  private final TimeProvider timeProvider;
  
  public ShutdownState(Context paramContext, AppIdentity paramAppIdentity, TimeProvider paramTimeProvider)
  {
    this.context = paramContext;
    this.appIdentity = paramAppIdentity;
    this.prefs = paramContext.getSharedPreferences("INTERCOM_SHUTDOWN_PREFS", 0);
    this.timeProvider = paramTimeProvider;
    this.shutdownExpiry = this.prefs.getLong("ShutdownExpiry", paramTimeProvider.currentTimeMillis());
    this.shutdownReason = this.prefs.getString("ShutdownReason", "");
    this.shutdownFingerprint = this.prefs.getString("ShutdownFingerprint", generateAppFingerprint(paramContext, paramAppIdentity));
  }
  
  private static String generateAppFingerprint(Context paramContext, AppIdentity paramAppIdentity)
  {
    return paramContext.getPackageName() + "-" + DeviceUtils.getAppVersion(paramContext) + "-" + paramAppIdentity.appId() + "-4.1.9";
  }
  
  private void persistCachedAttributes()
  {
    this.prefs.edit().putString("ShutdownFingerprint", this.shutdownFingerprint).putString("ShutdownReason", this.shutdownReason).putLong("ShutdownExpiry", this.shutdownExpiry).apply();
  }
  
  public boolean canSendNetworkRequests()
  {
    boolean bool1 = false;
    if (this.shutdownExpiry <= this.timeProvider.currentTimeMillis()) {}
    for (int i = 1;; i = 0)
    {
      boolean bool2 = this.shutdownFingerprint.equals(generateAppFingerprint(this.context, this.appIdentity));
      if ((i != 0) || (!bool2)) {
        bool1 = true;
      }
      return bool1;
    }
  }
  
  public String getShutdownReason()
  {
    return this.shutdownReason;
  }
  
  public void updateShutdownState(long paramLong, String paramString)
  {
    this.shutdownExpiry = (this.timeProvider.currentTimeMillis() + paramLong);
    this.shutdownReason = paramString;
    this.shutdownFingerprint = generateAppFingerprint(this.context, this.appIdentity);
    persistCachedAttributes();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/ShutdownState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */