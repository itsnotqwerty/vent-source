.class public Lcom/layer/sdk/internal/c;
.super Lcom/layer/b/d/a;


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Landroid/net/Uri;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/layer/b/d/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/c;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/c;->a:Landroid/net/Uri;

    return-object v0
.end method
