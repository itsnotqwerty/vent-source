.class public final Lcom/firebase/jobdispatcher/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/firebase/jobdispatcher/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public axG:Lcom/firebase/jobdispatcher/u;

.field public axH:Lcom/firebase/jobdispatcher/x;

.field public axI:I

.field public axJ:Z

.field public axK:[I

.field public axL:Z

.field axM:Ljava/lang/String;

.field private final axn:Lcom/firebase/jobdispatcher/ab;

.field public extras:Landroid/os/Bundle;

.field public tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/ab;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/firebase/jobdispatcher/z;->ayi:Lcom/firebase/jobdispatcher/u$c;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axG:Lcom/firebase/jobdispatcher/u;

    const/4 v0, 0x1

    iput v0, p0, Lcom/firebase/jobdispatcher/n$a;->axI:I

    sget-object v0, Lcom/firebase/jobdispatcher/x;->ayb:Lcom/firebase/jobdispatcher/x;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axH:Lcom/firebase/jobdispatcher/x;

    iput-boolean v1, p0, Lcom/firebase/jobdispatcher/n$a;->axL:Z

    iput-boolean v1, p0, Lcom/firebase/jobdispatcher/n$a;->axJ:Z

    iput-object p1, p0, Lcom/firebase/jobdispatcher/n$a;->axn:Lcom/firebase/jobdispatcher/ab;

    return-void
.end method

.method constructor <init>(Lcom/firebase/jobdispatcher/ab;Lcom/firebase/jobdispatcher/r;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/firebase/jobdispatcher/z;->ayi:Lcom/firebase/jobdispatcher/u$c;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axG:Lcom/firebase/jobdispatcher/u;

    const/4 v0, 0x1

    iput v0, p0, Lcom/firebase/jobdispatcher/n$a;->axI:I

    sget-object v0, Lcom/firebase/jobdispatcher/x;->ayb:Lcom/firebase/jobdispatcher/x;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axH:Lcom/firebase/jobdispatcher/x;

    iput-boolean v1, p0, Lcom/firebase/jobdispatcher/n$a;->axL:Z

    iput-boolean v1, p0, Lcom/firebase/jobdispatcher/n$a;->axJ:Z

    iput-object p1, p0, Lcom/firebase/jobdispatcher/n$a;->axn:Lcom/firebase/jobdispatcher/ab;

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->tag:Ljava/lang/String;

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->kR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axM:Ljava/lang/String;

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->kO()Lcom/firebase/jobdispatcher/u;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axG:Lcom/firebase/jobdispatcher/u;

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->kQ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/n$a;->axJ:Z

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->kP()I

    move-result v0

    iput v0, p0, Lcom/firebase/jobdispatcher/n$a;->axI:I

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->kL()[I

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axK:[I

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->extras:Landroid/os/Bundle;

    invoke-interface {p2}, Lcom/firebase/jobdispatcher/r;->kM()Lcom/firebase/jobdispatcher/x;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axH:Lcom/firebase/jobdispatcher/x;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Class;)Lcom/firebase/jobdispatcher/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/firebase/jobdispatcher/s;",
            ">;)",
            "Lcom/firebase/jobdispatcher/n$a;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axM:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final kL()[I
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axK:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axK:[I

    goto :goto_0
.end method

.method public final kM()Lcom/firebase/jobdispatcher/x;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axH:Lcom/firebase/jobdispatcher/x;

    return-object v0
.end method

.method public final kN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/n$a;->axL:Z

    return v0
.end method

.method public final kO()Lcom/firebase/jobdispatcher/u;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axG:Lcom/firebase/jobdispatcher/u;

    return-object v0
.end method

.method public final kP()I
    .locals 1

    iget v0, p0, Lcom/firebase/jobdispatcher/n$a;->axI:I

    return v0
.end method

.method public final kQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/n$a;->axJ:Z

    return v0
.end method

.method public final kR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axM:Ljava/lang/String;

    return-object v0
.end method

.method public final kS()Lcom/firebase/jobdispatcher/n;
    .locals 3

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n$a;->axn:Lcom/firebase/jobdispatcher/ab;

    invoke-virtual {v0, p0}, Lcom/firebase/jobdispatcher/ab;->a(Lcom/firebase/jobdispatcher/r;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/firebase/jobdispatcher/ab$a;

    const-string v2, "JobParameters is invalid"

    invoke-direct {v1, v2, v0}, Lcom/firebase/jobdispatcher/ab$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/firebase/jobdispatcher/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/firebase/jobdispatcher/n;-><init>(Lcom/firebase/jobdispatcher/n$a;B)V

    return-object v0
.end method
