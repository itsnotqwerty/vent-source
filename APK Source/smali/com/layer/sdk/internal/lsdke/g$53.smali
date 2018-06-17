.class final Lcom/layer/sdk/internal/lsdke/g$53;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)Ljava/util/List;
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
        "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

.field final synthetic d:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$53;->d:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$53;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$53;->b:Ljava/lang/Long;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdke/g$53;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$53;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$53;->b:Ljava/lang/Long;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/g$53;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-static {p1, v0, v1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
