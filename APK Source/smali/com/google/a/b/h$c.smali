.class abstract Lcom/google/a/b/h$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bhB:Lcom/google/a/b/h;

.field bhE:Lcom/google/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/h$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bhF:Lcom/google/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/h$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field bhG:I


# direct methods
.method constructor <init>(Lcom/google/a/b/h;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    iget-object v0, v0, Lcom/google/a/b/h;->bhy:Lcom/google/a/b/h$d;

    iget-object v0, v0, Lcom/google/a/b/h$d;->bhE:Lcom/google/a/b/h$d;

    iput-object v0, p0, Lcom/google/a/b/h$c;->bhE:Lcom/google/a/b/h$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/h$c;->bhF:Lcom/google/a/b/h$d;

    iget-object v0, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    iget v0, v0, Lcom/google/a/b/h;->modCount:I

    iput v0, p0, Lcom/google/a/b/h$c;->bhG:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/h$c;->bhE:Lcom/google/a/b/h$d;

    iget-object v1, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    iget-object v1, v1, Lcom/google/a/b/h;->bhy:Lcom/google/a/b/h$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/h$c;->bhF:Lcom/google/a/b/h$d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    iget-object v1, p0, Lcom/google/a/b/h$c;->bhF:Lcom/google/a/b/h$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/a/b/h;->a(Lcom/google/a/b/h$d;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/h$c;->bhF:Lcom/google/a/b/h$d;

    iget-object v0, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    iget v0, v0, Lcom/google/a/b/h;->modCount:I

    iput v0, p0, Lcom/google/a/b/h$c;->bhG:I

    return-void
.end method

.method final vt()Lcom/google/a/b/h$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/h$d",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/h$c;->bhE:Lcom/google/a/b/h$d;

    iget-object v1, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    iget-object v1, v1, Lcom/google/a/b/h;->bhy:Lcom/google/a/b/h$d;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/b/h$c;->bhB:Lcom/google/a/b/h;

    iget v1, v1, Lcom/google/a/b/h;->modCount:I

    iget v2, p0, Lcom/google/a/b/h$c;->bhG:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/a/b/h$d;->bhE:Lcom/google/a/b/h$d;

    iput-object v1, p0, Lcom/google/a/b/h$c;->bhE:Lcom/google/a/b/h$d;

    iput-object v0, p0, Lcom/google/a/b/h$c;->bhF:Lcom/google/a/b/h$d;

    return-object v0
.end method
