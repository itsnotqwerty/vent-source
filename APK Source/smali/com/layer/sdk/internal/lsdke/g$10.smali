.class final Lcom/layer/sdk/internal/lsdke/g$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a([Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)Ljava/util/List;
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
        "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/lsdke/g;

.field final synthetic brs:[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$10;->b:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$10;->brs:[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$10;->brs:[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/b;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
