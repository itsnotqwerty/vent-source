.class final Lcom/firebase/jobdispatcher/i;
.super Ljava/lang/Object;


# instance fields
.field final axv:Lcom/firebase/jobdispatcher/p;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/firebase/jobdispatcher/p;

    const-string v1, "com.firebase.jobdispatcher."

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/i;->axv:Lcom/firebase/jobdispatcher/p;

    return-void
.end method
