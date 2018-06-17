.class public Lcom/layer/sdk/internal/lsdkd/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkd/a",
        "<",
        "Landroid/net/Uri;",
        "Lcom/layer/sdk/messaging/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;)Lcom/layer/sdk/messaging/Message;
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message;

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/layer/sdk/internal/lsdkd/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/a$a;->a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;)Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    return-object v0
.end method
