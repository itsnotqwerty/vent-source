.class final Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;
.super Lio/intercom/android/sdk/identity/SoftUserIdentity;


# instance fields
.field private final anonymousId:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final fingerprint:Ljava/lang/String;

.field private final hmac:Ljava/lang/String;

.field private final intercomId:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/identity/SoftUserIdentity;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null anonymousId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->anonymousId:Ljava/lang/String;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->data:Ljava/lang/String;

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null email"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->email:Ljava/lang/String;

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null fingerprint"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p4, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->fingerprint:Ljava/lang/String;

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null hmac"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p5, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->hmac:Ljava/lang/String;

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null intercomId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p6, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->intercomId:Ljava/lang/String;

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null userId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object p7, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final anonymousId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->anonymousId:Ljava/lang/String;

    return-object v0
.end method

.method final data()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->data:Ljava/lang/String;

    return-object v0
.end method

.method final email()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lio/intercom/android/sdk/identity/SoftUserIdentity;

    if-eqz v2, :cond_3

    check-cast p1, Lio/intercom/android/sdk/identity/SoftUserIdentity;

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->anonymousId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->anonymousId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->data()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->email:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->email()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->fingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->hmac:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->hmac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->intercomId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->intercomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/SoftUserIdentity;->userId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final fingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const v2, 0xf4243

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->anonymousId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->hmac:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->intercomId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method final hmac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->hmac:Ljava/lang/String;

    return-object v0
.end method

.method final intercomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->intercomId:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoftUserIdentity{anonymousId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->anonymousId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hmac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->hmac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intercomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->intercomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final userId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/AutoValue_SoftUserIdentity;->userId:Ljava/lang/String;

    return-object v0
.end method
