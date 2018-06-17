.class synthetic Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/intercom/android/sdk/actions/Action$Type;->values()[Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    :try_start_0
    sget-object v0, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->UNREAD_CONVERSATIONS_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
