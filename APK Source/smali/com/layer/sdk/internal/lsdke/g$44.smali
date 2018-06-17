.class final Lcom/layer/sdk/internal/lsdke/g$44;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->b(Lcom/layer/sdk/messaging/Conversation;I)V
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
.field final synthetic a:Lcom/layer/sdk/messaging/Conversation;

.field final synthetic b:I

.field final synthetic brt:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/messaging/Conversation;I)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$44;->brt:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$44;->a:Lcom/layer/sdk/messaging/Conversation;

    iput p3, p0, Lcom/layer/sdk/internal/lsdke/g$44;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$44;->a:Lcom/layer/sdk/messaging/Conversation;

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lcom/layer/sdk/internal/lsdke/g$44;->b:I

    invoke-static {p1, v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;I)V

    const/4 v0, 0x0

    return-object v0
.end method
