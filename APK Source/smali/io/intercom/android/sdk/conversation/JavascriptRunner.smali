.class public Lio/intercom/android/sdk/conversation/JavascriptRunner;
.super Ljava/lang/Object;


# instance fields
.field private final actionsAfterLoad:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private hasLoaded:Z

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;-><init>(Landroid/webkit/WebView;Ljava/util/Collection;)V

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->hasLoaded:Z

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->actionsAfterLoad:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/JavascriptRunner;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->webView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearPendingScripts()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->actionsAfterLoad:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->hasLoaded:Z

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;->clearPendingScripts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/intercom/android/sdk/conversation/JavascriptRunner$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/conversation/JavascriptRunner$1;-><init>(Lio/intercom/android/sdk/conversation/JavascriptRunner;Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->hasLoaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->actionsAfterLoad:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runPendingScripts()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->hasLoaded:Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner;->actionsAfterLoad:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;->clearPendingScripts()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
