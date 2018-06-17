.class final Landroid/support/d/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final tb:J

.field public final tc:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p3, v2

    if-nez v0, :cond_0

    iput-wide v2, p0, Landroid/support/d/a$d;->tb:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/support/d/a$d;->tc:J

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Landroid/support/d/a$d;->tb:J

    iput-wide p3, p0, Landroid/support/d/a$d;->tc:J

    goto :goto_0
.end method

.method synthetic constructor <init>(JJB)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/d/a$d;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/support/d/a$d;->tb:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/d/a$d;->tc:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
