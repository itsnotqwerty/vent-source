.class public final Lio/intercom/a/b/a/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/b/a/b/a/b$a;
    }
.end annotation


# instance fields
.field private final cRm:Lio/intercom/a/b/a/b/c;


# direct methods
.method public constructor <init>(Lio/intercom/a/b/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/b;->cRm:Lio/intercom/a/b/a/b/c;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lio/intercom/a/b/a/c/a;->biJ:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lio/intercom/a/b/a/c/a;->bkb:Ljava/lang/Class;

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lio/intercom/a/b/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/b;->cRm:Lio/intercom/a/b/a/b/c;

    invoke-virtual {v0, p2}, Lio/intercom/a/b/a/b/c;->b(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/b/h;

    move-result-object v3

    new-instance v0, Lio/intercom/a/b/a/b/a/b$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/intercom/a/b/a/b/a/b$a;-><init>(Lio/intercom/a/b/a/e;Ljava/lang/reflect/Type;Lio/intercom/a/b/a/r;Lio/intercom/a/b/a/b/h;)V

    goto :goto_0
.end method
