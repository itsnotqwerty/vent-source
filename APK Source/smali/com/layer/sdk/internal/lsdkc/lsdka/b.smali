.class public Lcom/layer/sdk/internal/lsdkc/lsdka/b;
.super Lcom/layer/sdk/internal/lsdkc/lsdka/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkc/lsdka/b$b;,
        Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkc/lsdka/a",
        "<",
        "Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;",
        "Lcom/layer/sdk/internal/lsdkc/lsdka/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/a/a;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;-><init>(Lcom/layer/a/a/a;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Ljava/lang/Object;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    return-void
.end method

.method private static b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Z
    .locals 1

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Z

    move-result v0

    return v0
.end method

.method static synthetic wu()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;)Lcom/layer/sdk/internal/lsdkc/lsdka/b$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkc/lsdka/b$b;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$b;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;->a()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/layer/sdk/internal/lsdkc/e;->a(Ljava/io/File;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;-><init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b;Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/h;->a(Ljava/io/File;Lcom/layer/sdk/internal/lsdkk/h$a;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    throw v0

    :cond_1
    return-object v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;)Lcom/layer/sdk/internal/lsdkc/lsdka/b$b;

    move-result-object v0

    return-object v0
.end method
