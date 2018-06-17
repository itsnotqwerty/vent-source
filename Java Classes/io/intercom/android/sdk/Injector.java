package io.intercom.android.sdk;

import android.annotation.SuppressLint;
import android.app.Application;
import android.app.NotificationManager;
import android.content.SharedPreferences;
import io.intercom.a.a.a.c;
import io.intercom.a.b.a.e;
import io.intercom.a.c.a.b;
import io.intercom.a.c.a.i;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.api.ApiFactory;
import io.intercom.android.sdk.api.DeDuper;
import io.intercom.android.sdk.api.TaggingSocketFactory;
import io.intercom.android.sdk.api.UserUpdateBatcher;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.conversation.SoundPlayer;
import io.intercom.android.sdk.errorreporting.ErrorReporter;
import io.intercom.android.sdk.exceptions.IntercomIntegrationException;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.AppIdentity;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.metrics.MetricsStore;
import io.intercom.android.sdk.metrics.ops.OpsMetricTracker;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.overlay.OverlayPresenter;
import io.intercom.android.sdk.push.SystemNotificationManager;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.StoreFactory;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ActivityFinisher;
import io.intercom.android.sdk.utilities.SystemSettings;
import io.intercom.android.sdk.utilities.UuidStringProvider;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.OkHttpClient.Builder;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;

public class Injector
{
  private static final int NEXUS_TRAFFIC_TAG = 63987;
  private static final Twig TWIG = ;
  @Nullable
  @SuppressLint({"StaticFieldLeak"})
  private static Injector instance;
  private final ActivityFinisher activityFinisher = new ActivityFinisher();
  @Nullable
  private Api api;
  private final Provider<Api> apiProvider = new Provider()
  {
    public Api get()
    {
      return Injector.this.getApi();
    }
  };
  private final AppConfig appConfig;
  private final Provider<AppConfig> appConfigProvider = new Provider()
  {
    public AppConfig get()
    {
      return Injector.this.appConfig;
    }
  };
  private final AppIdentity appIdentity;
  private final Application application;
  @Nullable
  private MainThreadBus bus;
  @Nullable
  private ErrorReporter errorReporter;
  @Nullable
  private e gson;
  @Nullable
  private LifecycleTracker lifecycleTracker;
  @Nullable
  private MetricTracker metricTracker;
  private final Provider<MetricTracker> metricTrackerProvider = new Provider()
  {
    public MetricTracker get()
    {
      return Injector.this.getMetricTracker();
    }
  };
  @Nullable
  private MetricsStore metricsStore;
  @Nullable
  private NexusWrapper nexusClient;
  private final Provider<NexusClient> nexusClientProvider = new Provider()
  {
    public NexusClient get()
    {
      return Injector.this.getNexusClient();
    }
  };
  @Nullable
  private OpsMetricTracker opsMetricTracker;
  private final Provider<OverlayPresenter> overlayManagerProvider = new Provider()
  {
    public OverlayPresenter get()
    {
      return Injector.this.getOverlayPresenter();
    }
  };
  @Nullable
  private OverlayPresenter overlayPresenter;
  @Nullable
  private ResetManager resetManager;
  @Nullable
  private Store<State> store;
  @Nullable
  private DeDuper superDeDuper;
  @Nullable
  private SystemNotificationManager systemNotificationManager;
  private final UserIdentity userIdentity;
  private final Provider<UserIdentity> userIdentityProvider = new Provider()
  {
    public UserIdentity get()
    {
      return Injector.this.getUserIdentity();
    }
  };
  @Nullable
  private UserUpdateBatcher userUpdateBatcher;
  private final Provider<UserUpdateBatcher> userUpdateBatcherProvider = new Provider()
  {
    public UserUpdateBatcher get()
    {
      return Injector.this.getUserUpdateBatcher();
    }
  };
  
  protected Injector(Application paramApplication, AppIdentity paramAppIdentity, AppConfig paramAppConfig, UserIdentity paramUserIdentity)
  {
    this.application = paramApplication;
    this.appIdentity = paramAppIdentity;
    this.appConfig = paramAppConfig;
    this.userIdentity = paramUserIdentity;
  }
  
  public static Injector get()
  {
    try
    {
      if (instance == null) {
        throw new IntercomIntegrationException("Intercom was not initialized correctly, Intercom.initialize() needs to be called in onCreate() in your Application class.");
      }
    }
    finally {}
    Injector localInjector = instance;
    return localInjector;
  }
  
  /* Error */
  public static void initIfCachedCredentials(Application paramApplication)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 142	io/intercom/android/sdk/Injector:instance	Lio/intercom/android/sdk/Injector;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: invokestatic 157	io/intercom/android/sdk/identity/AppIdentity:loadFromDevice	(Landroid/content/Context;)Lio/intercom/android/sdk/identity/AppIdentity;
    //   19: astore_2
    //   20: aload_2
    //   21: invokevirtual 161	io/intercom/android/sdk/identity/AppIdentity:apiKey	()Ljava/lang/String;
    //   24: astore_1
    //   25: aload_2
    //   26: invokevirtual 164	io/intercom/android/sdk/identity/AppIdentity:appId	()Ljava/lang/String;
    //   29: astore_2
    //   30: aload_2
    //   31: invokevirtual 170	java/lang/String:isEmpty	()Z
    //   34: ifne -23 -> 11
    //   37: aload_1
    //   38: invokevirtual 170	java/lang/String:isEmpty	()Z
    //   41: ifne -30 -> 11
    //   44: aload_0
    //   45: aload_1
    //   46: aload_2
    //   47: invokestatic 174	io/intercom/android/sdk/Injector:initWithAppCredentials	(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    //   50: goto -39 -> 11
    //   53: astore_0
    //   54: ldc 2
    //   56: monitorexit
    //   57: aload_0
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	paramApplication	Application
    //   6	40	1	localObject1	Object
    //   19	28	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	53	finally
    //   15	50	53	finally
  }
  
  /* Error */
  public static void initWithAppCredentials(Application paramApplication, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 142	io/intercom/android/sdk/Injector:instance	Lio/intercom/android/sdk/Injector;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: getstatic 95	io/intercom/android/sdk/Injector:TWIG	Lio/intercom/android/sdk/twig/Twig;
    //   18: ldc -80
    //   20: ldc -78
    //   22: invokevirtual 184	io/intercom/android/sdk/twig/Twig:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: aload_1
    //   26: aload_2
    //   27: invokestatic 188	io/intercom/android/sdk/identity/AppIdentity:create	(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/identity/AppIdentity;
    //   30: astore_1
    //   31: aload_1
    //   32: aload_0
    //   33: invokevirtual 192	io/intercom/android/sdk/identity/AppIdentity:persist	(Landroid/content/Context;)V
    //   36: new 2	io/intercom/android/sdk/Injector
    //   39: dup
    //   40: aload_0
    //   41: aload_1
    //   42: new 194	io/intercom/android/sdk/identity/AppConfig
    //   45: dup
    //   46: aload_0
    //   47: invokespecial 196	io/intercom/android/sdk/identity/AppConfig:<init>	(Landroid/content/Context;)V
    //   50: new 198	io/intercom/android/sdk/identity/UserIdentity
    //   53: dup
    //   54: aload_0
    //   55: invokespecial 199	io/intercom/android/sdk/identity/UserIdentity:<init>	(Landroid/content/Context;)V
    //   58: invokespecial 201	io/intercom/android/sdk/Injector:<init>	(Landroid/app/Application;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/android/sdk/identity/UserIdentity;)V
    //   61: putstatic 142	io/intercom/android/sdk/Injector:instance	Lio/intercom/android/sdk/Injector;
    //   64: aload_0
    //   65: getstatic 142	io/intercom/android/sdk/Injector:instance	Lio/intercom/android/sdk/Injector;
    //   68: invokevirtual 205	io/intercom/android/sdk/Injector:getLifecycleTracker	()Lio/intercom/android/sdk/LifecycleTracker;
    //   71: invokevirtual 211	android/app/Application:registerActivityLifecycleCallbacks	(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    //   74: goto -63 -> 11
    //   77: astore_0
    //   78: ldc 2
    //   80: monitorexit
    //   81: aload_0
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	paramApplication	Application
    //   0	83	1	paramString1	String
    //   0	83	2	paramString2	String
    //   6	2	3	localInjector	Injector
    // Exception table:
    //   from	to	target	type
    //   3	7	77	finally
    //   15	74	77	finally
  }
  
  /* Error */
  public static boolean isNotInitialised()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 142	io/intercom/android/sdk/Injector:instance	Lio/intercom/android/sdk/Injector;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +10 -> 18
    //   11: iconst_1
    //   12: istore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: iload_0
    //   17: ireturn
    //   18: iconst_0
    //   19: istore_0
    //   20: goto -7 -> 13
    //   23: astore_1
    //   24: ldc 2
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   12	8	0	bool	boolean
    //   6	2	1	localInjector	Injector
    //   23	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	23	finally
  }
  
  static void setSharedInstance(Injector paramInjector)
  {
    instance = paramInjector;
  }
  
  public ActivityFinisher getActivityFinisher()
  {
    return this.activityFinisher;
  }
  
  public Api getApi()
  {
    try
    {
      if (this.api == null)
      {
        localObject1 = ApiFactory.getHostname(this.appIdentity);
        this.api = ApiFactory.create(getApplication(), this.appIdentity, this.userIdentity, getBus(), getStore(), (String)localObject1, this.appConfigProvider, getGson());
      }
      this.api.updateMaxRequests();
      Object localObject1 = this.api;
      return (Api)localObject1;
    }
    finally {}
  }
  
  public Provider<Api> getApiProvider()
  {
    return this.apiProvider;
  }
  
  public Provider<AppConfig> getAppConfigProvider()
  {
    return this.appConfigProvider;
  }
  
  public AppIdentity getAppIdentity()
  {
    return this.appIdentity;
  }
  
  public Application getApplication()
  {
    return this.application;
  }
  
  public b getBus()
  {
    try
    {
      if (this.bus == null) {
        this.bus = new MainThreadBus(i.cTO);
      }
      MainThreadBus localMainThreadBus = this.bus;
      return localMainThreadBus;
    }
    finally {}
  }
  
  public DeDuper getDeDuper()
  {
    try
    {
      if (this.superDeDuper == null)
      {
        localObject1 = this.application.getSharedPreferences("INTERCOM_DEDUPER_PREFS", 0);
        this.superDeDuper = new DeDuper(this.appConfigProvider, (SharedPreferences)localObject1);
        this.superDeDuper.readPersistedCachedAttributes();
      }
      Object localObject1 = this.superDeDuper;
      return (DeDuper)localObject1;
    }
    finally {}
  }
  
  public ErrorReporter getErrorReporter()
  {
    try
    {
      if (this.errorReporter == null) {
        this.errorReporter = ErrorReporter.create(this.application, getGson(), this.apiProvider);
      }
      ErrorReporter localErrorReporter = this.errorReporter;
      return localErrorReporter;
    }
    finally {}
  }
  
  public e getGson()
  {
    try
    {
      if (this.gson == null) {
        this.gson = new e();
      }
      e locale = this.gson;
      return locale;
    }
    finally {}
  }
  
  public LifecycleTracker getLifecycleTracker()
  {
    try
    {
      if (this.lifecycleTracker == null) {
        this.lifecycleTracker = LifecycleTracker.create(getSystemNotificationManager(), getMetricsStore(), getDeDuper(), getTimeProvider(), getUserUpdateBatcher(), getStore(), getResetManager(), SystemSettings.getTransitionScale(this.application));
      }
      LifecycleTracker localLifecycleTracker = this.lifecycleTracker;
      return localLifecycleTracker;
    }
    finally {}
  }
  
  public MetricTracker getMetricTracker()
  {
    try
    {
      if (this.metricTracker == null) {
        this.metricTracker = new MetricTracker(this.userIdentity, getMetricsStore(), getApplication());
      }
      MetricTracker localMetricTracker = this.metricTracker;
      return localMetricTracker;
    }
    finally {}
  }
  
  public MetricsStore getMetricsStore()
  {
    try
    {
      if (this.metricsStore == null) {
        this.metricsStore = new MetricsStore(getApplication(), getApiProvider(), this.appConfigProvider);
      }
      MetricsStore localMetricsStore = this.metricsStore;
      return localMetricsStore;
    }
    finally {}
  }
  
  public NexusClient getNexusClient()
  {
    try
    {
      if (this.nexusClient == null)
      {
        localObject1 = NexusClient.defaultOkHttpClientBuilder().socketFactory(new TaggingSocketFactory(SocketFactory.getDefault(), 63987)).build();
        this.nexusClient = new NexusWrapper(LumberMill.getNexusTwig(), (OkHttpClient)localObject1, getBus(), getStore(), getNexusDebouncePeriod());
      }
      Object localObject1 = this.nexusClient;
      return (NexusClient)localObject1;
    }
    finally {}
  }
  
  protected long getNexusDebouncePeriod()
  {
    return TimeUnit.SECONDS.toMillis(1L);
  }
  
  public OpsMetricTracker getOpsMetricTracker()
  {
    try
    {
      if (this.opsMetricTracker == null) {
        this.opsMetricTracker = new OpsMetricTracker(getMetricsStore(), getTimeProvider(), UuidStringProvider.SYSTEM);
      }
      OpsMetricTracker localOpsMetricTracker = this.opsMetricTracker;
      return localOpsMetricTracker;
    }
    finally {}
  }
  
  public OverlayPresenter getOverlayPresenter()
  {
    try
    {
      if (this.overlayPresenter == null) {
        this.overlayPresenter = new OverlayPresenter(getApplication(), getBus(), getStore(), this.appConfigProvider, getMetricTracker(), this.userIdentity, c.ca(this.application));
      }
      OverlayPresenter localOverlayPresenter = this.overlayPresenter;
      return localOverlayPresenter;
    }
    finally {}
  }
  
  public ResetManager getResetManager()
  {
    try
    {
      if (this.resetManager == null) {
        this.resetManager = new ResetManager(getApiProvider(), getUserIdentity(), getOverlayPresenter(), this.appConfigProvider, getStore(), getUserUpdateBatcher(), this.application, this.activityFinisher);
      }
      ResetManager localResetManager = this.resetManager;
      return localResetManager;
    }
    finally {}
  }
  
  public Store<State> getStore()
  {
    try
    {
      if (this.store == null) {
        this.store = StoreFactory.createStore(this.apiProvider, this.appConfigProvider, this.nexusClientProvider, this.overlayManagerProvider, this.userUpdateBatcherProvider, new SoundPlayer(this.application, this.appConfigProvider), this.userIdentityProvider, this.application, LumberMill.getLogger(), getBus(), this.metricTrackerProvider);
      }
      Store localStore = this.store;
      return localStore;
    }
    finally {}
  }
  
  public SystemNotificationManager getSystemNotificationManager()
  {
    try
    {
      if (this.systemNotificationManager == null) {
        this.systemNotificationManager = new SystemNotificationManager((NotificationManager)this.application.getSystemService("notification"));
      }
      SystemNotificationManager localSystemNotificationManager = this.systemNotificationManager;
      return localSystemNotificationManager;
    }
    finally {}
  }
  
  public TimeProvider getTimeProvider()
  {
    return TimeProvider.SYSTEM;
  }
  
  public UserIdentity getUserIdentity()
  {
    return this.userIdentity;
  }
  
  public UserUpdateBatcher getUserUpdateBatcher()
  {
    try
    {
      if (this.userUpdateBatcher == null) {
        this.userUpdateBatcher = UserUpdateBatcher.create(getApiProvider(), this.appConfigProvider, getStore());
      }
      UserUpdateBatcher localUserUpdateBatcher = this.userUpdateBatcher;
      return localUserUpdateBatcher;
    }
    finally {}
  }
  
  public Provider<UserUpdateBatcher> getUserUpdateBatcherProvider()
  {
    return this.userUpdateBatcherProvider;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/Injector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */