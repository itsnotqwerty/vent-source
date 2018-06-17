.class final Lcom/layer/sdk/internal/lsdke/g$70;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$70;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$70;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$70;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$70;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$70;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V

    const/4 v0, 0x0

    return-object v0
.end method
