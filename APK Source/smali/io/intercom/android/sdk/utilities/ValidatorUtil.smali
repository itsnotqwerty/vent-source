.class public Lio/intercom/android/sdk/utilities/ValidatorUtil;
.super Ljava/lang/Object;


# static fields
.field private static final API_PREFIX:Ljava/lang/String; = "android_sdk-"

.field private static final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/utilities/ValidatorUtil;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apiKeyIsMissingPrefix(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "android_sdk-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method static apiKeyIsTooShort(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x34

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static appIdIsInvalid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lio/intercom/android/sdk/api/ApiFactory;->removeInvalidCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidConstructorParams(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/utilities/ValidatorUtil;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "The Application passed in was null.We need an Application to enable Intercom in your app"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_0
    invoke-static {p2}, Lio/intercom/android/sdk/utilities/ValidatorUtil;->appIdIsInvalid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lio/intercom/android/sdk/utilities/ValidatorUtil;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The app ID ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") you provided is either null or empty. We need a valid app ID to enable Intercom in your app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_1
    invoke-static {p1}, Lio/intercom/android/sdk/utilities/ValidatorUtil;->apiKeyIsTooShort(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lio/intercom/android/sdk/utilities/ValidatorUtil;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The API key provided ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is too short.\nPlease check that you are using an Intercom Android SDK key and have not passed the appId into the apiKey field\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_2
    invoke-static {p1}, Lio/intercom/android/sdk/utilities/ValidatorUtil;->apiKeyIsMissingPrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lio/intercom/android/sdk/utilities/ValidatorUtil;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The API key provided ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not begin with \'android_sdk-\'.\nPlease check that you are using an Intercom Android SDK key and have not passed the appId into the apiKey field\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method
