.class public final Lio/intercom/a/a/a/i/a/b$a;
.super Lio/intercom/a/a/a/i/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private volatile cJJ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/i/a/b;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final JX()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/a/a/a/i/a/b$a;->cJJ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final bw(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/intercom/a/a/a/i/a/b$a;->cJJ:Z

    return-void
.end method
