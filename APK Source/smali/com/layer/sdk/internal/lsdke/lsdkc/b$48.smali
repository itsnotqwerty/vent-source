.class final Lcom/layer/sdk/internal/lsdke/lsdkc/b$48;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkc/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/lsdkc/b;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Ljava/util/LinkedHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdke/lsdkc/b$d",
        "<",
        "Ljava/util/LinkedHashSet",
        "<",
        "Lcom/layer/sdk/internal/lsdkd/lsdka/n;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic brC:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$48;->brC:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic d(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkc/b$a;->p(Landroid/database/Cursor;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkc/b$48;->brC:Landroid/database/Cursor;

    return-object v0
.end method