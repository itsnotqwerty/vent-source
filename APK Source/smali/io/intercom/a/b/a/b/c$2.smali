.class final Lio/intercom/a/b/a/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/b/a/b/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic cRA:Lio/intercom/a/b/a/b/c;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/c$2;->cRA:Lio/intercom/a/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final vo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method
