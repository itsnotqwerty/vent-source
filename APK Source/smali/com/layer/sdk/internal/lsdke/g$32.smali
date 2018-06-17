.class final Lcom/layer/sdk/internal/lsdke/g$32;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a([Lcom/layer/b/f/c/o;)Ljava/util/List;
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
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/lsdke/g;

.field final synthetic brv:[Lcom/layer/b/f/c/o;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;[Lcom/layer/b/f/c/o;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$32;->b:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$32;->brv:[Lcom/layer/b/f/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$32;->brv:[Lcom/layer/b/f/c/o;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/b/f/c/o;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
