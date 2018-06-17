.class public Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/services/LayerReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;->a:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;

    return-void
.end method


# virtual methods
.method public getType()Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;->a:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;

    return-object v0
.end method
