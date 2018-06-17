.class public final Lcom/b/a/a/a/k;
.super Lcom/b/a/b;


# instance fields
.field private final bJr:Lb/e;

.field private final bJy:Lcom/b/a/t;


# direct methods
.method public constructor <init>(Lcom/b/a/t;Lb/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/b;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/k;->bJy:Lcom/b/a/t;

    iput-object p2, p0, Lcom/b/a/a/a/k;->bJr:Lb/e;

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a/k;->bJy:Lcom/b/a/t;

    invoke-static {v0}, Lcom/b/a/a/a/j;->c(Lcom/b/a/t;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zo()Lcom/b/a/w;
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/a/k;->bJy:Lcom/b/a/t;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zp()Lb/e;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/k;->bJr:Lb/e;

    return-object v0
.end method
