.class final Lcom/layer/sdk/internal/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Landroid/content/Context;Lcom/layer/sdk/internal/c;Lcom/layer/b/b/b;Lcom/layer/sdk/internal/lsdka/a;Lcom/layer/b/a/b;Lcom/layer/sdk/internal/a$d;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$1;->a:Lcom/layer/sdk/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
