.class public final Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkc/lsdka/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/layer/b/d/k;

.field private final b:Lcom/layer/sdk/internal/lsdkc/d;

.field private final c:Lcom/layer/sdk/internal/lsdkd/h;

.field private final d:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/h;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkc/d;Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->a:Lcom/layer/b/d/k;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkc/d;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->c:Lcom/layer/sdk/internal/lsdkd/h;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->d:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final a()Lcom/layer/b/d/k;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->a:Lcom/layer/b/d/k;

    return-object v0
.end method

.method public final b()Lcom/layer/sdk/internal/lsdkc/d;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkc/d;

    return-object v0
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->d:Ljava/util/UUID;

    return-object v0
.end method

.method public final d()Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;->c:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method
