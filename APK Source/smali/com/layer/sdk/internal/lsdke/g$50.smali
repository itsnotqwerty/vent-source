.class final Lcom/layer/sdk/internal/lsdke/g$50;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

.field final synthetic b:Ljava/util/UUID;

.field final synthetic brw:Lcom/layer/sdk/internal/lsdke/g;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$50;->brw:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$50;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$50;->b:Ljava/util/UUID;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdke/g$50;->c:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdke/g$50;->d:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$50;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$50;->b:Ljava/util/UUID;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/g$50;->c:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdke/g$50;->d:Ljava/lang/Integer;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
