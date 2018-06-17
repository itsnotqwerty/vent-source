.class final Lcom/layer/sdk/internal/lsdke/g$71;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/util/Collection;)V
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
.field final synthetic b:Lcom/layer/sdk/internal/lsdke/g;

.field final synthetic brz:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$71;->b:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$71;->brz:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$71;->brz:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/e;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$71;->brz:Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    const/4 v0, 0x0

    return-object v0
.end method
