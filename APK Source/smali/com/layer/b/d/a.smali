.class public Lcom/layer/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/d/a;->c:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/layer/b/d/a;->a:Ljava/util/UUID;

    iput-object p2, p0, Lcom/layer/b/d/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/b/d/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/layer/b/d/a;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/b/a/aa$a;)Lcom/b/a/aa$a;
    .locals 3

    const-string v0, "LAYER-APP-ID"

    invoke-virtual {p0}, Lcom/layer/b/d/a;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/b/d/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/layer/b/d/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/b/d/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/a;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/b/d/a;->e:Ljava/lang/String;

    return-object v0
.end method
