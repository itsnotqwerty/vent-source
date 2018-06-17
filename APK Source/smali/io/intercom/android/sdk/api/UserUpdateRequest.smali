.class public Lio/intercom/android/sdk/api/UserUpdateRequest;
.super Ljava/lang/Object;


# static fields
.field private static final CUSTOM_ATTRIBUTES:Ljava/lang/String; = "custom_attributes"


# instance fields
.field private final attributes:Ljava/util/Map;
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

.field private final batchSize:I

.field private final internalUpdate:Z

.field private final newSession:Z

.field private final sentFromBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZLjava/util/Map;IZ)V

    return-void
.end method

.method constructor <init>(ZZLjava/util/Map;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iput-boolean p2, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->sentFromBackground:Z

    iput-boolean p1, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    iput p4, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->batchSize:I

    iput-boolean p5, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    return-void
.end method

.method public constructor <init>(ZZLjava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZLjava/util/Map;IZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZLjava/util/Map;IZ)V

    return-void
.end method

.method private attributesWillOverwriteExistingAttributes(Ljava/util/Map;)Z
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

    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-static {v0}, Lio/intercom/android/sdk/api/UserUpdateRequest;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "custom_attributes"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
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
            "Ljava/lang/Object;",
            ">;)",
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

.method private static mergeAttributes(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lio/intercom/android/sdk/api/UserUpdateRequest;->getCustomAttributes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "custom_attributes"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "custom_attributes"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "custom_attributes"

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public canMergeUpdate(Lio/intercom/android/sdk/api/UserUpdateRequest;)Z
    .locals 1

    iget-object v0, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributesWillOverwriteExistingAttributes(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lio/intercom/android/sdk/api/UserUpdateRequest;

    iget-boolean v1, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    iget-boolean v2, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->batchSize:I

    iget v2, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->batchSize:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->sentFromBackground:Z

    iget-boolean v2, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->sentFromBackground:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    iget-boolean v2, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    iget-object v1, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
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

    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getBatchSize()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->batchSize:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->batchSize:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->sentFromBackground:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public isInternalUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    return v0
.end method

.method public isNewSession()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    return v0
.end method

.method public isSentFromBackground()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->sentFromBackground:Z

    return v0
.end method

.method public isValidUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lio/intercom/android/sdk/api/UserUpdateRequest;)Lio/intercom/android/sdk/api/UserUpdateRequest;
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->internalUpdate:Z

    if-eqz v1, :cond_2

    :cond_0
    move v5, v2

    :goto_0
    iget-boolean v1, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->newSession:Z

    if-eqz v1, :cond_3

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    iget-object v4, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->attributes:Ljava/util/Map;

    invoke-static {v3, v4}, Lio/intercom/android/sdk/api/UserUpdateRequest;->mergeAttributes(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->sentFromBackground:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->sentFromBackground:Z

    if-eqz v4, :cond_4

    :goto_2
    iget v0, p0, Lio/intercom/android/sdk/api/UserUpdateRequest;->batchSize:I

    iget v4, p1, Lio/intercom/android/sdk/api/UserUpdateRequest;->batchSize:I

    add-int/2addr v4, v0

    new-instance v0, Lio/intercom/android/sdk/api/UserUpdateRequest;

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZLjava/util/Map;IZ)V

    return-object v0

    :cond_2
    move v5, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2
.end method
