.class final Lcom/layer/sdk/internal/lsdkk/q$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layer/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic btc:Ljava/net/URL;

.field final synthetic btd:Ljava/net/URL;

.field final synthetic bte:Ljava/net/URL;

.field final synthetic btf:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->btc:Ljava/net/URL;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->btd:Ljava/net/URL;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->bte:Ljava/net/URL;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->btf:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wC()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->btc:Ljava/net/URL;

    return-object v0
.end method

.method public final wD()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->btd:Ljava/net/URL;

    return-object v0
.end method

.method public final wE()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->bte:Ljava/net/URL;

    return-object v0
.end method

.method public final wF()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/q$2;->btf:Ljava/net/URL;

    return-object v0
.end method
