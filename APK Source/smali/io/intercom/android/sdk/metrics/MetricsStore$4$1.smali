.class Lio/intercom/android/sdk/metrics/MetricsStore$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/metrics/MetricsStore$4;->onResponse(Lio/intercom/retrofit2/Call;Lio/intercom/retrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/android/sdk/metrics/MetricsStore$4;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/metrics/MetricsStore$4;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/metrics/MetricsStore$4$1;->this$1:Lio/intercom/android/sdk/metrics/MetricsStore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricsStore$4$1;->this$1:Lio/intercom/android/sdk/metrics/MetricsStore$4;

    iget-object v0, v0, Lio/intercom/android/sdk/metrics/MetricsStore$4;->this$0:Lio/intercom/android/sdk/metrics/MetricsStore;

    iget-object v1, p0, Lio/intercom/android/sdk/metrics/MetricsStore$4$1;->this$1:Lio/intercom/android/sdk/metrics/MetricsStore$4;

    iget-object v1, v1, Lio/intercom/android/sdk/metrics/MetricsStore$4;->val$metrics:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/android/sdk/metrics/MetricsStore$4$1;->this$1:Lio/intercom/android/sdk/metrics/MetricsStore$4;

    iget-object v2, v2, Lio/intercom/android/sdk/metrics/MetricsStore$4;->val$opsMetrics:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricsStore;->deleteFilesFor(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
