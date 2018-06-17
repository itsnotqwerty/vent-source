.class public final Lcom/b/a/ac$a$a;
.super Lcom/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/ac$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final bKS:Lb/e;

.field final synthetic bME:Lcom/b/a/ac$a;

.field private final bqx:Lcom/b/a/w;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/b/a/ac$a;Lb/e;)V
    .locals 2

    iput-object p1, p0, Lcom/b/a/ac$a$a;->bME:Lcom/b/a/ac$a;

    invoke-direct {p0}, Lcom/b/a/b;-><init>()V

    iget-object v0, p1, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set headers before setting the body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/b/a/t$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/b/a/ac$a$a;->bqx:Lcom/b/a/w;

    iput-object p2, p0, Lcom/b/a/ac$a$a;->bKS:Lb/e;

    iget-object v0, p1, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    invoke-virtual {v0}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/j;->c(Lcom/b/a/t;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/ac$a$a;->d:J

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/b/a/ac$a$a;->d:J

    return-wide v0
.end method

.method public final zo()Lcom/b/a/w;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac$a$a;->bqx:Lcom/b/a/w;

    return-object v0
.end method

.method public final zp()Lb/e;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac$a$a;->bKS:Lb/e;

    return-object v0
.end method
