.class final Lio/intercom/a/a/a/c/b/a/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final cLr:Lio/intercom/a/a/a/c/b/a/j$b;

.field cLs:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/a/j$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/a/j$a;->cLr:Lio/intercom/a/a/a/c/b/a/j$b;

    return-void
.end method


# virtual methods
.method public final Iy()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j$a;->cLr:Lio/intercom/a/a/a/c/b/a/j$b;

    invoke-virtual {v0, p0}, Lio/intercom/a/a/a/c/b/a/j$b;->a(Lio/intercom/a/a/a/c/b/a/m;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/c/b/a/j$a;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/b/a/j$a;

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    iget v2, p1, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/j$a;->cLs:Ljava/lang/Class;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/a/j$a;->cLs:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j$a;->cLs:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/j$a;->cLs:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/j$a;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/j$a;->cLs:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
