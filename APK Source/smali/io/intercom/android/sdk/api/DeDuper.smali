.class public Lio/intercom/android/sdk/api/DeDuper;
.super Ljava/lang/Object;


# static fields
.field private static final CUSTOM_ATTRIBUTES:Ljava/lang/String; = "custom_attributes"

.field private static final EMPTY_JSON:Ljava/lang/String; = "{}"

.field private static final PREFS_CACHED_ATTRIBUTES:Ljava/lang/String; = "CachedAttributes"

.field private static final PREFS_EARLIEST_UPDATE_AT:Ljava/lang/String; = "EarliestUpdateAt"


# instance fields
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

.field private final cachedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private earliestUpdateAt:J

.field private final gson:Lio/intercom/a/b/a/e;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;Landroid/content/SharedPreferences;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    new-instance v0, Lio/intercom/a/b/a/e;

    invoke-direct {v0}, Lio/intercom/a/b/a/e;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->gson:Lio/intercom/a/b/a/e;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    iput-object p1, p0, Lio/intercom/android/sdk/api/DeDuper;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p2, p0, Lio/intercom/android/sdk/api/DeDuper;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static containsOnlyEmptyCustomAttributes(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v2, "custom_attributes"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "custom_attributes"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasExpiredCache()Z
    .locals 8

    const/4 v1, 0x0

    iget-wide v2, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getUserUpdateCacheMaxAgeMs()J

    move-result-wide v2

    sget-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private hasNewAttributeValues(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-static {v0}, Lio/intercom/android/sdk/api/DeDuper;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lio/intercom/android/sdk/api/DeDuper;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "custom_attributes"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static mergeMaps(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private persistCachedAttributes()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lio/intercom/android/sdk/api/DeDuper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CachedAttributes"

    iget-object v3, p0, Lio/intercom/android/sdk/api/DeDuper;->gson:Lio/intercom/a/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v3, v0, v4, v5}, Lio/intercom/a/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EarliestUpdateAt"

    iget-wide v2, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method getEarliestUpdateAt()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    return-wide v0
.end method

.method getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public readPersistedCachedAttributes()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "CachedAttributes"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "EarliestUpdateAt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "CachedAttributes"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/intercom/android/sdk/api/DeDuper;->gson:Lio/intercom/a/b/a/e;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lio/intercom/a/b/a/e;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Lio/intercom/a/b/a/p; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "EarliestUpdateAt"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    invoke-direct {p0}, Lio/intercom/android/sdk/api/DeDuper;->persistCachedAttributes()V

    return-void
.end method

.method setEarliestUpdateAt(J)V
    .locals 1

    iput-wide p1, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    return-void
.end method

.method public shouldUpdateUser(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lio/intercom/android/sdk/api/DeDuper;->containsOnlyEmptyCustomAttributes(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/api/DeDuper;->hasNewAttributeValues(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lio/intercom/android/sdk/api/DeDuper;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lio/intercom/android/sdk/api/DeDuper;->hasExpiredCache()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/api/DeDuper;->hasExpiredCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/api/DeDuper;->setEarliestUpdateAt(J)V

    :cond_0
    iget-wide v0, p0, Lio/intercom/android/sdk/api/DeDuper;->earliestUpdateAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/api/DeDuper;->setEarliestUpdateAt(J)V

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-static {v0}, Lio/intercom/android/sdk/api/DeDuper;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lio/intercom/android/sdk/api/DeDuper;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/api/DeDuper;->cachedAttributes:Ljava/util/Map;

    const-string v3, "custom_attributes"

    invoke-static {v0, v1}, Lio/intercom/android/sdk/api/DeDuper;->mergeMaps(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lio/intercom/android/sdk/api/DeDuper;->persistCachedAttributes()V

    return-void
.end method
