.class public Lcom/amazonaws/internal/SdkDigestInputStream;
.super Ljava/security/DigestInputStream;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/internal/SdkDigestInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazonaws/internal/SdkDigestInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public final skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    const-wide/16 v0, 0x800

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v2, v0, [B

    move-wide v0, p1

    :goto_1
    cmp-long v3, v0, v6

    if-lez v3, :cond_4

    const/4 v3, 0x0

    array-length v4, v2

    int-to-long v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amazonaws/internal/SdkDigestInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_2
    sub-long/2addr p1, v0

    goto :goto_0

    :cond_3
    int-to-long v4, v3

    sub-long/2addr v0, v4

    goto :goto_1

    :cond_4
    sget-boolean v2, Lcom/amazonaws/internal/SdkDigestInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
