.class public final Lb/i;
.super Lb/t;


# instance fields
.field public cUA:Lb/t;


# direct methods
.method public constructor <init>(Lb/t;)V
    .locals 2

    invoke-direct {p0}, Lb/t;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/i;->cUA:Lb/t;

    return-void
.end method


# virtual methods
.method public final Lk()J
    .locals 2

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0}, Lb/t;->Lk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Ll()Z
    .locals 1

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0}, Lb/t;->Ll()Z

    move-result v0

    return v0
.end method

.method public final Lm()Lb/t;
    .locals 1

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0}, Lb/t;->Lm()Lb/t;

    move-result-object v0

    return-object v0
.end method

.method public final Ln()Lb/t;
    .locals 1

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0}, Lb/t;->Ln()Lb/t;

    move-result-object v0

    return-object v0
.end method

.method public final aw(J)Lb/t;
    .locals 1

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0, p1, p2}, Lb/t;->aw(J)Lb/t;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lb/t;
    .locals 1

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0, p1, p2, p3}, Lb/t;->c(JLjava/util/concurrent/TimeUnit;)Lb/t;

    move-result-object v0

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0}, Lb/t;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0}, Lb/t;->g()V

    return-void
.end method
