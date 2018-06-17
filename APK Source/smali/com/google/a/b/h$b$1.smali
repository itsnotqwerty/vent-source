.class final Lcom/google/a/b/h$b$1;
.super Lcom/google/a/b/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/h",
        "<TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic bhD:Lcom/google/a/b/h$b;


# direct methods
.method constructor <init>(Lcom/google/a/b/h$b;)V
    .locals 1

    iput-object p1, p0, Lcom/google/a/b/h$b$1;->bhD:Lcom/google/a/b/h$b;

    iget-object v0, p1, Lcom/google/a/b/h$b;->bhB:Lcom/google/a/b/h;

    invoke-direct {p0, v0}, Lcom/google/a/b/h$c;-><init>(Lcom/google/a/b/h;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/h$b$1;->vt()Lcom/google/a/b/h$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/a/b/h$d;->bhL:Ljava/lang/Object;

    return-object v0
.end method
