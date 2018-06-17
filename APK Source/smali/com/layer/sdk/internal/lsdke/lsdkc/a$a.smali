.class public Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/Long;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->d:Ljava/lang/Long;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/a$a;->e:Ljava/lang/String;

    return-object v0
.end method
