.class public final Lcom/firebase/jobdispatcher/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/firebase/jobdispatcher/v;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/b;->context:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/firebase/jobdispatcher/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static aJ(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    move-object p0, p1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/firebase/jobdispatcher/r;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/jobdispatcher/r;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v9, 0x2800

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kO()Lcom/firebase/jobdispatcher/u;

    move-result-object v0

    sget-object v4, Lcom/firebase/jobdispatcher/z;->ayi:Lcom/firebase/jobdispatcher/u$c;

    if-eq v0, v4, :cond_2

    instance-of v4, v0, Lcom/firebase/jobdispatcher/u$b;

    if-nez v4, :cond_2

    instance-of v0, v0, Lcom/firebase/jobdispatcher/u$a;

    if-nez v0, :cond_2

    const-string v0, "Unknown trigger provided"

    invoke-static {v0}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/firebase/jobdispatcher/b;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kM()Lcom/firebase/jobdispatcher/x;

    move-result-object v0

    iget v5, v0, Lcom/firebase/jobdispatcher/x;->ayd:I

    iget v6, v0, Lcom/firebase/jobdispatcher/x;->aye:I

    iget v7, v0, Lcom/firebase/jobdispatcher/x;->ayf:I

    if-eq v5, v2, :cond_3

    if-eq v5, v12, :cond_3

    move v0, v2

    :goto_1
    const-string v5, "Unknown retry policy provided"

    invoke-static {v0, v1, v5}, Lcom/firebase/jobdispatcher/b;->a(ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-ge v7, v6, :cond_4

    move v0, v2

    :goto_2
    const-string v8, "Maximum backoff must be greater than or equal to initial backoff"

    invoke-static {v0, v5, v8}, Lcom/firebase/jobdispatcher/b;->a(ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/16 v0, 0x12c

    if-le v0, v7, :cond_5

    move v0, v2

    :goto_3
    const-string v7, "Maximum backoff must be greater than 300s (5 minutes)"

    invoke-static {v0, v5, v7}, Lcom/firebase/jobdispatcher/b;->a(ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/16 v0, 0x1e

    if-ge v6, v0, :cond_6

    move v0, v2

    :goto_4
    const-string v6, "Initial backoff must be at least 30s"

    invoke-static {v0, v5, v6}, Lcom/firebase/jobdispatcher/b;->a(ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/firebase/jobdispatcher/b;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kQ()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kO()Lcom/firebase/jobdispatcher/u;

    move-result-object v4

    sget-object v5, Lcom/firebase/jobdispatcher/z;->ayi:Lcom/firebase/jobdispatcher/u$c;

    if-ne v4, v5, :cond_0

    const-string v4, "ImmediateTriggers can\'t be used with recurring jobs"

    invoke-static {v0, v4}, Lcom/firebase/jobdispatcher/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    if-le v4, v9, :cond_7

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Extras too large: %d bytes is > the max (%d bytes)"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_5
    invoke-static {v0, v4}, Lcom/firebase/jobdispatcher/b;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kP()I

    move-result v0

    if-le v0, v2, :cond_16

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v1

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    instance-of v9, v5, Ljava/lang/Integer;

    if-nez v9, :cond_1

    instance-of v9, v5, Ljava/lang/Long;

    if-nez v9, :cond_1

    instance-of v9, v5, Ljava/lang/Double;

    if-nez v9, :cond_1

    instance-of v9, v5, Ljava/lang/String;

    if-nez v9, :cond_1

    instance-of v9, v5, Ljava/lang/Boolean;

    if-eqz v9, :cond_8

    :cond_1
    move-object v0, v1

    :goto_7
    invoke-static {v4, v0}, Lcom/firebase/jobdispatcher/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_6

    :cond_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto/16 :goto_1

    :cond_4
    move v0, v3

    goto/16 :goto_2

    :cond_5
    move v0, v3

    goto/16 :goto_3

    :cond_6
    move v0, v3

    goto/16 :goto_4

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Received value of type \'%s\' for key \'%s\', but only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean"

    new-array v11, v12, [Ljava/lang/Object;

    if-nez v5, :cond_9

    move-object v5, v1

    :goto_8
    aput-object v5, v11, v3

    aput-object v0, v11, v2

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_8

    :cond_a
    move-object v4, v1

    :cond_b
    invoke-static {v6, v4}, Lcom/firebase/jobdispatcher/b;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_9
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    const-string v2, "Tag can\'t be null"

    invoke-static {v2}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_a
    invoke-static {v0, v2}, Lcom/firebase/jobdispatcher/b;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kR()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    const-string v0, "Service can\'t be empty"

    invoke-static {v0}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_b
    invoke-static {v2, v1}, Lcom/firebase/jobdispatcher/b;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_e

    const-string v2, "Tag must be shorter than 100"

    invoke-static {v2}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_a

    :cond_e
    move-object v2, v1

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lcom/firebase/jobdispatcher/b;->context:Landroid/content/Context;

    if-nez v0, :cond_10

    const-string v0, "Context is null, can\'t query PackageManager"

    invoke-static {v0}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_b

    :cond_10
    iget-object v0, p0, Lcom/firebase/jobdispatcher/b;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "PackageManager is null, can\'t validate service"

    invoke-static {v0}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_b

    :cond_11
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.firebase.jobdispatcher.ACTION_EXECUTE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/firebase/jobdispatcher/b;->context:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find a registered service with the name "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Is it declared in the manifest with the right intent-filter? If not, the job won\'t be started."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FJD.GooglePlayReceiver"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_14

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v0, :cond_14

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is disabled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/jobdispatcher/b;->aJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_b

    :cond_16
    move-object v0, v6

    goto/16 :goto_9
.end method
