.class final Lcom/google/a/b/a/n$25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/a/n;->a(Lcom/google/a/c/a;Lcom/google/a/u;)Lcom/google/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bhs:Lcom/google/a/c/a;

.field final synthetic biq:Lcom/google/a/u;


# direct methods
.method constructor <init>(Lcom/google/a/c/a;Lcom/google/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/a/n$25;->bhs:Lcom/google/a/c/a;

    iput-object p2, p0, Lcom/google/a/b/a/n$25;->biq:Lcom/google/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 1
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

    iget-object v0, p0, Lcom/google/a/b/a/n$25;->bhs:Lcom/google/a/c/a;

    invoke-virtual {p2, v0}, Lcom/google/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/n$25;->biq:Lcom/google/a/u;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
