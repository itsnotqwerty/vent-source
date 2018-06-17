.class public final Lio/intercom/a/a/a/c/c/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final cMU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/intercom/a/a/a/c/c/m$a",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private cGk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->ft(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/c/m$a;->cMU:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ay(Ljava/lang/Object;)Lio/intercom/a/a/a/c/c/m$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lio/intercom/a/a/a/c/c/m$a",
            "<TA;>;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lio/intercom/a/a/a/c/c/m$a;->cMU:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/a/a/a/c/c/m$a;->cMU:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/m$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/c/c/m$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/m$a;-><init>()V

    :cond_0
    iput-object p0, v0, Lio/intercom/a/a/a/c/c/m$a;->cGk:Ljava/lang/Object;

    iput v2, v0, Lio/intercom/a/a/a/c/c/m$a;->width:I

    iput v2, v0, Lio/intercom/a/a/a/c/c/m$a;->height:I

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/c/c/m$a;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/c/m$a;

    iget v1, p0, Lio/intercom/a/a/a/c/c/m$a;->width:I

    iget v2, p1, Lio/intercom/a/a/a/c/c/m$a;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/c/c/m$a;->height:I

    iget v2, p1, Lio/intercom/a/a/a/c/c/m$a;->height:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/m$a;->cGk:Ljava/lang/Object;

    iget-object v2, p1, Lio/intercom/a/a/a/c/c/m$a;->cGk:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/c/m$a;->height:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/a/a/a/c/c/m$a;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/m$a;->cGk:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final release()V
    .locals 2

    sget-object v1, Lio/intercom/a/a/a/c/c/m$a;->cMU:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/a/a/a/c/c/m$a;->cMU:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
