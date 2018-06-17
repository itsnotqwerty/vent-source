.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Ljava/util/List;
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
        "Lcom/layer/sdk/internal/lsdkd/lsdka/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->s(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;->b:Ljava/lang/Long;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$40;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-static {p1, v0, v1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
