.class synthetic Lio/intercom/android/sdk/store/OverlayStateReducer$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/store/OverlayStateReducer;
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

    sput-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    :try_start_0
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->SET_IN_APP_NOTIFICATION_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->SET_LAUNCHER_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->SET_BOTTOM_PADDING:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->HARD_RESET:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_READ:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_DISMISSED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->UNREAD_CONVERSATIONS_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_READY_FOR_VIEW_ATTACHMENT:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_PAUSED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_STOPPED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lio/intercom/android/sdk/store/OverlayStateReducer$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->APP_ENTERED_BACKGROUND:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
