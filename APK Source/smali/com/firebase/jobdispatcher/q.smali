.class final Lcom/firebase/jobdispatcher/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/firebase/jobdispatcher/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/q$a;
    }
.end annotation


# instance fields
.field final axF:Ljava/lang/String;

.field private final axG:Lcom/firebase/jobdispatcher/u;

.field private final axH:Lcom/firebase/jobdispatcher/x;

.field private final axI:I

.field private final axJ:Z

.field private final axK:[I

.field private final axL:Z

.field private final axN:Lcom/firebase/jobdispatcher/aa;

.field private final extras:Landroid/os/Bundle;

.field final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/firebase/jobdispatcher/q$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/firebase/jobdispatcher/q$a;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    iget-object v0, p1, Lcom/firebase/jobdispatcher/q$a;->axF:Ljava/lang/String;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    iget-object v0, p1, Lcom/firebase/jobdispatcher/q$a;->axG:Lcom/firebase/jobdispatcher/u;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q;->axG:Lcom/firebase/jobdispatcher/u;

    iget-object v0, p1, Lcom/firebase/jobdispatcher/q$a;->axH:Lcom/firebase/jobdispatcher/x;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q;->axH:Lcom/firebase/jobdispatcher/x;

    iget-boolean v0, p1, Lcom/firebase/jobdispatcher/q$a;->axJ:Z

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/q;->axJ:Z

    iget v0, p1, Lcom/firebase/jobdispatcher/q$a;->axI:I

    iput v0, p0, Lcom/firebase/jobdispatcher/q;->axI:I

    iget-object v0, p1, Lcom/firebase/jobdispatcher/q$a;->axK:[I

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q;->axK:[I

    iget-object v0, p1, Lcom/firebase/jobdispatcher/q$a;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q;->extras:Landroid/os/Bundle;

    iget-boolean v0, p1, Lcom/firebase/jobdispatcher/q$a;->axL:Z

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/q;->axL:Z

    iget-object v0, p1, Lcom/firebase/jobdispatcher/q$a;->axN:Lcom/firebase/jobdispatcher/aa;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q;->axN:Lcom/firebase/jobdispatcher/aa;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/jobdispatcher/q$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/q;-><init>(Lcom/firebase/jobdispatcher/q$a;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/firebase/jobdispatcher/q;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    iget-object v3, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final kL()[I
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q;->axK:[I

    return-object v0
.end method

.method public final kM()Lcom/firebase/jobdispatcher/x;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q;->axH:Lcom/firebase/jobdispatcher/x;

    return-object v0
.end method

.method public final kN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/q;->axL:Z

    return v0
.end method

.method public final kO()Lcom/firebase/jobdispatcher/u;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q;->axG:Lcom/firebase/jobdispatcher/u;

    return-object v0
.end method

.method public final kP()I
    .locals 1

    iget v0, p0, Lcom/firebase/jobdispatcher/q;->axI:I

    return v0
.end method

.method public final kQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/q;->axJ:Z

    return v0
.end method

.method public final kR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JobInvocation{tag=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->axG:Lcom/firebase/jobdispatcher/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recurring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/firebase/jobdispatcher/q;->axJ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/firebase/jobdispatcher/q;->axI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->axK:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->axH:Lcom/firebase/jobdispatcher/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replaceCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/firebase/jobdispatcher/q;->axL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/q;->axN:Lcom/firebase/jobdispatcher/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
