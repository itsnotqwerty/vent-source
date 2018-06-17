.class final Lcom/firebase/jobdispatcher/q$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field axF:Ljava/lang/String;

.field axG:Lcom/firebase/jobdispatcher/u;

.field axH:Lcom/firebase/jobdispatcher/x;

.field axI:I

.field axJ:Z

.field axK:[I

.field axL:Z

.field axN:Lcom/firebase/jobdispatcher/aa;

.field final extras:Landroid/os/Bundle;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/q$a;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method final kT()Lcom/firebase/jobdispatcher/q;
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q$a;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q$a;->axF:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/jobdispatcher/q$a;->axG:Lcom/firebase/jobdispatcher/u;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required fields were not populated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/firebase/jobdispatcher/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/firebase/jobdispatcher/q;-><init>(Lcom/firebase/jobdispatcher/q$a;B)V

    return-object v0
.end method
