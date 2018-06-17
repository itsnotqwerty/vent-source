.class public abstract Lcom/layer/atlas/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/c$a;
    }
.end annotation


# instance fields
.field protected bmU:Lcom/layer/sdk/LayerClient;

.field public bmV:Lcom/layer/sdk/messaging/Conversation;

.field public bou:Lcom/layer/atlas/b/c$a;

.field protected bov:Lcom/layer/sdk/messaging/Identity;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/layer/sdk/LayerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/b/c;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/layer/atlas/b/c;->bmU:Lcom/layer/sdk/LayerClient;

    return-void
.end method
