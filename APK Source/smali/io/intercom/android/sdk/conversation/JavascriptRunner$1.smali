.class Lio/intercom/android/sdk/conversation/JavascriptRunner$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/JavascriptRunner;->run(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/JavascriptRunner;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/JavascriptRunner;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner$1;->this$0:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner$1;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner$1;->this$0:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;->access$000(Lio/intercom/android/sdk/conversation/JavascriptRunner;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/JavascriptRunner$1;->val$script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
