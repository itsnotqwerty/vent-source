.class final Lcom/b/a/a/b/n$3;
.super Lcom/b/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b/n;->g(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic bJN:Lcom/b/a/a/b/n;

.field final synthetic c:J


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/a/b/n$3;->bJN:Lcom/b/a/a/b/n;

    iput p4, p0, Lcom/b/a/a/b/n$3;->a:I

    iput-wide p5, p0, Lcom/b/a/a/b/n$3;->c:J

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n$3;->bJN:Lcom/b/a/a/b/n;

    iget-object v0, v0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    iget v1, p0, Lcom/b/a/a/b/n$3;->a:I

    iget-wide v2, p0, Lcom/b/a/a/b/n$3;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/b/a/a/b/c;->g(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
