.class public final Lcom/google/a/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/a/g$a;
    }
.end annotation


# instance fields
.field final bgA:Z

.field private final bgt:Lcom/google/a/b/c;


# direct methods
.method public constructor <init>(Lcom/google/a/b/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/g;->bgt:Lcom/google/a/b/c;

    iput-boolean p2, p0, Lcom/google/a/b/a/g;->bgA:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/google/a/c/a;->biJ:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/a/b/b;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcom/google/a/b/a/n;->biP:Lcom/google/a/u;

    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v6

    iget-object v0, p0, Lcom/google/a/b/a/g;->bgt:Lcom/google/a/b/c;

    invoke-virtual {v0, p2}, Lcom/google/a/b/c;->b(Lcom/google/a/c/a;)Lcom/google/a/b/i;

    move-result-object v7

    new-instance v0, Lcom/google/a/b/a/g$a;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/a/b/a/g$a;-><init>(Lcom/google/a/b/a/g;Lcom/google/a/f;Ljava/lang/reflect/Type;Lcom/google/a/u;Ljava/lang/reflect/Type;Lcom/google/a/u;Lcom/google/a/b/i;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v4

    goto :goto_1
.end method
