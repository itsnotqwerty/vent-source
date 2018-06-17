.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$44;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/f;)Ljava/lang/Integer;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdke/f;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/f;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$44;->a:Lcom/layer/sdk/internal/lsdke/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->u(Landroid/database/Cursor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$44;->a:Lcom/layer/sdk/internal/lsdke/f;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/f;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
