.class public abstract Lio/intercom/android/sdk/state/OverlayState$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/state/OverlayState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bottomPadding(I)Lio/intercom/android/sdk/state/OverlayState$Builder;
.end method

.method public abstract build()Lio/intercom/android/sdk/state/OverlayState;
.end method

.method public abstract conversations(Ljava/util/List;)Lio/intercom/android/sdk/state/OverlayState$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)",
            "Lio/intercom/android/sdk/state/OverlayState$Builder;"
        }
    .end annotation
.end method

.method public abstract dismissedPartIds(Ljava/util/Set;)Lio/intercom/android/sdk/state/OverlayState$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/intercom/android/sdk/state/OverlayState$Builder;"
        }
    .end annotation
.end method

.method public abstract launcherVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/state/OverlayState$Builder;
.end method

.method public abstract notificationVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/state/OverlayState$Builder;
.end method

.method public abstract pausedHostActivity(Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState$Builder;
.end method

.method public abstract resumedHostActivity(Landroid/app/Activity;)Lio/intercom/android/sdk/state/OverlayState$Builder;
.end method
