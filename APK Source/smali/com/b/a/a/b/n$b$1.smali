.class final Lcom/b/a/a/b/n$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b/n$b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bLy:Lcom/b/a/a/b/n$b;


# direct methods
.method constructor <init>(Lcom/b/a/a/b/n$b;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/n$b$1;->bLy:Lcom/b/a/a/b/n$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/b/n$b$1;->bLy:Lcom/b/a/a/b/n$b;

    iget-object v0, v0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;)Lcom/b/a/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/n$b$1;->bLy:Lcom/b/a/a/b/n$b;

    iget-object v0, v0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;)Lcom/b/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/b/n$b$1;->bLy:Lcom/b/a/a/b/n$b;

    iget-object v1, v1, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v1}, Lcom/b/a/a/b/n;->b(Lcom/b/a/a/b/n;)Lcom/b/a/m;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/b/a/n;->a(Lcom/b/a/m;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
