.class final Lcom/google/a/b/h$a$1;
.super Lcom/google/a/b/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/h$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/h",
        "<TK;TV;>.c<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic bhC:Lcom/google/a/b/h$a;


# direct methods
.method constructor <init>(Lcom/google/a/b/h$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/h$a$1;->bhC:Lcom/google/a/b/h$a;

    iget-object v0, p1, Lcom/google/a/b/h$a;->bhB:Lcom/google/a/b/h;

    invoke-direct {p0, v0}, Lcom/google/a/b/h$c;-><init>(Lcom/google/a/b/h;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/h$a$1;->vt()Lcom/google/a/b/h$d;

    move-result-object v0

    return-object v0
.end method
