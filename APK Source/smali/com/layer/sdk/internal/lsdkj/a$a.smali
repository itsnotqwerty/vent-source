.class public Lcom/layer/sdk/internal/lsdkj/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/layer/b/a/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layer/b/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkj/a$a;->a:Lcom/layer/b/a/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkj/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkj/a$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkj/a$a;)Lcom/layer/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/a$a;->a:Lcom/layer/b/a/a;

    return-object v0
.end method
