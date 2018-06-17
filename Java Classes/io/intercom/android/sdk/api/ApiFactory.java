package io.intercom.android.sdk.api;

import android.content.Context;
import io.intercom.a.b.a.e;
import io.intercom.a.c.a.b;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.AppIdentity;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.okhttp3.Cache;
import io.intercom.okhttp3.CertificatePinner.Builder;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.OkHttpClient.Builder;
import io.intercom.retrofit2.Retrofit;
import io.intercom.retrofit2.Retrofit.Builder;
import io.intercom.retrofit2.converter.gson.GsonConverterFactory;
import java.io.File;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;

public class ApiFactory
{
  private static final String CACHE_NAME = "Intercom_SDK/HttpCache";
  private static final int CACHE_SIZE = 10485760;
  private static final String ENDPOINT = "/messenger/mobile/";
  private static final int INTERCOM_TRAFFIC_TAG = 46837266;
  private static final int MAX_DNS_SEGMENT_SIZE = 63;
  private static final String PARTIAL_HOSTNAME = ".mobile-sdk-api.intercom.io";
  private static final String PROTOCOL = "https://";
  
  static String convertHostnameToUrl(String paramString)
  {
    return "https://" + paramString + "/messenger/mobile/";
  }
  
  public static Api create(Context paramContext, AppIdentity paramAppIdentity, UserIdentity paramUserIdentity, b paramb, Store<State> paramStore, String paramString, Provider<AppConfig> paramProvider, e parame)
  {
    return createWithNetworkClient(paramContext, paramAppIdentity, paramUserIdentity, paramb, createConfigurableHttpClient(paramContext, paramAppIdentity, paramUserIdentity).build(), paramStore, paramString, paramProvider, parame);
  }
  
  public static OkHttpClient.Builder createConfigurableHttpClient(Context paramContext, AppIdentity paramAppIdentity, UserIdentity paramUserIdentity)
  {
    paramUserIdentity = new OkHttpClient.Builder().readTimeout(2L, TimeUnit.MINUTES).connectTimeout(2L, TimeUnit.MINUTES).writeTimeout(2L, TimeUnit.MINUTES).socketFactory(new TaggingSocketFactory(SocketFactory.getDefault(), 46837266)).addInterceptor(new UserIdentityInterceptor(paramUserIdentity)).addInterceptor(new RetryInterceptor(new RetryInterceptor.Sleeper())).addInterceptor(new ShutdownInterceptor(new ShutdownState(paramContext, paramAppIdentity, TimeProvider.SYSTEM))).addNetworkInterceptor(HeaderInterceptor.create(paramContext, paramAppIdentity));
    paramContext = paramContext.getCacheDir();
    if (paramContext != null) {
      paramUserIdentity.cache(new Cache(new File(paramContext.getAbsolutePath(), "Intercom_SDK/HttpCache"), 10485760L));
    }
    paramContext = getFullHostname(paramAppIdentity.appId());
    paramUserIdentity.certificatePinner(new CertificatePinner.Builder().add(paramContext, new String[] { "sha1/BiCgk94N+oILO/VULX+wYS6gWKU=" }).build());
    return paramUserIdentity;
  }
  
  private static MessengerApi createRetrofitClient(OkHttpClient paramOkHttpClient, String paramString, e parame)
  {
    return (MessengerApi)new Retrofit.Builder().baseUrl(paramString).client(paramOkHttpClient).addConverterFactory(GsonConverterFactory.create(parame)).build().create(MessengerApi.class);
  }
  
  static String createUniqueIdentifier(String paramString)
  {
    int i = 62;
    paramString = removeInvalidCharacters(paramString) + "-android";
    if (paramString.length() > 63)
    {
      if (paramString.charAt(62) == '-') {}
      for (;;)
      {
        return paramString.substring(0, i);
        i = 63;
      }
    }
    return paramString;
  }
  
  public static Api createWithNetworkClient(Context paramContext, AppIdentity paramAppIdentity, UserIdentity paramUserIdentity, b paramb, OkHttpClient paramOkHttpClient, Store<State> paramStore, String paramString, Provider<AppConfig> paramProvider, e parame)
  {
    return new Api(paramContext, paramAppIdentity, paramUserIdentity, paramb, paramOkHttpClient, createRetrofitClient(paramOkHttpClient, paramString, parame), new CallbackHolder(paramb, paramStore), new RateLimiter((AppConfig)paramProvider.get()), paramStore, paramProvider);
  }
  
  static String getFullHostname(String paramString)
  {
    return createUniqueIdentifier(paramString) + ".mobile-sdk-api.intercom.io";
  }
  
  public static String getHostname(AppIdentity paramAppIdentity)
  {
    return convertHostnameToUrl(getFullHostname(paramAppIdentity.appId()));
  }
  
  public static String removeInvalidCharacters(String paramString)
  {
    return paramString.replaceAll("[^A-Za-z0-9\\-$]", "");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/ApiFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */