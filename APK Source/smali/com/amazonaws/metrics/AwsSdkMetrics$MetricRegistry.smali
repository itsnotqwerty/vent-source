.class Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/AwsSdkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricRegistry"
.end annotation


# instance fields
.field private final aoO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation
.end field

.field private volatile aoP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazonaws/metrics/MetricType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auf:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aup:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aui:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aun:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auo:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auq:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aur:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aus:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aut:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auu:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    sget-object v1, Lcom/amazonaws/util/AWSServiceMetrics;->auF:Lcom/amazonaws/util/AWSServiceMetrics;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->jL()V

    return-void
.end method

.method private jL()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoP:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/amazonaws/metrics/MetricType;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->aoO:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/metrics/AwsSdkMetrics$MetricRegistry;->jL()V

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
