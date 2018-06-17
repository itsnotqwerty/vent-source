.class final Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;,
        Landroid/support/v4/app/LoaderManagerImpl$b;,
        Landroid/support/v4/app/LoaderManagerImpl$a;
    }
.end annotation


# static fields
.field static DEBUG:Z


# instance fields
.field private final zf:Landroid/arch/lifecycle/e;

.field final zg:Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/p;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->zf:Landroid/arch/lifecycle/e;

    invoke-static {p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->a(Landroid/arch/lifecycle/p;)Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->zg:Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl;->zg:Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    iget-object v0, v4, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->zo:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v2

    :goto_0
    iget-object v0, v4, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->zo:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, v4, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->zo:Landroid/support/v4/g/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/n;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$a;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v4, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->zo:Landroid/support/v4/g/n;

    invoke-virtual {v3, v1}, Landroid/support/v4/g/n;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Landroid/support/v4/app/LoaderManagerImpl$a;->yo:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mArgs="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$a;->zh:Landroid/os/Bundle;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mLoader="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$a;->zi:Landroid/support/v4/content/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v3, Landroid/support/v4/content/b;->yo:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " mListener="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Landroid/support/v4/content/b;->Bb:Landroid/support/v4/content/b$a;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v7, v3, Landroid/support/v4/content/b;->uY:Z

    if-nez v7, :cond_0

    iget-boolean v7, v3, Landroid/support/v4/content/b;->Be:Z

    if-nez v7, :cond_0

    iget-boolean v7, v3, Landroid/support/v4/content/b;->Bf:Z

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mStarted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v3, Landroid/support/v4/content/b;->uY:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mContentChanged="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v3, Landroid/support/v4/content/b;->Be:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mProcessingChange="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v3, Landroid/support/v4/content/b;->Bf:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v7, v3, Landroid/support/v4/content/b;->Bc:Z

    if-nez v7, :cond_2

    iget-boolean v7, v3, Landroid/support/v4/content/b;->Bd:Z

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAbandoned="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v3, Landroid/support/v4/content/b;->Bc:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mReset="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v3, Landroid/support/v4/content/b;->Bd:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$a;->zj:Landroid/support/v4/app/LoaderManagerImpl$b;

    if-eqz v3, :cond_4

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mCallbacks="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$a;->zj:Landroid/support/v4/app/LoaderManagerImpl$b;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, v0, Landroid/support/v4/app/LoaderManagerImpl$a;->zj:Landroid/support/v4/app/LoaderManagerImpl$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mDeliveredData="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v3, Landroid/support/v4/app/LoaderManagerImpl$b;->zm:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mData="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/arch/lifecycle/LiveData;->aU:Ljava/lang/Object;

    sget-object v6, Landroid/arch/lifecycle/LiveData;->aR:Ljava/lang/Object;

    if-eq v3, v6, :cond_5

    :goto_1
    invoke-static {v3}, Landroid/support/v4/content/b;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mStarted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Landroid/arch/lifecycle/LiveData;->aT:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->zf:Landroid/arch/lifecycle/e;

    invoke-static {v1, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
