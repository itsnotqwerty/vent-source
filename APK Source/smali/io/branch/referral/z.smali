.class Lio/branch/referral/z;
.super Ljava/lang/Object;


# static fields
.field private static cBv:Lio/branch/referral/z;


# instance fields
.field private cBw:Landroid/content/SharedPreferences$Editor;

.field final cBx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/branch/referral/r;",
            ">;"
        }
    .end annotation
.end field

.field private cvm:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BNC_Server_Request_Queue"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/z;->cvm:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lio/branch/referral/z;->cvm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/z;->cBw:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lio/branch/referral/z;->bX(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lio/branch/referral/z;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lio/branch/referral/z;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lio/branch/referral/z;->cBw:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static bW(Landroid/content/Context;)Lio/branch/referral/z;
    .locals 2

    sget-object v0, Lio/branch/referral/z;->cBv:Lio/branch/referral/z;

    if-nez v0, :cond_1

    const-class v1, Lio/branch/referral/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/branch/referral/z;->cBv:Lio/branch/referral/z;

    if-nez v0, :cond_0

    new-instance v0, Lio/branch/referral/z;

    invoke-direct {v0, p0}, Lio/branch/referral/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/referral/z;->cBv:Lio/branch/referral/z;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lio/branch/referral/z;->cBv:Lio/branch/referral/z;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private bX(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/branch/referral/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lio/branch/referral/z;->cvm:Landroid/content/SharedPreferences;

    const-string v2, "BNCServerRequestQueue"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x19

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lio/branch/referral/r;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lio/branch/referral/r;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lio/branch/referral/ab;

    if-nez v4, :cond_0

    instance-of v4, v3, Lio/branch/referral/y;

    if-nez v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method final Hm()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/branch/referral/z$1;

    invoke-direct {v1, p0}, Lio/branch/referral/z$1;-><init>(Lio/branch/referral/z;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final Hn()Lio/branch/referral/r;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p0}, Lio/branch/referral/z;->Hm()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public final Ho()Lio/branch/referral/r;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final Hp()Z
    .locals 4

    iget-object v1, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/branch/referral/r;->Hd()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lio/branch/referral/n$c;->cAh:Lio/branch/referral/n$c;

    iget-object v3, v3, Lio/branch/referral/n$c;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final Hq()Z
    .locals 4

    iget-object v1, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_0

    instance-of v3, v0, Lio/branch/referral/ac;

    if-nez v3, :cond_1

    instance-of v0, v0, Lio/branch/referral/ad;

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_2
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lio/branch/referral/d$e;)V
    .locals 4

    iget-object v1, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_0

    instance-of v3, v0, Lio/branch/referral/ac;

    if-eqz v3, :cond_1

    check-cast v0, Lio/branch/referral/ac;

    if-eqz p1, :cond_0

    iput-object p1, v0, Lio/branch/referral/ac;->cBr:Lio/branch/referral/d$e;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    instance-of v3, v0, Lio/branch/referral/ad;

    if-eqz v3, :cond_0

    check-cast v0, Lio/branch/referral/ad;

    if-eqz p1, :cond_0

    iput-object p1, v0, Lio/branch/referral/ad;->cBr:Lio/branch/referral/d$e;

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lio/branch/referral/r;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :cond_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/referral/z;->Hm()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Lio/branch/referral/r$a;)V
    .locals 3

    iget-object v1, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/branch/referral/r;->cBb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Lio/branch/referral/r;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lio/branch/referral/z;->Hm()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final clear()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lio/branch/referral/z;->Hm()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final fc(I)Lio/branch/referral/r;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/r;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lio/branch/referral/z;->cBx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
