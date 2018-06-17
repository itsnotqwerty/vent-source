.class public final Lcom/layer/atlas/a;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$Weak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/a$a;,
        Lcom/layer/atlas/a$b;
    }
.end annotation


# instance fields
.field public volatile bmV:Lcom/layer/sdk/messaging/Conversation;

.field private final bnq:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;",
            ">;"
        }
    .end annotation
.end field

.field public volatile bnr:Lcom/layer/atlas/a$a;

.field private volatile bns:Lcom/layer/atlas/a$b;

.field private volatile bnt:Landroid/view/View;

.field private volatile mActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/a;->bnq:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/atlas/a;->mActive:Z

    return-void
.end method

.method private wi()Lcom/layer/atlas/a;
    .locals 3

    iget-object v0, p0, Lcom/layer/atlas/a;->bns:Lcom/layer/atlas/a$b;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/a;->bns:Lcom/layer/atlas/a$b;

    iget-object v1, p0, Lcom/layer/atlas/a;->bnt:Landroid/view/View;

    iget-object v2, p0, Lcom/layer/atlas/a;->bnq:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v1, v2}, Lcom/layer/atlas/a$b;->a(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/layer/atlas/a$b;)Lcom/layer/atlas/a;
    .locals 1

    iput-object p1, p0, Lcom/layer/atlas/a;->bns:Lcom/layer/atlas/a$b;

    invoke-virtual {p0}, Lcom/layer/atlas/a;->removeAllViews()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/atlas/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/layer/atlas/a$b;->as(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/atlas/a;->bnt:Landroid/view/View;

    iget-object v0, p0, Lcom/layer/atlas/a;->bnt:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/layer/atlas/a;->addView(Landroid/view/View;)V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/atlas/a;->bnt:Landroid/view/View;

    goto :goto_0
.end method

.method protected final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/layer/atlas/a;->wi()Lcom/layer/atlas/a;

    return-void
.end method

.method public final onTypingIndicator(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/messaging/Conversation;Lcom/layer/sdk/messaging/Identity;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/layer/atlas/a;->bmV:Lcom/layer/sdk/messaging/Conversation;

    if-eq v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->FINISHED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/layer/atlas/a;->bnq:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/layer/atlas/a;->bnq:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/layer/atlas/a;->mActive:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/layer/atlas/a;->mActive:Z

    iget-object v0, p0, Lcom/layer/atlas/a;->bnr:Lcom/layer/atlas/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/atlas/a;->bnr:Lcom/layer/atlas/a$a;

    invoke-interface {v0, p0, v2}, Lcom/layer/atlas/a$a;->a(Lcom/layer/atlas/a;Z)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/layer/atlas/a;->wi()Lcom/layer/atlas/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/atlas/a;->bnq:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/layer/atlas/a;->mActive:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/layer/atlas/a;->mActive:Z

    iget-object v0, p0, Lcom/layer/atlas/a;->bnr:Lcom/layer/atlas/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/atlas/a;->bnr:Lcom/layer/atlas/a$a;

    invoke-interface {v0, p0, v3}, Lcom/layer/atlas/a$a;->a(Lcom/layer/atlas/a;Z)V

    goto :goto_2
.end method
