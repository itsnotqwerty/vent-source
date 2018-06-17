.class public final Lio/intercom/a/b/a/k;
.super Lio/intercom/a/b/a/i;


# static fields
.field public static final cRt:Lio/intercom/a/b/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/b/a/k;

    invoke-direct {v0}, Lio/intercom/a/b/a/k;-><init>()V

    sput-object v0, Lio/intercom/a/b/a/k;->cRt:Lio/intercom/a/b/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lio/intercom/a/b/a/k;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lio/intercom/a/b/a/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
