.class final Lcom/layer/sdk/internal/a$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/j$b",
        "<",
        "Lcom/layer/sdk/listeners/LayerTypingIndicatorListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/messaging/Conversation;

.field final synthetic bpQ:Lcom/layer/sdk/internal/a;

.field final synthetic bpR:Lcom/layer/sdk/messaging/Identity;

.field final synthetic bpS:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/messaging/Conversation;Lcom/layer/sdk/messaging/Identity;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$8;->bpQ:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$8;->a:Lcom/layer/sdk/messaging/Conversation;

    iput-object p3, p0, Lcom/layer/sdk/internal/a$8;->bpR:Lcom/layer/sdk/messaging/Identity;

    iput-object p4, p0, Lcom/layer/sdk/internal/a$8;->bpS:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$8;->bpQ:Lcom/layer/sdk/internal/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$8;->a:Lcom/layer/sdk/messaging/Conversation;

    iget-object v2, p0, Lcom/layer/sdk/internal/a$8;->bpR:Lcom/layer/sdk/messaging/Identity;

    iget-object v3, p0, Lcom/layer/sdk/internal/a$8;->bpS:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener;->onTypingIndicator(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/messaging/Conversation;Lcom/layer/sdk/messaging/Identity;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    return-void
.end method
