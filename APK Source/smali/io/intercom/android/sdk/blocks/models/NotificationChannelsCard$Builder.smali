.class public final Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Channel;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;-><init>(Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$1;)V

    return-object v0
.end method

.method public final withChannels(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Channel;",
            ">;)",
            "Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->channels:Ljava/util/List;

    return-object p0
.end method

.method public final withText(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final withTitle(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
