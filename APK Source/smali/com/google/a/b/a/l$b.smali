.class public final Lcom/google/a/b/a/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final biA:Lcom/google/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/j",
            "<*>;"
        }
    .end annotation
.end field

.field private final biF:Lcom/google/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final biG:Z

.field private final biH:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final biz:Lcom/google/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/r",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/a/c/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/a/c/a",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/a/r;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/a/r;

    :goto_0
    iput-object v0, p0, Lcom/google/a/b/a/l$b;->biz:Lcom/google/a/r;

    instance-of v0, p1, Lcom/google/a/j;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/a/j;

    :goto_1
    iput-object p1, p0, Lcom/google/a/b/a/l$b;->biA:Lcom/google/a/j;

    iget-object v0, p0, Lcom/google/a/b/a/l$b;->biz:Lcom/google/a/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/l$b;->biA:Lcom/google/a/j;

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/a/b/a;->au(Z)V

    iput-object p2, p0, Lcom/google/a/b/a/l$b;->biF:Lcom/google/a/c/a;

    iput-boolean p3, p0, Lcom/google/a/b/a/l$b;->biG:Z

    iput-object v1, p0, Lcom/google/a/b/a/l$b;->biH:Ljava/lang/Class;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 6
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

    iget-object v0, p0, Lcom/google/a/b/a/l$b;->biF:Lcom/google/a/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/b/a/l$b;->biF:Lcom/google/a/c/a;

    invoke-virtual {v0, p2}, Lcom/google/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/a/b/a/l$b;->biG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/b/a/l$b;->biF:Lcom/google/a/c/a;

    iget-object v0, v0, Lcom/google/a/c/a;->biJ:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/a/b/a/l;

    iget-object v1, p0, Lcom/google/a/b/a/l$b;->biz:Lcom/google/a/r;

    iget-object v2, p0, Lcom/google/a/b/a/l$b;->biA:Lcom/google/a/j;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/a/l;-><init>(Lcom/google/a/r;Lcom/google/a/j;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/v;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/a/b/a/l$b;->biH:Ljava/lang/Class;

    iget-object v1, p2, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
