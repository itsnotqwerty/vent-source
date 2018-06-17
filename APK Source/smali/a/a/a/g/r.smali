.class public final La/a/a/g/r;
.super La/a/a/g/g;


# instance fields
.field public final cuj:La/a/a/e;

.field public final cuk:La/a/a/e;

.field public final cul:J

.field public final cum:I

.field public final cun:I

.field public final cuo:I

.field public final cup:J


# direct methods
.method public constructor <init>(La/a/a/e;La/a/a/e;JIIIJ)V
    .locals 0

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-object p1, p0, La/a/a/g/r;->cuj:La/a/a/e;

    iput-object p2, p0, La/a/a/g/r;->cuk:La/a/a/e;

    iput-wide p3, p0, La/a/a/g/r;->cul:J

    iput p5, p0, La/a/a/g/r;->cum:I

    iput p6, p0, La/a/a/g/r;->cun:I

    iput p7, p0, La/a/a/g/r;->cuo:I

    iput-wide p8, p0, La/a/a/g/r;->cup:J

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/a/a/g/r;->cuj:La/a/a/e;

    invoke-virtual {v0, p1}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, La/a/a/g/r;->cuk:La/a/a/e;

    invoke-virtual {v0, p1}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    iget-wide v0, p0, La/a/a/g/r;->cul:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, La/a/a/g/r;->cum:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, La/a/a/g/r;->cun:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, La/a/a/g/r;->cuo:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v0, p0, La/a/a/g/r;->cup:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/g/r;->cuj:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/g/r;->cuk:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, La/a/a/g/r;->cul:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/g/r;->cum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/g/r;->cun:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/g/r;->cuo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, La/a/a/g/r;->cup:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
