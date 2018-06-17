.class Lio/intercom/android/sdk/metrics/MetricsStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/metrics/MetricsStore;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/metrics/MetricsStore;

.field final synthetic val$metric:Lio/intercom/android/sdk/metrics/MetricObject;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/metrics/MetricObject;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/metrics/MetricsStore$1;->this$0:Lio/intercom/android/sdk/metrics/MetricsStore;

    iput-object p2, p0, Lio/intercom/android/sdk/metrics/MetricsStore$1;->val$metric:Lio/intercom/android/sdk/metrics/MetricObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricsStore$1;->this$0:Lio/intercom/android/sdk/metrics/MetricsStore;

    invoke-static {v0}, Lio/intercom/android/sdk/metrics/MetricsStore;->access$000(Lio/intercom/android/sdk/metrics/MetricsStore;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricsStore$1;->this$0:Lio/intercom/android/sdk/metrics/MetricsStore;

    invoke-static {v0}, Lio/intercom/android/sdk/metrics/MetricsStore;->access$200(Lio/intercom/android/sdk/metrics/MetricsStore;)Lio/intercom/android/sdk/persistence/JsonStorage;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/metrics/MetricsStore$1;->val$metric:Lio/intercom/android/sdk/metrics/MetricObject;

    iget-object v2, p0, Lio/intercom/android/sdk/metrics/MetricsStore$1;->this$0:Lio/intercom/android/sdk/metrics/MetricsStore;

    iget-object v3, p0, Lio/intercom/android/sdk/metrics/MetricsStore$1;->val$metric:Lio/intercom/android/sdk/metrics/MetricObject;

    invoke-static {v2, v3}, Lio/intercom/android/sdk/metrics/MetricsStore;->access$100(Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/metrics/MetricObject;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/persistence/JsonStorage;->saveToFileAsJson(Ljava/lang/Object;Ljava/io/File;)V

    goto :goto_0
.end method
