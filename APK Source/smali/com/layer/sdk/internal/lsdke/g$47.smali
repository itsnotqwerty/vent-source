.class final Lcom/layer/sdk/internal/lsdke/g$47;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdke/g;->a(Lcom/layer/sdk/messaging/Conversation;)Ljava/lang/Boolean;
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
.field final synthetic a:Lcom/layer/sdk/messaging/Conversation;

.field final synthetic b:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/messaging/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/g$47;->b:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/g$47;->a:Lcom/layer/sdk/messaging/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic t(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/g$47;->a:Lcom/layer/sdk/messaging/Conversation;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdke/lsdkc/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/messaging/Conversation;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
