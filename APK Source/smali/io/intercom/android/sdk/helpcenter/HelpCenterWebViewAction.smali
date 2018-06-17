.class public Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;
.super Ljava/lang/Object;


# instance fields
.field private final type:Ljava/lang/String;

.field private final value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;->type:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;->value:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;->value:Ljava/util/Map;

    return-object v0
.end method
