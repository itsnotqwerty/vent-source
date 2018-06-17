.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$50;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->r(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/LinkedHashSet;
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
        "Ljava/util/LinkedHashSet",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->p(Landroid/database/Cursor;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->L(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
