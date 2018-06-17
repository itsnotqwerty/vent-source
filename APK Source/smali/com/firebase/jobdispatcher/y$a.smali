.class final Lcom/firebase/jobdispatcher/y$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final ayg:Lcom/firebase/jobdispatcher/y;

.field private final ayh:Lcom/firebase/jobdispatcher/r;


# direct methods
.method private constructor <init>(Lcom/firebase/jobdispatcher/y;Lcom/firebase/jobdispatcher/r;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/y$a;->ayg:Lcom/firebase/jobdispatcher/y;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/y$a;->ayh:Lcom/firebase/jobdispatcher/r;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/jobdispatcher/y;Lcom/firebase/jobdispatcher/r;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/y$a;-><init>(Lcom/firebase/jobdispatcher/y;Lcom/firebase/jobdispatcher/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/y$a;->ayg:Lcom/firebase/jobdispatcher/y;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/y$a;->ayh:Lcom/firebase/jobdispatcher/r;

    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/y;->onRunJob(Lcom/firebase/jobdispatcher/r;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/y$a;->ayg:Lcom/firebase/jobdispatcher/y;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/y$a;->ayh:Lcom/firebase/jobdispatcher/r;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/firebase/jobdispatcher/y;->a(Lcom/firebase/jobdispatcher/y;Lcom/firebase/jobdispatcher/r;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
