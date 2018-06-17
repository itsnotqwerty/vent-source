.class public final Lio/intercom/a/b/a/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/b/a/b/a/g$a;
    }
.end annotation


# instance fields
.field final bgA:Z

.field private final cRm:Lio/intercom/a/b/a/b/c;


# direct methods
.method public constructor <init>(Lio/intercom/a/b/a/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/g;->cRm:Lio/intercom/a/b/a/b/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/b/a/b/a/g;->bgA:Z

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 8
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lio/intercom/a/b/a/c/a;->biJ:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lio/intercom/a/b/a/c/a;->bkb:Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lio/intercom/a/b/a/b/b;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/a/b/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lio/intercom/a/b/a/b/a/n;->cSy:Lio/intercom/a/b/a/r;

    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v6

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/g;->cRm:Lio/intercom/a/b/a/b/c;

    invoke-virtual {v0, p2}, Lio/intercom/a/b/a/b/c;->b(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/b/h;

    move-result-object v7

    new-instance v0, Lio/intercom/a/b/a/b/a/g$a;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lio/intercom/a/b/a/b/a/g$a;-><init>(Lio/intercom/a/b/a/b/a/g;Lio/intercom/a/b/a/e;Ljava/lang/reflect/Type;Lio/intercom/a/b/a/r;Ljava/lang/reflect/Type;Lio/intercom/a/b/a/r;Lio/intercom/a/b/a/b/h;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v4

    goto :goto_1
.end method
