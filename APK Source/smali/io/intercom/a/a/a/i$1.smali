.class public final Lio/intercom/a/a/a/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cGs:Lio/intercom/a/a/a/g/e;

.field final synthetic cGt:Lio/intercom/a/a/a/i;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/i;Lio/intercom/a/a/a/g/e;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/i$1;->cGt:Lio/intercom/a/a/a/i;

    iput-object p2, p0, Lio/intercom/a/a/a/i$1;->cGs:Lio/intercom/a/a/a/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/i$1;->cGs:Lio/intercom/a/a/a/g/e;

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/i$1;->cGt:Lio/intercom/a/a/a/i;

    iget-object v1, p0, Lio/intercom/a/a/a/i$1;->cGs:Lio/intercom/a/a/a/g/e;

    iget-object v2, p0, Lio/intercom/a/a/a/i$1;->cGs:Lio/intercom/a/a/a/g/e;

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/i;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;

    :cond_0
    return-void
.end method
