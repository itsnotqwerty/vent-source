.class public Lio/intercom/android/sdk/logger/LumberMill;
.super Ljava/lang/Object;


# static fields
.field private static final BLOCK_TWIG:Lio/intercom/android/sdk/twig/Twig;

.field private static final MESSENGER_TWIG:Lio/intercom/android/sdk/twig/Twig;

.field private static final NEXUS_TWIG:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Intercom"

    invoke-direct {v0, v3, v1, v2}, Lio/intercom/android/sdk/twig/Twig;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/intercom/android/sdk/logger/LumberMill;->MESSENGER_TWIG:Lio/intercom/android/sdk/twig/Twig;

    new-instance v0, Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Intercom realtime"

    invoke-direct {v0, v3, v1, v2}, Lio/intercom/android/sdk/twig/Twig;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/intercom/android/sdk/logger/LumberMill;->NEXUS_TWIG:Lio/intercom/android/sdk/twig/Twig;

    new-instance v0, Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Intercom"

    invoke-direct {v0, v3, v1, v2}, Lio/intercom/android/sdk/twig/Twig;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/intercom/android/sdk/logger/LumberMill;->BLOCK_TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlocksTwig()Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/logger/LumberMill;->BLOCK_TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method

.method public static getLogger()Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/logger/LumberMill;->MESSENGER_TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method

.method public static getNexusTwig()Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/logger/LumberMill;->NEXUS_TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0    # I
        .annotation build Lio/intercom/android/sdk/Intercom$LogLevel;
        .end annotation
    .end param

    sget-object v0, Lio/intercom/android/sdk/logger/LumberMill;->MESSENGER_TWIG:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/twig/Twig;->setLogLevel(I)V

    sget-object v0, Lio/intercom/android/sdk/logger/LumberMill;->NEXUS_TWIG:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/twig/Twig;->setLogLevel(I)V

    sget-object v0, Lio/intercom/android/sdk/logger/LumberMill;->BLOCK_TWIG:Lio/intercom/android/sdk/twig/Twig;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/twig/Twig;->setLogLevel(I)V

    return-void
.end method
