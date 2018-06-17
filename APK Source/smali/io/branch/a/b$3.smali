.class final Lio/branch/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cvc:Lio/branch/a/b;


# direct methods
.method constructor <init>(Lio/branch/a/b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/a/b$3;->cvc:Lio/branch/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/branch/a/b$3;->cvc:Lio/branch/a/b;

    iget-object v0, v0, Lio/branch/a/b;->cuZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
