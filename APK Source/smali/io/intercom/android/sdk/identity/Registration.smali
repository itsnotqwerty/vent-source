.class public Lio/intercom/android/sdk/identity/Registration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/identity/Registration$Validity;
    }
.end annotation


# instance fields
.field private attributes:Lio/intercom/android/sdk/UserAttributes;

.field private email:Ljava/lang/String;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private userId:Ljava/lang/String;

.field private validity:Lio/intercom/android/sdk/identity/Registration$Validity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->email:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->userId:Ljava/lang/String;

    sget-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->NOT_SET:Lio/intercom/android/sdk/identity/Registration$Validity;

    iput-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->validity:Lio/intercom/android/sdk/identity/Registration$Validity;

    return-void
.end method

.method public static create()Lio/intercom/android/sdk/identity/Registration;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/identity/Registration;

    invoke-direct {v0}, Lio/intercom/android/sdk/identity/Registration;-><init>()V

    return-object v0
.end method

.method private updateState(Z)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->validity:Lio/intercom/android/sdk/identity/Registration$Validity;

    sget-object v1, Lio/intercom/android/sdk/identity/Registration$Validity;->NOT_SET:Lio/intercom/android/sdk/identity/Registration$Validity;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->validity:Lio/intercom/android/sdk/identity/Registration$Validity;

    sget-object v1, Lio/intercom/android/sdk/identity/Registration$Validity;->VALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    sget-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->VALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->validity:Lio/intercom/android/sdk/identity/Registration$Validity;

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->INVALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lio/intercom/android/sdk/identity/Registration;

    iget-object v2, p0, Lio/intercom/android/sdk/identity/Registration;->email:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/identity/Registration;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lio/intercom/android/sdk/identity/Registration;->userId:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/identity/Registration;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    iget-object v1, p1, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/UserAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAttributes()Lio/intercom/android/sdk/UserAttributes;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/android/sdk/identity/Registration;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    invoke-virtual {v0}, Lio/intercom/android/sdk/UserAttributes;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValidRegistration()Z
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->VALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    iget-object v1, p0, Lio/intercom/android/sdk/identity/Registration;->validity:Lio/intercom/android/sdk/identity/Registration$Validity;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/identity/Registration$Validity;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Registration{email=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/identity/Registration;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/Registration;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEmail(Ljava/lang/String;)Lio/intercom/android/sdk/identity/Registration;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/intercom/android/sdk/identity/Registration;->email:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v0}, Lio/intercom/android/sdk/identity/Registration;->updateState(Z)V

    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lio/intercom/android/sdk/identity/Registration;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v3, "Email cannot be null or empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public withUserAttributes(Lio/intercom/android/sdk/UserAttributes;)Lio/intercom/android/sdk/identity/Registration;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->INVALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    iput-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->validity:Lio/intercom/android/sdk/identity/Registration$Validity;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Registration.withUserAttributes method failed: the attributes Map provided is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/UserAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->INVALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    iput-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->validity:Lio/intercom/android/sdk/identity/Registration$Validity;

    iget-object v0, p0, Lio/intercom/android/sdk/identity/Registration;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Registration.withUserAttributes method failed: the attributes Map provided is empty"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lio/intercom/android/sdk/identity/Registration;->attributes:Lio/intercom/android/sdk/UserAttributes;

    goto :goto_0
.end method

.method public withUserId(Ljava/lang/String;)Lio/intercom/android/sdk/identity/Registration;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lio/intercom/android/sdk/identity/Registration;->userId:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v0}, Lio/intercom/android/sdk/identity/Registration;->updateState(Z)V

    return-object p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lio/intercom/android/sdk/identity/Registration;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v3, "UserId cannot be null or empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
