.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Ljava/util/List;
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
        "Ljava/util/List",
        "<",
        "Lcom/layer/b/d/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/UUID;

.field final synthetic brB:Lcom/layer/b/f/c/f;

.field final synthetic c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;->brB:Lcom/layer/b/f/c/f;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;->b:Ljava/util/UUID;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;->brB:Lcom/layer/b/f/c/f;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;->b:Ljava/util/UUID;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$23;->c:Ljava/lang/Integer;

    invoke-static {p1, v0, v1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/f/c/f;Ljava/util/UUID;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
