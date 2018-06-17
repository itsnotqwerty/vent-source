.class public Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;
.super Lio/intercom/android/sdk/utilities/SimpleTextWatcher;


# instance fields
.field private conversationId:Ljava/lang/String;

.field private hasTrackedEvent:Z

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/utilities/SimpleTextWatcher;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->hasTrackedEvent:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->typeInNewConversation()V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->hasTrackedEvent:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->typeInConversation(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->hasTrackedEvent:Z

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/metrics/MetricsComposerTextWatcher;->conversationId:Ljava/lang/String;

    return-void
.end method
