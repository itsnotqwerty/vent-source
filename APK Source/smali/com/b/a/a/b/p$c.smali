.class final Lcom/b/a/a/b/p$c;
.super Lb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic bLq:Lcom/b/a/a/b/p;


# direct methods
.method constructor <init>(Lcom/b/a/a/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/p$c;->bLq:Lcom/b/a/a/b/p;

    invoke-direct {p0}, Lb/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/b/p$c;->bLq:Lcom/b/a/a/b/p;

    sget-object v1, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/p;->b(Lcom/b/a/a/b/a;)V

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/a/b/p$c;->KR()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
