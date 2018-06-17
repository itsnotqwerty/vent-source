.class final Lcom/b/a/a/b/n$4;
.super Lcom/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic bLo:Lcom/b/a/a/b/k;

.field final synthetic bLp:Lcom/b/a/a/b/n;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;II)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/a/b/n$4;->bLp:Lcom/b/a/a/b/n;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/b/n$4;->a:Z

    iput p4, p0, Lcom/b/a/a/b/n$4;->c:I

    iput p5, p0, Lcom/b/a/a/b/n$4;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/b/n$4;->bLo:Lcom/b/a/a/b/k;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n$4;->bLp:Lcom/b/a/a/b/n;

    iget-boolean v1, p0, Lcom/b/a/a/b/n$4;->a:Z

    iget v2, p0, Lcom/b/a/a/b/n$4;->c:I

    iget v3, p0, Lcom/b/a/a/b/n$4;->d:I

    iget-object v4, p0, Lcom/b/a/a/b/n$4;->bLo:Lcom/b/a/a/b/k;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;ZIILcom/b/a/a/b/k;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
