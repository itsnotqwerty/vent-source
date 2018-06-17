.class final Lcom/layer/sdk/internal/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/lsdki/a$b;Lcom/layer/sdk/internal/lsdki/a$e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/j$b",
        "<",
        "Lcom/layer/sdk/listeners/LayerSyncListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/a;

.field final synthetic bpN:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$6;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$6;->bpN:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/layer/sdk/listeners/LayerSyncListener;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$6;->b:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$6;->bpN:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    const/16 v2, 0x64

    invoke-interface {p1, v0, v1, v2}, Lcom/layer/sdk/listeners/LayerSyncListener;->onSyncProgress(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;I)V

    iget-object v0, p0, Lcom/layer/sdk/internal/a$6;->b:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$6;->bpN:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    invoke-interface {p1, v0, v1}, Lcom/layer/sdk/listeners/LayerSyncListener;->onAfterSync(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;)V

    return-void
.end method
