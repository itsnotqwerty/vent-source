.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;I)Lcom/layer/b/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdke/lsdkc/b$d",
        "<",
        "Lcom/layer/b/d/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/util/UUID;I)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$1;->a:Ljava/util/UUID;

    iput p2, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    goto :goto_0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$1;->a:Ljava/util/UUID;

    iget v1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$1;->b:I

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
