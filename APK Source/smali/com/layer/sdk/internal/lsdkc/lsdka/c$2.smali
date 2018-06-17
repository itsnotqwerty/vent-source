.class final Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdki/lsdkc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;)Lcom/layer/sdk/internal/lsdkc/lsdka/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

.field final synthetic bqI:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

.field final synthetic bqJ:Lcom/layer/sdk/internal/lsdkc/lsdka/c;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/lsdka/c;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;->bqJ:Lcom/layer/sdk/internal/lsdkc/lsdka/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;->bqI:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 9

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;->bqI:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;->bqJ:Lcom/layer/sdk/internal/lsdkc/lsdka/c;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$2;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;JJ)V

    return-void
.end method
