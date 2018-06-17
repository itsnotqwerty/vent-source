.class public abstract Landroid/support/v4/view/o;
.super Ljava/lang/Object;


# instance fields
.field public final FN:Landroid/database/DataSetObservable;

.field private FO:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/o;->FN:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Landroid/database/DataSetObserver;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/view/o;->FO:Landroid/database/DataSetObserver;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public aw(I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public cU()V
    .locals 0

    return-void
.end method

.method public abstract getCount()I
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/o;->FO:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/o;->FO:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/view/o;->FN:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
