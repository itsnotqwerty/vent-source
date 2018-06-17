.class final Lcom/layer/sdk/internal/lsdke/g$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/util/UUID;Ljava/lang/Long;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/util/UUID;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$16;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$16;->a:Ljava/util/UUID;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$16;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$16;->a:Ljava/util/UUID;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$16;->b:Ljava/lang/Long;

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/UUID;Ljava/lang/Long;)V

    const/4 v0, 0x0

    return-object v0
.end method
