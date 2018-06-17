.class final Lio/intercom/a/c/a/b$1;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<",
        "Lio/intercom/a/c/a/b$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic cTJ:Lio/intercom/a/c/a/b;


# direct methods
.method constructor <init>(Lio/intercom/a/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/c/a/b$1;->cTJ:Lio/intercom/a/c/a/b;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
