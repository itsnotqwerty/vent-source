.class final Lio/intercom/a/a/a/c/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/h;


# static fields
.field private static final cKY:Lio/intercom/a/a/a/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i/e",
            "<",
            "Ljava/lang/Class",
            "<*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final cFw:Lio/intercom/a/a/a/c/b/a/b;

.field private final cIS:Lio/intercom/a/a/a/c/h;

.field private final cIX:Lio/intercom/a/a/a/c/h;

.field private final cIZ:Lio/intercom/a/a/a/c/j;

.field private final cKZ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final cLa:Lio/intercom/a/a/a/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/m",
            "<*>;"
        }
    .end annotation
.end field

.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/intercom/a/a/a/i/e;

    const-wide/16 v2, 0x32

    invoke-direct {v0, v2, v3}, Lio/intercom/a/a/a/i/e;-><init>(J)V

    sput-object v0, Lio/intercom/a/a/a/c/b/w;->cKY:Lio/intercom/a/a/a/i/e;

    return-void
.end method

.method constructor <init>(Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/h;IILio/intercom/a/a/a/c/m;Ljava/lang/Class;Lio/intercom/a/a/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/a/b;",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/h;",
            "II",
            "Lio/intercom/a/a/a/c/m",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/w;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/w;->cIS:Lio/intercom/a/a/a/c/h;

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/w;->cIX:Lio/intercom/a/a/a/c/h;

    iput p4, p0, Lio/intercom/a/a/a/c/b/w;->width:I

    iput p5, p0, Lio/intercom/a/a/a/c/b/w;->height:I

    iput-object p6, p0, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    iput-object p7, p0, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    iput-object p8, p0, Lio/intercom/a/a/a/c/b/w;->cIZ:Lio/intercom/a/a/a/c/j;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/c/b/w;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/b/w;

    iget v1, p0, Lio/intercom/a/a/a/c/b/w;->height:I

    iget v2, p1, Lio/intercom/a/a/a/c/b/w;->height:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/c/b/w;->width:I

    iget v2, p1, Lio/intercom/a/a/a/c/b/w;->width:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/i;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIS:Lio/intercom/a/a/a/c/h;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/w;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v2}, Lio/intercom/a/a/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIX:Lio/intercom/a/a/a/c/h;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/w;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v2}, Lio/intercom/a/a/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIZ:Lio/intercom/a/a/a/c/j;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/w;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/c/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/w;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/a/a/a/c/b/w;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/a/a/a/c/b/w;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/m;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/a/a/a/c/b/w;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/a/a/a/c/b/w;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/w;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    const-class v1, [B

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/b/a/b;->C(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/b/w;->width:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/b/w;->height:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, p1}, Lio/intercom/a/a/a/c/h;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, p1}, Lio/intercom/a/a/a/c/h;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cLa:Lio/intercom/a/a/a/c/m;

    invoke-interface {v1, p1}, Lio/intercom/a/a/a/c/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1, p1}, Lio/intercom/a/a/a/c/j;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    sget-object v1, Lio/intercom/a/a/a/c/b/w;->cKY:Lio/intercom/a/a/a/i/e;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/i/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/intercom/a/a/a/c/b/w;->cIb:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lio/intercom/a/a/a/c/b/w;->cKY:Lio/intercom/a/a/a/i/e;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/w;->cKZ:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Lio/intercom/a/a/a/i/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/w;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    return-void
.end method
