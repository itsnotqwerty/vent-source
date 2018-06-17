.class public Lcom/layer/sdk/internal/lsdkd/f$a;
.super Ljava/lang/ref/SoftReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/d;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f$a;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/f$a;->a:Landroid/net/Uri;

    return-object v0
.end method
