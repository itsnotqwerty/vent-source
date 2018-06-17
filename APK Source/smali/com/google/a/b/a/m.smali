.class final Lcom/google/a/b/a/m;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/u",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bgO:Lcom/google/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final biI:Lcom/google/a/f;

.field private final biJ:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/a/f;Lcom/google/a/u;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/f;",
            "Lcom/google/a/u",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/m;->biI:Lcom/google/a/f;

    iput-object p2, p0, Lcom/google/a/b/a/m;->bgO:Lcom/google/a/u;

    iput-object p3, p0, Lcom/google/a/b/a/m;->biJ:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/m;->bgO:Lcom/google/a/u;

    invoke-virtual {v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/a/b/a/m;->bgO:Lcom/google/a/u;

    iget-object v0, p0, Lcom/google/a/b/a/m;->biJ:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/a/b/a/m;->biJ:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/google/a/b/a/m;->biI:Lcom/google/a/f;

    invoke-static {v0}, Lcom/google/a/c/a;->e(Ljava/lang/reflect/Type;)Lcom/google/a/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/f;->a(Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    instance-of v1, v0, Lcom/google/a/b/a/i$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/a/b/a/m;->bgO:Lcom/google/a/u;

    instance-of v1, v1, Lcom/google/a/b/a/i$a;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/a/b/a/m;->bgO:Lcom/google/a/u;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
