.class final Lcom/layer/sdk/internal/lsdke/g$62;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->u()Ljava/util/List;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic brp:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$62;->brp:Lcom/layer/sdk/internal/lsdke/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->k(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
