.class final Lcom/b/a/a/b/n$5;
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
.field final synthetic a:I

.field final synthetic bJN:Lcom/b/a/a/b/n;

.field final synthetic c:Ljava/util/List;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/n$5;->bJN:Lcom/b/a/a/b/n;

    iput p4, p0, Lcom/b/a/a/b/n$5;->a:I

    iput-object p5, p0, Lcom/b/a/a/b/n$5;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/b/n$5;->bJN:Lcom/b/a/a/b/n;

    invoke-static {v0}, Lcom/b/a/a/b/n;->l(Lcom/b/a/a/b/n;)Lcom/b/a/a/b/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/b/o;->zI()Z

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n$5;->bJN:Lcom/b/a/a/b/n;

    iget-object v0, v0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    iget v1, p0, Lcom/b/a/a/b/n$5;->a:I

    sget-object v2, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;

    invoke-interface {v0, v1, v2}, Lcom/b/a/a/b/c;->a(ILcom/b/a/a/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
