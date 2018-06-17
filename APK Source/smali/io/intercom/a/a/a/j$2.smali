.class final Lio/intercom/a/a/a/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cGE:Lio/intercom/a/a/a/j;

.field final synthetic cGF:Lio/intercom/a/a/a/g/a/h;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/j;Lio/intercom/a/a/a/g/a/h;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/j$2;->cGE:Lio/intercom/a/a/a/j;

    iput-object p2, p0, Lio/intercom/a/a/a/j$2;->cGF:Lio/intercom/a/a/a/g/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/j$2;->cGE:Lio/intercom/a/a/a/j;

    iget-object v1, p0, Lio/intercom/a/a/a/j$2;->cGF:Lio/intercom/a/a/a/g/a/h;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V

    return-void
.end method
