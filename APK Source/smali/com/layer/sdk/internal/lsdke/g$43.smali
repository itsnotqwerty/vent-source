.class final Lcom/layer/sdk/internal/lsdke/g$43;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/lang/Iterable;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdke/g$a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/layer/sdk/internal/lsdke/lsdka/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;

.field final synthetic bru:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$43;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$43;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$43;->bru:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$43;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$43;->bru:Ljava/lang/Iterable;

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
