.class final Lcom/layer/sdk/internal/lsdke/g$69;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdke/g$b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$69;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput p2, p0, Lcom/layer/sdk/internal/lsdke/g$69;->a:I

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$69;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/layer/sdk/internal/lsdke/f;->a:Lcom/layer/sdk/internal/lsdke/f;

    iget v1, p0, Lcom/layer/sdk/internal/lsdke/g$69;->a:I

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/f;I)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$69;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$69;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$69;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
