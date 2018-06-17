.class final Lcom/firebase/jobdispatcher/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axO:Lcom/firebase/jobdispatcher/s;

.field final synthetic axP:Lcom/firebase/jobdispatcher/r;

.field final synthetic axQ:Z

.field final synthetic axR:Lcom/firebase/jobdispatcher/s$a;


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/s;Lcom/firebase/jobdispatcher/r;ZLcom/firebase/jobdispatcher/s$a;)V
    .locals 0

    iput-object p1, p0, Lcom/firebase/jobdispatcher/s$3;->axO:Lcom/firebase/jobdispatcher/s;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/s$3;->axP:Lcom/firebase/jobdispatcher/r;

    iput-boolean p3, p0, Lcom/firebase/jobdispatcher/s$3;->axQ:Z

    iput-object p4, p0, Lcom/firebase/jobdispatcher/s$3;->axR:Lcom/firebase/jobdispatcher/s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/s$3;->axO:Lcom/firebase/jobdispatcher/s;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/s$3;->axP:Lcom/firebase/jobdispatcher/r;

    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/s;->onStopJob(Lcom/firebase/jobdispatcher/r;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/firebase/jobdispatcher/s$3;->axQ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/s$3;->axR:Lcom/firebase/jobdispatcher/s$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/firebase/jobdispatcher/s$a;->cu(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
