.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$52;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Lcom/layer/b/d/h;
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
        "Lcom/layer/b/d/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$52;->a:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->f(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$52;->a:Ljava/lang/Long;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->t(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
