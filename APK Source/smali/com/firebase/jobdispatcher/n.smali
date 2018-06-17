.class public final Lcom/firebase/jobdispatcher/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/firebase/jobdispatcher/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/n$a;
    }
.end annotation


# instance fields
.field final axF:Ljava/lang/String;

.field final axG:Lcom/firebase/jobdispatcher/u;

.field private final axH:Lcom/firebase/jobdispatcher/x;

.field private final axI:I

.field private final axJ:Z

.field private final axK:[I

.field private final axL:Z

.field private final extras:Landroid/os/Bundle;

.field final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/firebase/jobdispatcher/n$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/firebase/jobdispatcher/n$a;->axM:Ljava/lang/String;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n;->axF:Ljava/lang/String;

    iget-object v0, p1, Lcom/firebase/jobdispatcher/n$a;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/firebase/jobdispatcher/n;->extras:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/firebase/jobdispatcher/n$a;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n;->tag:Ljava/lang/String;

    iget-object v0, p1, Lcom/firebase/jobdispatcher/n$a;->axG:Lcom/firebase/jobdispatcher/u;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n;->axG:Lcom/firebase/jobdispatcher/u;

    iget-object v0, p1, Lcom/firebase/jobdispatcher/n$a;->axH:Lcom/firebase/jobdispatcher/x;

    iput-object v0, p0, Lcom/firebase/jobdispatcher/n;->axH:Lcom/firebase/jobdispatcher/x;

    iget v0, p1, Lcom/firebase/jobdispatcher/n$a;->axI:I

    iput v0, p0, Lcom/firebase/jobdispatcher/n;->axI:I

    iget-boolean v0, p1, Lcom/firebase/jobdispatcher/n$a;->axJ:Z

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/n;->axJ:Z

    iget-object v0, p1, Lcom/firebase/jobdispatcher/n$a;->axK:[I

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/firebase/jobdispatcher/n$a;->axK:[I

    :goto_1
    iput-object v0, p0, Lcom/firebase/jobdispatcher/n;->axK:[I

    iget-boolean v0, p1, Lcom/firebase/jobdispatcher/n$a;->axL:Z

    iput-boolean v0, p0, Lcom/firebase/jobdispatcher/n;->axL:Z

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/firebase/jobdispatcher/n$a;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/firebase/jobdispatcher/n$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/firebase/jobdispatcher/n;-><init>(Lcom/firebase/jobdispatcher/n$a;)V

    return-void
.end method


# virtual methods
.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final kL()[I
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n;->axK:[I

    return-object v0
.end method

.method public final kM()Lcom/firebase/jobdispatcher/x;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n;->axH:Lcom/firebase/jobdispatcher/x;

    return-object v0
.end method

.method public final kN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/n;->axL:Z

    return v0
.end method

.method public final kO()Lcom/firebase/jobdispatcher/u;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n;->axG:Lcom/firebase/jobdispatcher/u;

    return-object v0
.end method

.method public final kP()I
    .locals 1

    iget v0, p0, Lcom/firebase/jobdispatcher/n;->axI:I

    return v0
.end method

.method public final kQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/firebase/jobdispatcher/n;->axJ:Z

    return v0
.end method

.method public final kR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/n;->axF:Ljava/lang/String;

    return-object v0
.end method
