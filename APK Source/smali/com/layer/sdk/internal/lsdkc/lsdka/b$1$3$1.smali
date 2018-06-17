.class final Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->a(Lcom/b/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqG:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;->bqG:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 9

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;->bqG:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;->bqG:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqw:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;Ljava/io/File;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;->bqG:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;

    iget-object v1, v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqE:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;->bqG:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iget-object v2, v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqB:Lcom/layer/sdk/internal/lsdkc/lsdka/b;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;->bqG:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iget-object v3, v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;JJ)V

    return-void
.end method
