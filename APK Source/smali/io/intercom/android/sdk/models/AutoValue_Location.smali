.class final Lio/intercom/android/sdk/models/AutoValue_Location;
.super Lio/intercom/android/sdk/models/Location;


# instance fields
.field private final cityName:Ljava/lang/String;

.field private final countryName:Ljava/lang/String;

.field private final timezoneOffset:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/models/Location;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null cityName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->cityName:Ljava/lang/String;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null countryName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->countryName:Ljava/lang/String;

    iput-object p3, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->timezoneOffset:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lio/intercom/android/sdk/models/Location;

    if-eqz v2, :cond_4

    check-cast p1, Lio/intercom/android/sdk/models/Location;

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->cityName:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->countryName:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->timezoneOffset:Ljava/lang/Integer;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getTimezoneOffset()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->timezoneOffset:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Location;->getTimezoneOffset()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimezoneOffset()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->timezoneOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const v2, 0xf4243

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->cityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->countryName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v1, v0, v2

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->timezoneOffset:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->timezoneOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location{cityName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timezoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Location;->timezoneOffset:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
