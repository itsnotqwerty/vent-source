.class public abstract Lcom/layer/atlas/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/a$c;,
        Lcom/layer/atlas/b/a$b;,
        Lcom/layer/atlas/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tholder:",
        "Lcom/layer/atlas/b/a$a;",
        "Tcache::",
        "Lcom/layer/atlas/b/a$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected bno:Lcom/layer/atlas/b/d;

.field private final bor:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "TTcache;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/layer/atlas/b/a$1;

    invoke-direct {v0, p0}, Lcom/layer/atlas/b/a$1;-><init>(Lcom/layer/atlas/b/a;)V

    iput-object v0, p0, Lcom/layer/atlas/b/a;->bor:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;ZLandroid/view/LayoutInflater;)Lcom/layer/atlas/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Z",
            "Landroid/view/LayoutInflater;",
            ")TTholder;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/layer/atlas/b/a$a;Lcom/layer/atlas/b/a$c;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTholder;TTcache;",
            "Lcom/layer/sdk/messaging/Message;",
            "Lcom/layer/atlas/b/a$b;",
            ")V"
        }
    .end annotation
.end method

.method public final a(Lcom/layer/atlas/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/b/a;->bno:Lcom/layer/atlas/b/d;

    return-void
.end method

.method public abstract a(Lcom/layer/sdk/messaging/Message;)Z
.end method

.method public abstract b(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/Message;",
            ")TTcache;"
        }
    .end annotation
.end method

.method public bJ(I)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/Message;",
            ")TTcache;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/atlas/b/a;->bor:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/atlas/b/a$c;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/layer/atlas/b/a;->b(Lcom/layer/sdk/messaging/Message;)Lcom/layer/atlas/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/layer/atlas/b/a;->bor:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
