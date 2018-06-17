.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/d;
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
        "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$31;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$31;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->m(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$31;->a:Ljava/lang/Long;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$31;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
