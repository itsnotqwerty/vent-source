.class final Lcom/b/a/a/b/n$2;
.super Lcom/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b/n;->a(ILcom/b/a/a/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic bJN:Lcom/b/a/a/b/n;

.field final synthetic bJU:Lcom/b/a/a/b/a;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/n$2;->bJN:Lcom/b/a/a/b/n;

    iput p4, p0, Lcom/b/a/a/b/n$2;->a:I

    iput-object p5, p0, Lcom/b/a/a/b/n$2;->bJU:Lcom/b/a/a/b/a;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n$2;->bJN:Lcom/b/a/a/b/n;

    iget v1, p0, Lcom/b/a/a/b/n$2;->a:I

    iget-object v2, p0, Lcom/b/a/a/b/n$2;->bJU:Lcom/b/a/a/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/b/n;->b(ILcom/b/a/a/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
