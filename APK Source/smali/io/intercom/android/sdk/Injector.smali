.class public Lio/intercom/android/sdk/Injector;
.super Ljava/lang/Object;


# static fields
.field private static final NEXUS_TRAFFIC_TAG:I = 0xf9f3

.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;

.field private static instance:Lio/intercom/android/sdk/Injector;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

.field private api:Lio/intercom/android/sdk/api/Api;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final apiProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;"
        }
    .end annotation
.end field

.field private final appConfig:Lio/intercom/android/sdk/identity/AppConfig;

.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

.field private final application:Landroid/app/Application;

.field private bus:Lio/intercom/android/sdk/MainThreadBus;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private errorReporter:Lio/intercom/android/sdk/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private gson:Lio/intercom/a/b/a/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private lifecycleTracker:Lio/intercom/android/sdk/LifecycleTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final metricTrackerProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            ">;"
        }
    .end annotation
.end field

.field private metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private nexusClient:Lio/intercom/android/sdk/NexusWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nexusClientProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/nexus/NexusClient;",
            ">;"
        }
    .end annotation
.end field

.field private opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final overlayManagerProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/overlay/OverlayPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private resetManager:Lio/intercom/android/sdk/ResetManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private superDeDuper:Lio/intercom/android/sdk/api/DeDuper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

.field private final userIdentityProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final userUpdateBatcherProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/Injector;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Application;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/android/sdk/identity/UserIdentity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/utilities/ActivityFinisher;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/ActivityFinisher;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    new-instance v0, Lio/intercom/android/sdk/Injector$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/Injector$1;-><init>(Lio/intercom/android/sdk/Injector;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    new-instance v0, Lio/intercom/android/sdk/Injector$2;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/Injector$2;-><init>(Lio/intercom/android/sdk/Injector;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->nexusClientProvider:Lio/intercom/android/sdk/Provider;

    new-instance v0, Lio/intercom/android/sdk/Injector$3;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/Injector$3;-><init>(Lio/intercom/android/sdk/Injector;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->userUpdateBatcherProvider:Lio/intercom/android/sdk/Provider;

    new-instance v0, Lio/intercom/android/sdk/Injector$4;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/Injector$4;-><init>(Lio/intercom/android/sdk/Injector;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->apiProvider:Lio/intercom/android/sdk/Provider;

    new-instance v0, Lio/intercom/android/sdk/Injector$5;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/Injector$5;-><init>(Lio/intercom/android/sdk/Injector;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->overlayManagerProvider:Lio/intercom/android/sdk/Provider;

    new-instance v0, Lio/intercom/android/sdk/Injector$6;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/Injector$6;-><init>(Lio/intercom/android/sdk/Injector;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->userIdentityProvider:Lio/intercom/android/sdk/Provider;

    new-instance v0, Lio/intercom/android/sdk/Injector$7;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/Injector$7;-><init>(Lio/intercom/android/sdk/Injector;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->metricTrackerProvider:Lio/intercom/android/sdk/Provider;

    iput-object p1, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    iput-object p2, p0, Lio/intercom/android/sdk/Injector;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    iput-object p3, p0, Lio/intercom/android/sdk/Injector;->appConfig:Lio/intercom/android/sdk/identity/AppConfig;

    iput-object p4, p0, Lio/intercom/android/sdk/Injector;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/Injector;)Lio/intercom/android/sdk/identity/AppConfig;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->appConfig:Lio/intercom/android/sdk/identity/AppConfig;

    return-object v0
.end method

.method public static declared-synchronized get()Lio/intercom/android/sdk/Injector;
    .locals 3

    const-class v1, Lio/intercom/android/sdk/Injector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;

    if-nez v0, :cond_0

    const-string v0, "Intercom was not initialized correctly, Intercom.initialize() needs to be called in onCreate() in your Application class."

    new-instance v2, Lio/intercom/android/sdk/exceptions/IntercomIntegrationException;

    invoke-direct {v2, v0}, Lio/intercom/android/sdk/exceptions/IntercomIntegrationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized initIfCachedCredentials(Landroid/app/Application;)V
    .locals 4

    const-class v1, Lio/intercom/android/sdk/Injector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {p0}, Lio/intercom/android/sdk/identity/AppIdentity;->loadFromDevice(Landroid/content/Context;)Lio/intercom/android/sdk/identity/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppIdentity;->apiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppIdentity;->appId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2, v0}, Lio/intercom/android/sdk/Injector;->initWithAppCredentials(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initWithAppCredentials(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lio/intercom/android/sdk/Injector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lio/intercom/android/sdk/Injector;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "Injector"

    const-string v3, "Initializing"

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lio/intercom/android/sdk/identity/AppIdentity;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/identity/AppIdentity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/identity/AppIdentity;->persist(Landroid/content/Context;)V

    new-instance v2, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/identity/AppConfig;-><init>(Landroid/content/Context;)V

    new-instance v3, Lio/intercom/android/sdk/Injector;

    new-instance v4, Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-direct {v4, p0}, Lio/intercom/android/sdk/identity/UserIdentity;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p0, v0, v2, v4}, Lio/intercom/android/sdk/Injector;-><init>(Landroid/app/Application;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/android/sdk/identity/UserIdentity;)V

    sput-object v3, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;

    sget-object v0, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getLifecycleTracker()Lio/intercom/android/sdk/LifecycleTracker;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isNotInitialised()Z
    .locals 2

    const-class v1, Lio/intercom/android/sdk/Injector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setSharedInstance(Lio/intercom/android/sdk/Injector;)V
    .locals 0

    sput-object p0, Lio/intercom/android/sdk/Injector;->instance:Lio/intercom/android/sdk/Injector;

    return-void
.end method


# virtual methods
.method public getActivityFinisher()Lio/intercom/android/sdk/utilities/ActivityFinisher;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    return-object v0
.end method

.method public declared-synchronized getApi()Lio/intercom/android/sdk/api/Api;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->api:Lio/intercom/android/sdk/api/Api;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    invoke-static {v0}, Lio/intercom/android/sdk/api/ApiFactory;->getHostname(Lio/intercom/android/sdk/identity/AppIdentity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/Injector;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    iget-object v2, p0, Lio/intercom/android/sdk/Injector;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v3

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v4

    iget-object v6, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lio/intercom/android/sdk/api/ApiFactory;->create(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/store/Store;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/api/Api;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->api:Lio/intercom/android/sdk/api/Api;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->api:Lio/intercom/android/sdk/api/Api;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/Api;->updateMaxRequests()V

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->api:Lio/intercom/android/sdk/api/Api;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApiProvider()Lio/intercom/android/sdk/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->apiProvider:Lio/intercom/android/sdk/Provider;

    return-object v0
.end method

.method public getAppConfigProvider()Lio/intercom/android/sdk/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-object v0
.end method

.method public getAppIdentity()Lio/intercom/android/sdk/identity/AppIdentity;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    return-object v0
.end method

.method public declared-synchronized getBus()Lio/intercom/a/c/a/b;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->bus:Lio/intercom/android/sdk/MainThreadBus;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/MainThreadBus;

    sget-object v1, Lio/intercom/a/c/a/i;->cTO:Lio/intercom/a/c/a/i;

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/MainThreadBus;-><init>(Lio/intercom/a/c/a/i;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->bus:Lio/intercom/android/sdk/MainThreadBus;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->bus:Lio/intercom/android/sdk/MainThreadBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeDuper()Lio/intercom/android/sdk/api/DeDuper;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->superDeDuper:Lio/intercom/android/sdk/api/DeDuper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    const-string v1, "INTERCOM_DEDUPER_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/DeDuper;

    iget-object v2, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v1, v2, v0}, Lio/intercom/android/sdk/api/DeDuper;-><init>(Lio/intercom/android/sdk/Provider;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lio/intercom/android/sdk/Injector;->superDeDuper:Lio/intercom/android/sdk/api/DeDuper;

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->superDeDuper:Lio/intercom/android/sdk/api/DeDuper;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/DeDuper;->readPersistedCachedAttributes()V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->superDeDuper:Lio/intercom/android/sdk/api/DeDuper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getErrorReporter()Lio/intercom/android/sdk/errorreporting/ErrorReporter;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->errorReporter:Lio/intercom/android/sdk/errorreporting/ErrorReporter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/Injector;->apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->create(Landroid/content/Context;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/Provider;)Lio/intercom/android/sdk/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->errorReporter:Lio/intercom/android/sdk/errorreporting/ErrorReporter;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->errorReporter:Lio/intercom/android/sdk/errorreporting/ErrorReporter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGson()Lio/intercom/a/b/a/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->gson:Lio/intercom/a/b/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/b/a/e;

    invoke-direct {v0}, Lio/intercom/a/b/a/e;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->gson:Lio/intercom/a/b/a/e;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->gson:Lio/intercom/a/b/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLifecycleTracker()Lio/intercom/android/sdk/LifecycleTracker;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->lifecycleTracker:Lio/intercom/android/sdk/LifecycleTracker;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getSystemNotificationManager()Lio/intercom/android/sdk/push/SystemNotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getMetricsStore()Lio/intercom/android/sdk/metrics/MetricsStore;

    move-result-object v1

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getDeDuper()Lio/intercom/android/sdk/api/DeDuper;

    move-result-object v2

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v3

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getUserUpdateBatcher()Lio/intercom/android/sdk/api/UserUpdateBatcher;

    move-result-object v4

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v5

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getResetManager()Lio/intercom/android/sdk/ResetManager;

    move-result-object v6

    iget-object v7, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    invoke-static {v7}, Lio/intercom/android/sdk/utilities/SystemSettings;->getTransitionScale(Landroid/content/Context;)F

    move-result v7

    invoke-static/range {v0 .. v7}, Lio/intercom/android/sdk/LifecycleTracker;->create(Lio/intercom/android/sdk/push/SystemNotificationManager;Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/api/DeDuper;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Lio/intercom/android/sdk/api/UserUpdateBatcher;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/ResetManager;F)Lio/intercom/android/sdk/LifecycleTracker;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->lifecycleTracker:Lio/intercom/android/sdk/LifecycleTracker;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->lifecycleTracker:Lio/intercom/android/sdk/LifecycleTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/Injector;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getMetricsStore()Lio/intercom/android/sdk/metrics/MetricsStore;

    move-result-object v2

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;-><init>(Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricsStore;Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetricsStore()Lio/intercom/android/sdk/metrics/MetricsStore;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/metrics/MetricsStore;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getApiProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricsStore;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->metricsStore:Lio/intercom/android/sdk/metrics/MetricsStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNexusClient()Lio/intercom/android/sdk/nexus/NexusClient;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->nexusClient:Lio/intercom/android/sdk/NexusWrapper;

    if-nez v0, :cond_0

    invoke-static {}, Lio/intercom/android/sdk/nexus/NexusClient;->defaultOkHttpClientBuilder()Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/api/TaggingSocketFactory;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    const v3, 0xf9f3

    invoke-direct {v1, v2, v3}, Lio/intercom/android/sdk/api/TaggingSocketFactory;-><init>(Ljavax/net/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lio/intercom/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/OkHttpClient$Builder;->build()Lio/intercom/okhttp3/OkHttpClient;

    move-result-object v3

    new-instance v1, Lio/intercom/android/sdk/NexusWrapper;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getNexusTwig()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v2

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v4

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v5

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getNexusDebouncePeriod()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lio/intercom/android/sdk/NexusWrapper;-><init>(Lio/intercom/android/sdk/twig/Twig;Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/store/Store;J)V

    iput-object v1, p0, Lio/intercom/android/sdk/Injector;->nexusClient:Lio/intercom/android/sdk/NexusWrapper;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->nexusClient:Lio/intercom/android/sdk/NexusWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getNexusDebouncePeriod()J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getOpsMetricTracker()Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getMetricsStore()Lio/intercom/android/sdk/metrics/MetricsStore;

    move-result-object v1

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v2

    sget-object v3, Lio/intercom/android/sdk/utilities/UuidStringProvider;->SYSTEM:Lio/intercom/android/sdk/utilities/UuidStringProvider;

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;-><init>(Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Lio/intercom/android/sdk/utilities/UuidStringProvider;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOverlayPresenter()Lio/intercom/android/sdk/overlay/OverlayPresenter;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/overlay/OverlayPresenter;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v2

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v5

    iget-object v6, p0, Lio/intercom/android/sdk/Injector;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iget-object v7, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    invoke-static {v7}, Lio/intercom/a/a/a/c;->ca(Landroid/content/Context;)Lio/intercom/a/a/a/j;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/overlay/OverlayPresenter;-><init>(Landroid/app/Application;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/a/a/j;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResetManager()Lio/intercom/android/sdk/ResetManager;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->resetManager:Lio/intercom/android/sdk/ResetManager;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getApiProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v1

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getUserIdentity()Lio/intercom/android/sdk/identity/UserIdentity;

    move-result-object v2

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getOverlayPresenter()Lio/intercom/android/sdk/overlay/OverlayPresenter;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v5

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getUserUpdateBatcher()Lio/intercom/android/sdk/api/UserUpdateBatcher;

    move-result-object v6

    iget-object v7, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    iget-object v8, p0, Lio/intercom/android/sdk/Injector;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/ResetManager;-><init>(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/overlay/OverlayPresenter;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/api/UserUpdateBatcher;Landroid/content/Context;Lio/intercom/android/sdk/utilities/ActivityFinisher;)V

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->resetManager:Lio/intercom/android/sdk/ResetManager;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->resetManager:Lio/intercom/android/sdk/ResetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStore()Lio/intercom/android/sdk/store/Store;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->store:Lio/intercom/android/sdk/store/Store;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->apiProvider:Lio/intercom/android/sdk/Provider;

    iget-object v1, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v2, p0, Lio/intercom/android/sdk/Injector;->nexusClientProvider:Lio/intercom/android/sdk/Provider;

    iget-object v3, p0, Lio/intercom/android/sdk/Injector;->overlayManagerProvider:Lio/intercom/android/sdk/Provider;

    iget-object v4, p0, Lio/intercom/android/sdk/Injector;->userUpdateBatcherProvider:Lio/intercom/android/sdk/Provider;

    new-instance v5, Lio/intercom/android/sdk/conversation/SoundPlayer;

    iget-object v6, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    iget-object v7, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v5, v6, v7}, Lio/intercom/android/sdk/conversation/SoundPlayer;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/Provider;)V

    iget-object v6, p0, Lio/intercom/android/sdk/Injector;->userIdentityProvider:Lio/intercom/android/sdk/Provider;

    iget-object v7, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v8

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v9

    iget-object v10, p0, Lio/intercom/android/sdk/Injector;->metricTrackerProvider:Lio/intercom/android/sdk/Provider;

    invoke-static/range {v0 .. v10}, Lio/intercom/android/sdk/store/StoreFactory;->createStore(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/Provider;Landroid/content/Context;Lio/intercom/android/sdk/twig/Twig;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/Provider;)Lio/intercom/android/sdk/store/Store;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->store:Lio/intercom/android/sdk/store/Store;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->store:Lio/intercom/android/sdk/store/Store;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSystemNotificationManager()Lio/intercom/android/sdk/push/SystemNotificationManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->application:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Lio/intercom/android/sdk/push/SystemNotificationManager;

    invoke-direct {v1, v0}, Lio/intercom/android/sdk/push/SystemNotificationManager;-><init>(Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lio/intercom/android/sdk/Injector;->systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    return-object v0
.end method

.method public getUserIdentity()Lio/intercom/android/sdk/identity/UserIdentity;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    return-object v0
.end method

.method public declared-synchronized getUserUpdateBatcher()Lio/intercom/android/sdk/api/UserUpdateBatcher;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getApiProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/Injector;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {p0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->create(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/store/Store;)Lio/intercom/android/sdk/api/UserUpdateBatcher;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/Injector;->userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->userUpdateBatcher:Lio/intercom/android/sdk/api/UserUpdateBatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserUpdateBatcherProvider()Lio/intercom/android/sdk/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/Injector;->userUpdateBatcherProvider:Lio/intercom/android/sdk/Provider;

    return-object v0
.end method
