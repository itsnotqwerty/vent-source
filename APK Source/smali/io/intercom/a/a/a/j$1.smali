.class final Lio/intercom/a/a/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cGE:Lio/intercom/a/a/a/j;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/j$1;->cGE:Lio/intercom/a/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/j$1;->cGE:Lio/intercom/a/a/a/j;

    iget-object v0, v0, Lio/intercom/a/a/a/j;->cGy:Lio/intercom/a/a/a/d/h;

    iget-object v1, p0, Lio/intercom/a/a/a/j$1;->cGE:Lio/intercom/a/a/a/j;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/d/h;->a(Lio/intercom/a/a/a/d/i;)V

    return-void
.end method
