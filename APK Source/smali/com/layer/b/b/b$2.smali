.class final Lcom/layer/b/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/b/b/b;->a()Lcom/layer/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btc:Ljava/net/URL;

.field final synthetic btd:Ljava/net/URL;

.field final synthetic bte:Ljava/net/URL;

.field final synthetic btf:Ljava/net/URL;

.field final synthetic buu:Lcom/layer/b/b/b;


# direct methods
.method constructor <init>(Lcom/layer/b/b/b;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/b/b$2;->buu:Lcom/layer/b/b/b;

    iput-object p2, p0, Lcom/layer/b/b/b$2;->btc:Ljava/net/URL;

    iput-object p3, p0, Lcom/layer/b/b/b$2;->btd:Ljava/net/URL;

    iput-object p4, p0, Lcom/layer/b/b/b$2;->bte:Ljava/net/URL;

    iput-object p5, p0, Lcom/layer/b/b/b$2;->btf:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wC()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/b/b$2;->bte:Ljava/net/URL;

    return-object v0
.end method

.method public final wD()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/b/b$2;->btd:Ljava/net/URL;

    return-object v0
.end method

.method public final wE()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/b/b$2;->btc:Ljava/net/URL;

    return-object v0
.end method

.method public final wF()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/b/b$2;->btf:Ljava/net/URL;

    return-object v0
.end method
