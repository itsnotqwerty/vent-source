.class public Lio/intercom/android/sdk/blocks/messengercard/CardWebView;
.super Landroid/webkit/WebView;


# instance fields
.field private bus:Lio/intercom/a/c/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->bus:Lio/intercom/a/c/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->bus:Lio/intercom/a/c/a/b;

    invoke-virtual {v0, p0}, Lio/intercom/a/c/a/b;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCardUpdated(Lio/intercom/android/sdk/models/events/CardUpdatedEvent;)V
    .locals 0
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->reload()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->bus:Lio/intercom/a/c/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->bus:Lio/intercom/a/c/a/b;

    invoke-virtual {v0, p0}, Lio/intercom/a/c/a/b;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setUp(Lio/intercom/a/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->bus:Lio/intercom/a/c/a/b;

    return-void
.end method
