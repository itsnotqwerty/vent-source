.class Lio/intercom/android/sdk/overlay/ChatFull$ChatFullButtonClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/overlay/ChatFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatFullButtonClickListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/overlay/ChatFull$1;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/overlay/ChatFull$ChatFullButtonClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClicked(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldHandleClicks()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
