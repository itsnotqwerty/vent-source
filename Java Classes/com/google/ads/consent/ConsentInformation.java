package com.google.ads.consent;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.util.Log;
import com.google.a.a.c;
import com.google.a.f;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class ConsentInformation
{
  private static final String CONSENT_DATA_KEY = "consent_string";
  private static final String MOBILE_ADS_SERVER_URL = "https://adservice.google.com/getconfig/pubvendors";
  private static final String PREFERENCES_FILE_KEY = "mobileads_consent";
  private static final String TAG = "ConsentInformation";
  private static ConsentInformation instance;
  private final Context context;
  DebugGeography debugGeography;
  private String hashedDeviceId;
  private List<String> testDevices;
  
  private ConsentInformation(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
    this.debugGeography = DebugGeography.DEBUG_GEOGRAPHY_DISABLED;
    this.testDevices = new ArrayList();
    this.hashedDeviceId = lb();
  }
  
  private static HashSet<AdProvider> a(List<AdProvider> paramList, HashSet<String> paramHashSet)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      AdProvider localAdProvider = (AdProvider)paramList.next();
      if (paramHashSet.contains(localAdProvider.id)) {
        localArrayList.add(localAdProvider);
      }
    }
    return new HashSet(localArrayList);
  }
  
  private void a(ConsentData paramConsentData)
  {
    SharedPreferences.Editor localEditor = this.context.getSharedPreferences("mobileads_consent", 0).edit();
    localEditor.putString("consent_string", new f().ab(paramConsentData));
    localEditor.apply();
  }
  
  private void a(String paramString, List<String> paramList)
    throws Exception
  {
    ServerResponse localServerResponse;
    try
    {
      localServerResponse = (ServerResponse)new f().d(paramString, ServerResponse.class);
      if (localServerResponse.isRequestLocationInEeaOrUnknown == null) {
        throw new Exception("Could not parse Event FE preflight response.");
      }
    }
    finally {}
    if ((localServerResponse.companies == null) && (localServerResponse.isRequestLocationInEeaOrUnknown.booleanValue())) {
      throw new Exception("Could not parse Event FE preflight response.");
    }
    Object localObject1;
    Object localObject2;
    if (localServerResponse.isRequestLocationInEeaOrUnknown.booleanValue())
    {
      localHashSet = new HashSet();
      localObject1 = new HashSet();
      localObject2 = localServerResponse.adNetworkLookupResponses.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        AdNetworkLookupResponse localAdNetworkLookupResponse = (AdNetworkLookupResponse)((Iterator)localObject2).next();
        if (AdNetworkLookupResponse.a(localAdNetworkLookupResponse)) {
          localHashSet.add(AdNetworkLookupResponse.b(localAdNetworkLookupResponse));
        }
        if (AdNetworkLookupResponse.c(localAdNetworkLookupResponse)) {
          ((HashSet)localObject1).add(AdNetworkLookupResponse.b(localAdNetworkLookupResponse));
        }
      }
      if ((!localHashSet.isEmpty()) || (!((HashSet)localObject1).isEmpty()))
      {
        paramString = new StringBuilder("Response error.");
        if (!localHashSet.isEmpty()) {
          paramString.append(String.format(" Lookup failure for: %s.", new Object[] { TextUtils.join(",", localHashSet) }));
        }
        if (!((HashSet)localObject1).isEmpty()) {
          paramString.append(String.format(" Publisher Ids not found: %s", new Object[] { TextUtils.join(",", (Iterable)localObject1) }));
        }
        throw new Exception(paramString.toString());
      }
    }
    HashSet localHashSet = new HashSet();
    boolean bool;
    if (localServerResponse.adNetworkLookupResponses != null)
    {
      localObject1 = localServerResponse.adNetworkLookupResponses.iterator();
      bool = false;
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (AdNetworkLookupResponse)((Iterator)localObject1).next();
          if (AdNetworkLookupResponse.d((AdNetworkLookupResponse)localObject2))
          {
            localObject2 = AdNetworkLookupResponse.e((AdNetworkLookupResponse)localObject2);
            if (localObject2 != null)
            {
              localHashSet.addAll((Collection)localObject2);
              break label563;
              label363:
              if (localServerResponse.companies == null)
              {
                localHashSet = new HashSet();
                localObject1 = lg();
                if (((ConsentData)localObject1).hasNonPersonalizedPublisherId == bool) {
                  break label572;
                }
              }
            }
          }
        }
      }
    }
    label563:
    label572:
    for (int i = 1;; i = 0)
    {
      ((ConsentData)localObject1).hasNonPersonalizedPublisherId = bool;
      ((ConsentData)localObject1).rawResponse = paramString;
      ((ConsentData)localObject1).publisherIds = new HashSet(paramList);
      ((ConsentData)localObject1).adProviders = localHashSet;
      ((ConsentData)localObject1).isRequestLocationInEeaOrUnknown = localServerResponse.isRequestLocationInEeaOrUnknown.booleanValue();
      if (!localServerResponse.isRequestLocationInEeaOrUnknown.booleanValue()) {
        a((ConsentData)localObject1);
      }
      for (;;)
      {
        return;
        if (bool)
        {
          localHashSet = a(localServerResponse.companies, localHashSet);
          break;
        }
        localHashSet = new HashSet(localServerResponse.companies);
        break;
        if ((!((ConsentData)localObject1).adProviders.equals(((ConsentData)localObject1).consentedAdProviders)) || (i != 0))
        {
          ((ConsentData)localObject1).consentSource = "sdk";
          ((ConsentData)localObject1).consentStatus = ConsentStatus.UNKNOWN;
          ((ConsentData)localObject1).consentedAdProviders = new HashSet();
        }
        a((ConsentData)localObject1);
      }
      bool = false;
      break label363;
      bool = true;
      break;
      break label363;
    }
  }
  
  private static String aP(String paramString)
  {
    Object localObject2 = null;
    int i = 0;
    for (;;)
    {
      Object localObject1 = localObject2;
      if (i < 3) {}
      try
      {
        localObject1 = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject1).update(paramString.getBytes());
        localObject1 = String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject1).digest()) });
        return (String)localObject1;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
      catch (ArithmeticException paramString) {}
    }
    return null;
  }
  
  private static boolean lc()
  {
    return (Build.FINGERPRINT.startsWith("generic")) || (Build.FINGERPRINT.startsWith("unknown")) || (Build.MODEL.contains("google_sdk")) || (Build.MODEL.contains("Emulator")) || (Build.MODEL.contains("Android SDK built for x86")) || (Build.MANUFACTURER.contains("Genymotion")) || ((Build.BRAND.startsWith("generic")) && (Build.DEVICE.startsWith("generic"))) || ("google_sdk".equals(Build.PRODUCT));
  }
  
  public static ConsentInformation o(Context paramContext)
  {
    try
    {
      if (instance == null) {
        instance = new ConsentInformation(paramContext);
      }
      paramContext = instance;
      return paramContext;
    }
    finally {}
  }
  
  /* Error */
  protected final void a(ConsentStatus paramConsentStatus, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 225	com/google/ads/consent/ConsentInformation:lg	()Lcom/google/ads/consent/ConsentData;
    //   6: astore_3
    //   7: aload_1
    //   8: getstatic 264	com/google/ads/consent/ConsentStatus:UNKNOWN	Lcom/google/ads/consent/ConsentStatus;
    //   11: if_acmpne +32 -> 43
    //   14: aload_3
    //   15: new 96	java/util/HashSet
    //   18: dup
    //   19: invokespecial 164	java/util/HashSet:<init>	()V
    //   22: putfield 250	com/google/ads/consent/ConsentData:consentedAdProviders	Ljava/util/HashSet;
    //   25: aload_3
    //   26: aload_2
    //   27: putfield 258	com/google/ads/consent/ConsentData:consentSource	Ljava/lang/String;
    //   30: aload_3
    //   31: aload_1
    //   32: putfield 267	com/google/ads/consent/ConsentData:consentStatus	Lcom/google/ads/consent/ConsentStatus;
    //   35: aload_0
    //   36: aload_3
    //   37: invokespecial 245	com/google/ads/consent/ConsentInformation:a	(Lcom/google/ads/consent/ConsentData;)V
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: aload_3
    //   44: aload_3
    //   45: getfield 241	com/google/ads/consent/ConsentData:adProviders	Ljava/util/HashSet;
    //   48: putfield 250	com/google/ads/consent/ConsentData:consentedAdProviders	Ljava/util/HashSet;
    //   51: goto -26 -> 25
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	ConsentInformation
    //   0	59	1	paramConsentStatus	ConsentStatus
    //   0	59	2	paramString	String
    //   6	39	3	localConsentData	ConsentData
    // Exception table:
    //   from	to	target	type
    //   2	25	54	finally
    //   25	40	54	finally
    //   43	51	54	finally
  }
  
  public final String lb()
  {
    Object localObject = this.context.getContentResolver();
    if (localObject == null) {}
    for (localObject = null;; localObject = Settings.Secure.getString((ContentResolver)localObject, "android_id"))
    {
      if ((localObject == null) || (lc())) {
        localObject = "emulator";
      }
      return aP((String)localObject);
    }
  }
  
  public final boolean ld()
  {
    return (lc()) || (this.testDevices.contains(this.hashedDeviceId));
  }
  
  public final void le()
  {
    try
    {
      ConsentData localConsentData = lg();
      localConsentData.underAgeOfConsent = Boolean.valueOf(true);
      a(localConsentData);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean lf()
  {
    try
    {
      boolean bool = lg().underAgeOfConsent.booleanValue();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final ConsentData lg()
  {
    String str = this.context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    if (TextUtils.isEmpty(str)) {
      return new ConsentData();
    }
    return (ConsentData)new f().d(str, ConsentData.class);
  }
  
  public final boolean lh()
  {
    return lg().isRequestLocationInEeaOrUnknown;
  }
  
  public final ConsentStatus li()
  {
    try
    {
      ConsentStatus localConsentStatus = lg().consentStatus;
      return localConsentStatus;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static class AdNetworkLookupResponse
  {
    @c("company_ids")
    private List<String> companyIds;
    @c("ad_network_id")
    private String id;
    @c("is_npa")
    private boolean isNPA;
    @c("lookup_failed")
    private boolean lookupFailed;
    @c("not_found")
    private boolean notFound;
  }
  
  private static class ConsentInfoUpdateResponse
  {
    String responseInfo;
    boolean success;
    
    ConsentInfoUpdateResponse(boolean paramBoolean, String paramString)
    {
      this.success = paramBoolean;
      this.responseInfo = paramString;
    }
  }
  
  private static class ConsentInfoUpdateTask
    extends AsyncTask<Void, Void, ConsentInformation.ConsentInfoUpdateResponse>
  {
    private static final String UPDATE_SUCCESS = "Consent update successful.";
    private final ConsentInformation consentInformation;
    private final ConsentInfoUpdateListener listener;
    private final List<String> publisherIds;
    private final String url;
    
    public ConsentInfoUpdateTask(String paramString, ConsentInformation paramConsentInformation, List<String> paramList, ConsentInfoUpdateListener paramConsentInfoUpdateListener)
    {
      this.url = paramString;
      this.listener = paramConsentInfoUpdateListener;
      this.publisherIds = paramList;
      this.consentInformation = paramConsentInformation;
    }
    
    private ConsentInformation.ConsentInfoUpdateResponse aQ(String paramString)
    {
      try
      {
        paramString = (HttpURLConnection)new URL(paramString).openConnection();
        if (paramString.getResponseCode() == 200)
        {
          String str = l(paramString.getInputStream());
          paramString.disconnect();
          ConsentInformation.a(this.consentInformation, str, this.publisherIds);
          return new ConsentInformation.ConsentInfoUpdateResponse(true, "Consent update successful.");
        }
        paramString = new ConsentInformation.ConsentInfoUpdateResponse(false, paramString.getResponseMessage());
        return paramString;
      }
      catch (Exception paramString) {}
      return new ConsentInformation.ConsentInfoUpdateResponse(false, paramString.getLocalizedMessage());
    }
    
    private static String l(InputStream paramInputStream)
    {
      byte[] arrayOfByte = new byte['Ѐ'];
      StringBuilder localStringBuilder = new StringBuilder();
      paramInputStream = new BufferedInputStream(paramInputStream);
      try
      {
        for (;;)
        {
          int i = paramInputStream.read(arrayOfByte);
          if (i == -1) {
            break;
          }
          localStringBuilder.append(new String(arrayOfByte, 0, i));
        }
        try
        {
          paramInputStream.close();
          throw ((Throwable)localObject);
        }
        catch (IOException paramInputStream)
        {
          for (;;)
          {
            Log.e("ConsentInformation", paramInputStream.getLocalizedMessage());
          }
        }
      }
      catch (IOException localIOException)
      {
        localIOException = localIOException;
        Log.e("ConsentInformation", localIOException.getLocalizedMessage());
        try
        {
          paramInputStream.close();
          return null;
          try
          {
            paramInputStream.close();
            return localIOException.toString();
          }
          catch (IOException paramInputStream)
          {
            for (;;)
            {
              Log.e("ConsentInformation", paramInputStream.getLocalizedMessage());
            }
          }
        }
        catch (IOException paramInputStream)
        {
          for (;;)
          {
            Log.e("ConsentInformation", paramInputStream.getLocalizedMessage());
          }
        }
      }
      finally {}
    }
  }
  
  protected static class ServerResponse
  {
    @c("ad_network_ids")
    List<ConsentInformation.AdNetworkLookupResponse> adNetworkLookupResponses;
    List<AdProvider> companies;
    @c("is_request_in_eea_or_unknown")
    Boolean isRequestLocationInEeaOrUnknown;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/ads/consent/ConsentInformation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */