.class final Lcom/layer/sdk/internal/lsdke/g$64;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;

.field final synthetic bry:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$64;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$64;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/g$64;->bry:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$64;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/g$64;->bry:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
