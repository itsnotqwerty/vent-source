.class public final enum Lio/intercom/android/sdk/blocks/VideoProvider;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/blocks/VideoProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/blocks/VideoProvider;

.field public static final enum STREAMIO:Lio/intercom/android/sdk/blocks/VideoProvider;

.field public static final enum UNKNOWN:Lio/intercom/android/sdk/blocks/VideoProvider;

.field public static final enum VIMEO:Lio/intercom/android/sdk/blocks/VideoProvider;

.field public static final enum WISTIA:Lio/intercom/android/sdk/blocks/VideoProvider;

.field public static final enum YOUTUBE:Lio/intercom/android/sdk/blocks/VideoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/blocks/VideoProvider;

    const-string v1, "YOUTUBE"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/blocks/VideoProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->YOUTUBE:Lio/intercom/android/sdk/blocks/VideoProvider;

    new-instance v0, Lio/intercom/android/sdk/blocks/VideoProvider;

    const-string v1, "VIMEO"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/blocks/VideoProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->VIMEO:Lio/intercom/android/sdk/blocks/VideoProvider;

    new-instance v0, Lio/intercom/android/sdk/blocks/VideoProvider;

    const-string v1, "WISTIA"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/blocks/VideoProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->WISTIA:Lio/intercom/android/sdk/blocks/VideoProvider;

    new-instance v0, Lio/intercom/android/sdk/blocks/VideoProvider;

    const-string v1, "STREAMIO"

    invoke-direct {v0, v1, v5}, Lio/intercom/android/sdk/blocks/VideoProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->STREAMIO:Lio/intercom/android/sdk/blocks/VideoProvider;

    new-instance v0, Lio/intercom/android/sdk/blocks/VideoProvider;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lio/intercom/android/sdk/blocks/VideoProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->UNKNOWN:Lio/intercom/android/sdk/blocks/VideoProvider;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/intercom/android/sdk/blocks/VideoProvider;

    sget-object v1, Lio/intercom/android/sdk/blocks/VideoProvider;->YOUTUBE:Lio/intercom/android/sdk/blocks/VideoProvider;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/blocks/VideoProvider;->VIMEO:Lio/intercom/android/sdk/blocks/VideoProvider;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/blocks/VideoProvider;->WISTIA:Lio/intercom/android/sdk/blocks/VideoProvider;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/android/sdk/blocks/VideoProvider;->STREAMIO:Lio/intercom/android/sdk/blocks/VideoProvider;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/android/sdk/blocks/VideoProvider;->UNKNOWN:Lio/intercom/android/sdk/blocks/VideoProvider;

    aput-object v1, v0, v6

    sput-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->$VALUES:[Lio/intercom/android/sdk/blocks/VideoProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/VideoProvider;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/blocks/VideoProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/VideoProvider;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/blocks/VideoProvider;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->$VALUES:[Lio/intercom/android/sdk/blocks/VideoProvider;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/blocks/VideoProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/blocks/VideoProvider;

    return-object v0
.end method

.method public static videoValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/VideoProvider;
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/blocks/VideoProvider;->UNKNOWN:Lio/intercom/android/sdk/blocks/VideoProvider;

    :try_start_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/blocks/VideoProvider;->valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/VideoProvider;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
