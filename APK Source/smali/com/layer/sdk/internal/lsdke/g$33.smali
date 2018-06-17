.class final Lcom/layer/sdk/internal/lsdke/g$33;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
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
        "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$33;->b:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$33;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$33;->a:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    return-object v0
.end method
