.class final Lcom/layer/sdk/internal/lsdke/g$28;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->b(Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Lcom/layer/b/d/h;
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
        "Lcom/layer/b/d/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/b/d/h;

.field final synthetic b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$28;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$28;->a:Lcom/layer/b/d/h;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$28;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$28;->a:Lcom/layer/b/d/h;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$28;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkc/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;Z)Lcom/layer/b/d/h;

    move-result-object v0

    return-object v0
.end method
