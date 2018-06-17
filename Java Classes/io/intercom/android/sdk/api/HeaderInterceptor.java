package io.intercom.android.sdk.api;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Base64;
import io.intercom.android.sdk.commons.utilities.DeviceUtils;
import io.intercom.android.sdk.identity.AppIdentity;
import io.intercom.okhttp3.Interceptor;
import io.intercom.okhttp3.Interceptor.Chain;
import io.intercom.okhttp3.Request;
import io.intercom.okhttp3.Request.Builder;
import io.intercom.okhttp3.Response;
import java.io.IOException;
import java.util.Locale;
import java.util.Random;

class HeaderInterceptor
  implements Interceptor
{
  private static final String ACCEPT_LANGUAGE = "Accept-Language";
  private static final String ANDROID_HEADER = "intercom-android-sdk/";
  private static final String AUTHORIZATION = "Authorization";
  private static final String CONTENT_TYPE_KEY = "Content-Type";
  private static final String CONTENT_TYPE_VALUE = "application/json";
  private static final String CORDOVA_HEADER = "intercom-sdk-cordova/";
  private static final String CORDOVA_PREFS = "intercomsdk_cordova_prefs";
  private static final String CORDOVA_VERSION = "cordova_version";
  private static final String HOST_APP_VERSION_KEY = "X-INTERCOM-HOST-APP-VERSION";
  private static final String IDEMPOTENCY_KEY = "Idempotency-Key";
  private static final String INTERCOM_AGENT = "X-INTERCOM-AGENT";
  private static final String INTERCOM_AGENT_WRAPPER = "X-INTERCOM-AGENT-WRAPPER";
  private static final String SUPPORTED_LANGUAGES_KEY = "X-INTERCOM-SUPPORTED-LANGUAGES";
  private static final String SUPPORTED_LANGUAGE_LIST = "ar,bg,bs,ca,cs,da,de,de-form,el,es,et,fi,fr,he,hr,hu,id,it,ja,ko,lt,lv,mn,nb,nl,pl,pt-PT,pt-BR,ro,ru,sl,sr,sv,tr,vi,zh-Hant,zh-Hans";
  private final AppIdentity appIdentity;
  private final String appVersion;
  private final String cordovaVersion;
  private final Random random;
  private final Locale userLocale;
  private final String versionName;
  
  HeaderInterceptor(String paramString1, String paramString2, AppIdentity paramAppIdentity, Locale paramLocale, String paramString3, Random paramRandom)
  {
    this.cordovaVersion = paramString1;
    this.versionName = paramString2;
    this.appIdentity = paramAppIdentity;
    this.userLocale = paramLocale;
    this.appVersion = paramString3;
    this.random = paramRandom;
  }
  
  public static HeaderInterceptor create(Context paramContext, AppIdentity paramAppIdentity)
  {
    return new HeaderInterceptor(paramContext.getSharedPreferences("intercomsdk_cordova_prefs", 0).getString("cordova_version", ""), "4.1.9", paramAppIdentity, paramContext.getResources().getConfiguration().locale, DeviceUtils.getAppVersion(paramContext), new Random());
  }
  
  private String getBasicAuth()
  {
    String str = this.appIdentity.appId() + ":" + this.appIdentity.apiKey();
    return "Basic " + Base64.encodeToString(str.getBytes(), 2);
  }
  
  @SuppressLint({"CommitPrefEdits"})
  public static void setCordovaVersion(Context paramContext, String paramString)
  {
    paramContext.getSharedPreferences("intercomsdk_cordova_prefs", 0).edit().putString("cordova_version", paramString).apply();
  }
  
  public Response intercept(Interceptor.Chain paramChain)
    throws IOException
  {
    Request.Builder localBuilder = paramChain.request().newBuilder().header("Content-Type", "application/json").header("Authorization", getBasicAuth()).header("Idempotency-Key", Long.toHexString(this.random.nextLong())).header("X-INTERCOM-AGENT", "intercom-android-sdk/" + this.versionName).header("Accept-Language", this.userLocale.getLanguage() + "-" + this.userLocale.getCountry()).header("X-INTERCOM-SUPPORTED-LANGUAGES", "ar,bg,bs,ca,cs,da,de,de-form,el,es,et,fi,fr,he,hr,hu,id,it,ja,ko,lt,lv,mn,nb,nl,pl,pt-PT,pt-BR,ro,ru,sl,sr,sv,tr,vi,zh-Hant,zh-Hans").header("X-INTERCOM-HOST-APP-VERSION", this.appVersion);
    if (!this.cordovaVersion.isEmpty()) {
      localBuilder.header("X-INTERCOM-AGENT-WRAPPER", "intercom-sdk-cordova/" + this.cordovaVersion);
    }
    return paramChain.proceed(localBuilder.build());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/HeaderInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */