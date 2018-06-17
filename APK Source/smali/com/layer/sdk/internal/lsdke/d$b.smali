.class public Lcom/layer/sdk/internal/lsdke/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdke/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/util/UUID;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdke/d$b;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdke/d$b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdke/d$b;->c:Z

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdke/d$b;->d:Ljava/util/UUID;

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdke/d$b;->e:Ljava/lang/String;

    return-void
.end method
