.class final Lcom/google/a/b/a/i$1;
.super Lcom/google/a/b/a/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bin:Ljava/lang/reflect/Field;

.field final synthetic bip:Z

.field final synthetic biq:Lcom/google/a/u;

.field final synthetic bir:Lcom/google/a/f;

.field final synthetic bis:Lcom/google/a/c/a;

.field final synthetic bit:Z

.field final synthetic biu:Lcom/google/a/b/a/i;


# direct methods
.method constructor <init>(Lcom/google/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/a/u;Lcom/google/a/f;Lcom/google/a/c/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/a/i$1;->biu:Lcom/google/a/b/a/i;

    iput-object p5, p0, Lcom/google/a/b/a/i$1;->bin:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/google/a/b/a/i$1;->bip:Z

    iput-object p7, p0, Lcom/google/a/b/a/i$1;->biq:Lcom/google/a/u;

    iput-object p8, p0, Lcom/google/a/b/a/i$1;->bir:Lcom/google/a/f;

    iput-object p9, p0, Lcom/google/a/b/a/i$1;->bis:Lcom/google/a/c/a;

    iput-boolean p10, p0, Lcom/google/a/b/a/i$1;->bit:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/a/b/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/d/a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/i$1;->biq:Lcom/google/a/u;

    invoke-virtual {v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/a/b/a/i$1;->bit:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/a/i$1;->bin:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/i$1;->bin:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/a/b/a/i$1;->bip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/i$1;->biq:Lcom/google/a/u;

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/a/b/a/m;

    iget-object v2, p0, Lcom/google/a/b/a/i$1;->bir:Lcom/google/a/f;

    iget-object v3, p0, Lcom/google/a/b/a/i$1;->biq:Lcom/google/a/u;

    iget-object v4, p0, Lcom/google/a/b/a/i$1;->bis:Lcom/google/a/c/a;

    iget-object v4, v4, Lcom/google/a/c/a;->biJ:Ljava/lang/reflect/Type;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/a/b/a/m;-><init>(Lcom/google/a/f;Lcom/google/a/u;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method public final ag(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/a/b/a/i$1;->biw:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/a/b/a/i$1;->bin:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
