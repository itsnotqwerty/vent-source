.class final enum Lio/intercom/android/sdk/utilities/connectivity/NetworkState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/utilities/connectivity/NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

.field public static final enum CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

.field public static final enum NOT_CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

.field public static final enum UNKNOWN:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    new-instance v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->NOT_CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    new-instance v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->UNKNOWN:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    sget-object v1, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->NOT_CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->UNKNOWN:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    aput-object v1, v0, v4

    sput-object v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->$VALUES:[Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/utilities/connectivity/NetworkState;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/utilities/connectivity/NetworkState;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->$VALUES:[Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    return-object v0
.end method
