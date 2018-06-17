.class final Lio/intercom/a/a/a/c/b/c/a$b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/c/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request threw uncaught throwable"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
