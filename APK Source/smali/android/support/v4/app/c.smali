.class final Landroid/support/v4/app/c;
.super Landroid/support/v4/app/t;

# interfaces
.implements Landroid/support/v4/app/o$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/c$a;
    }
.end annotation


# instance fields
.field mIndex:I

.field mName:Ljava/lang/String;

.field wA:Z

.field wB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final wj:Landroid/support/v4/app/o;

.field wk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c$a;",
            ">;"
        }
    .end annotation
.end field

.field wl:I

.field wm:I

.field wn:I

.field wo:I

.field wp:I

.field wq:I

.field wr:Z

.field ws:Z

.field wt:Z

.field wu:I

.field wv:Ljava/lang/CharSequence;

.field ww:I

.field wx:Ljava/lang/CharSequence;

.field wy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/o;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->ws:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/c;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c;->wA:Z

    iput-object p1, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    return-void
.end method

.method private a(ILandroid/support/v4/app/i;Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iput-object v0, p2, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    if-eqz p3, :cond_3

    iget-object v0, p2, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p2, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t add fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p2, Landroid/support/v4/app/i;->mFragmentId:I

    if-eqz v0, :cond_5

    iget v0, p2, Landroid/support/v4/app/i;->mFragmentId:I

    if-eq v0, p1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/i;->mFragmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput p1, p2, Landroid/support/v4/app/i;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/i;->mContainerId:I

    :cond_6
    new-instance v0, Landroid/support/v4/app/c$a;

    invoke-direct {v0, p4, p2}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    return-void
.end method

.method static b(Landroid/support/v4/app/c$a;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/i;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/i;->mDetached:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isPostponed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m(Z)I
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/c;->wt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/o;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/support/v4/g/e;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/g/e;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->wt:Z

    iget-boolean v0, p0, Landroid/support/v4/app/c;->wr:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/c;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/c;->mIndex:I

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/o$g;Z)V

    iget v0, p0, Landroid/support/v4/app/c;->mIndex:I

    return v0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/c;->mIndex:I

    goto :goto_0
.end method


# virtual methods
.method final V(I)V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v4/app/c;->wr:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/v4/app/o;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget-object v3, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    iget v4, v3, Landroid/support/v4/app/i;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/i;->mBackStackNesting:I

    sget-boolean v3, Landroid/support/v4/app/o;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    iget v0, v0, Landroid/support/v4/app/i;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final W(I)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget-object v4, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    iget v0, v0, Landroid/support/v4/app/i;->mContainerId:I

    :goto_1
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method final a(Ljava/util/ArrayList;Landroid/support/v4/app/i;)Landroid/support/v4/app/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/i;",
            ">;",
            "Landroid/support/v4/app/i;",
            ")",
            "Landroid/support/v4/app/i;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget v2, v0, Landroid/support/v4/app/c$a;->wC:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v2, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/c$a;

    const/16 v4, 0x9

    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-direct {v3, v4, v0}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v6, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    iget v7, v6, Landroid/support/v4/app/i;->mContainerId:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    move v2, v1

    move-object v3, p2

    :goto_2
    if-ltz v5, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/i;

    iget v8, v1, Landroid/support/v4/app/i;->mContainerId:I

    if-ne v8, v7, :cond_6

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v5, v5, -0x1

    move v4, v1

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    new-instance v8, Landroid/support/v4/app/c$a;

    const/16 v9, 0x9

    invoke-direct {v8, v9, v1}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    invoke-virtual {v3, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    :cond_2
    new-instance v8, Landroid/support/v4/app/c$a;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    iget v9, v0, Landroid/support/v4/app/c$a;->wE:I

    iput v9, v8, Landroid/support/v4/app/c$a;->wE:I

    iget v9, v0, Landroid/support/v4/app/c$a;->wG:I

    iput v9, v8, Landroid/support/v4/app/c$a;->wG:I

    iget v9, v0, Landroid/support/v4/app/c$a;->wF:I

    iput v9, v8, Landroid/support/v4/app/c$a;->wF:I

    iget v9, v0, Landroid/support/v4/app/c$a;->wH:I

    iput v9, v8, Landroid/support/v4/app/c$a;->wH:I

    iget-object v9, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x1

    move-object p2, v3

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/app/c$a;->wC:I

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    move-object p2, v3

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/v4/app/c$a;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p2}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    iget-object p2, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    goto/16 :goto_1

    :cond_5
    return-object p2

    :cond_6
    move v1, v4

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final a(ILandroid/support/v4/app/i;)Landroid/support/v4/app/t;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/c;->b(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/i;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;
    .locals 2

    new-instance v0, Landroid/support/v4/app/c$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/i;Ljava/lang/String;I)V

    return-object p0
.end method

.method final a(Landroid/support/v4/app/c$a;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/support/v4/app/c;->wl:I

    iput v0, p1, Landroid/support/v4/app/c$a;->wE:I

    iget v0, p0, Landroid/support/v4/app/c;->wm:I

    iput v0, p1, Landroid/support/v4/app/c$a;->wF:I

    iget v0, p0, Landroid/support/v4/app/c;->wn:I

    iput v0, p1, Landroid/support/v4/app/c$a;->wG:I

    iget v0, p0, Landroid/support/v4/app/c;->wo:I

    iput v0, p1, Landroid/support/v4/app/c$a;->wH:I

    return-void
.end method

.method final a(Landroid/support/v4/app/i$c;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    invoke-static {v0}, Landroid/support/v4/app/c;->b(Landroid/support/v4/app/c$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/i;->setOnStartEnterTransitionListener(Landroid/support/v4/app/i$c;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/c;->wt:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/c;->wp:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->wp:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->wq:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/c;->wl:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/c;->wm:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->wl:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->wm:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/c;->wn:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/c;->wo:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->wn:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->wo:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/c;->wu:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/c;->wv:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->wu:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c;->wv:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroid/support/v4/app/c;->ww:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/c;->wx:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/c;->ww:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/c;->wx:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget v1, v0, Landroid/support/v4/app/c$a;->wC:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cmd="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/support/v4/app/c$a;->wC:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v1, v0, Landroid/support/v4/app/c$a;->wE:I

    if-nez v1, :cond_9

    iget v1, v0, Landroid/support/v4/app/c$a;->wF:I

    if-eqz v1, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/support/v4/app/c$a;->wE:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/support/v4/app/c$a;->wF:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v1, v0, Landroid/support/v4/app/c$a;->wG:I

    if-nez v1, :cond_b

    iget v1, v0, Landroid/support/v4/app/c$a;->wH:I

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/support/v4/app/c$a;->wG:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/app/c$a;->wH:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "NULL"

    goto :goto_1

    :pswitch_1
    const-string v1, "ADD"

    goto :goto_1

    :pswitch_2
    const-string v1, "REPLACE"

    goto :goto_1

    :pswitch_3
    const-string v1, "REMOVE"

    goto :goto_1

    :pswitch_4
    const-string v1, "HIDE"

    goto :goto_1

    :pswitch_5
    const-string v1, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "ATTACH"

    goto/16 :goto_1

    :pswitch_8
    const-string v1, "SET_PRIMARY_NAV"

    goto/16 :goto_1

    :pswitch_9
    const-string v1, "UNSET_PRIMARY_NAV"

    goto/16 :goto_1

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method final a(Ljava/util/ArrayList;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;II)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-ne p3, p2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, -0x1

    move v6, v3

    :goto_1
    if-ge v6, v7, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget-object v2, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    iget v2, v0, Landroid/support/v4/app/i;->mContainerId:I

    :goto_2
    if-eqz v2, :cond_7

    if-eq v2, v1, :cond_7

    move v5, p2

    :goto_3
    if-ge v5, p3, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    iget-object v1, v0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_4
    if-ge v4, v8, :cond_4

    iget-object v1, v0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c$a;

    iget-object v9, v1, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v9, :cond_2

    iget-object v1, v1, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    iget v1, v1, Landroid/support/v4/app/i;->mContainerId:I

    :goto_5
    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Landroid/support/v4/app/o;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Run: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/support/v4/app/c;->wr:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v1, v0, Landroid/support/v4/app/o;->xz:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/o;->xz:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, v0, Landroid/support/v4/app/o;->xz:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method final b(Ljava/util/ArrayList;Landroid/support/v4/app/i;)Landroid/support/v4/app/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/i;",
            ">;",
            "Landroid/support/v4/app/i;",
            ")",
            "Landroid/support/v4/app/i;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget v2, v0, Landroid/support/v4/app/c$a;->wC:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    iget-object p2, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    goto :goto_1

    :pswitch_4
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final b(ILandroid/support/v4/app/i;Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/c;->a(ILandroid/support/v4/app/i;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final b(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;
    .locals 2

    new-instance v0, Landroid/support/v4/app/c$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    return-object p0
.end method

.method public final c(Landroid/support/v4/app/i;)Landroid/support/v4/app/t;
    .locals 2

    new-instance v0, Landroid/support/v4/app/c$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/c$a;-><init>(ILandroid/support/v4/app/i;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/c$a;)V

    return-object p0
.end method

.method public final cA()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/c;->wB:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/c;->wB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/c;->wB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/c;->wB:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method final cB()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget-object v4, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v4, :cond_0

    iget v5, p0, Landroid/support/v4/app/c;->wp:I

    iget v6, p0, Landroid/support/v4/app/c;->wq:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/i;->setNextTransition(II)V

    :cond_0
    iget v5, v0, Landroid/support/v4/app/c$a;->wC:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/app/c$a;->wC:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget v5, v0, Landroid/support/v4/app/c$a;->wE:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v5, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v5, v4, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/i;Z)V

    :goto_1
    iget-boolean v5, p0, Landroid/support/v4/app/c;->wA:Z

    if-nez v5, :cond_1

    iget v0, v0, Landroid/support/v4/app/c$a;->wC:I

    if-eq v0, v7, :cond_1

    if-eqz v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/o;->f(Landroid/support/v4/app/i;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    iget v5, v0, Landroid/support/v4/app/c$a;->wF:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v5, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/o;->h(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_3
    iget v5, v0, Landroid/support/v4/app/c$a;->wF:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/i;->setNextAnim(I)V

    invoke-static {v4}, Landroid/support/v4/app/o;->i(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_4
    iget v5, v0, Landroid/support/v4/app/c$a;->wE:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/i;->setNextAnim(I)V

    invoke-static {v4}, Landroid/support/v4/app/o;->j(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_5
    iget v5, v0, Landroid/support/v4/app/c$a;->wF:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v5, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/o;->k(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_6
    iget v5, v0, Landroid/support/v4/app/c$a;->wE:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v5, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/o;->l(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_7
    iget-object v5, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/o;->n(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_8
    iget-object v5, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/o;->n(Landroid/support/v4/app/i;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/c;->wA:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget v1, v1, Landroid/support/v4/app/o;->xF:I

    invoke-virtual {v0, v1, v7}, Landroid/support/v4/app/o;->c(IZ)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final commit()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/c;->m(Z)I

    move-result v0

    return v0
.end method

.method public final commitAllowingStateLoss()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/c;->m(Z)I

    move-result v0

    return v0
.end method

.method public final commitNowAllowingStateLoss()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/c;->wr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/c;->ws:Z

    iget-object v1, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v0, v1, Landroid/support/v4/app/o;->mHost:Landroid/support/v4/app/m;

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Landroid/support/v4/app/o;->xM:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/o;->cL()V

    iget-object v0, v1, Landroid/support/v4/app/o;->xP:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/support/v4/app/o;->xQ:Ljava/util/ArrayList;

    invoke-interface {p0, v0, v2}, Landroid/support/v4/app/o$g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v4/app/o;->xv:Z

    :try_start_0
    iget-object v0, v1, Landroid/support/v4/app/o;->xP:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/support/v4/app/o;->xQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/o;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/support/v4/app/o;->cM()V

    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/o;->cO()V

    invoke-virtual {v1}, Landroid/support/v4/app/o;->cR()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v4/app/o;->cM()V

    throw v0
.end method

.method final n(Z)V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    iget-object v2, v0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-eqz v2, :cond_0

    iget v3, p0, Landroid/support/v4/app/c;->wp:I

    invoke-static {v3}, Landroid/support/v4/app/o;->ab(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/c;->wq:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/i;->setNextTransition(II)V

    :cond_0
    iget v3, v0, Landroid/support/v4/app/c$a;->wC:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/app/c$a;->wC:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget v3, v0, Landroid/support/v4/app/c$a;->wH:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v3, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/o;->h(Landroid/support/v4/app/i;)V

    :goto_1
    iget-boolean v3, p0, Landroid/support/v4/app/c;->wA:Z

    if-nez v3, :cond_1

    iget v0, v0, Landroid/support/v4/app/c$a;->wC:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->f(Landroid/support/v4/app/i;)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    iget v3, v0, Landroid/support/v4/app/c$a;->wG:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v3, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/i;Z)V

    goto :goto_1

    :pswitch_3
    iget v3, v0, Landroid/support/v4/app/c$a;->wG:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/i;->setNextAnim(I)V

    invoke-static {v2}, Landroid/support/v4/app/o;->j(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_4
    iget v3, v0, Landroid/support/v4/app/c$a;->wH:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/i;->setNextAnim(I)V

    invoke-static {v2}, Landroid/support/v4/app/o;->i(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_5
    iget v3, v0, Landroid/support/v4/app/c$a;->wG:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v3, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/o;->l(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_6
    iget v3, v0, Landroid/support/v4/app/c$a;->wH:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/i;->setNextAnim(I)V

    iget-object v3, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/o;->k(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_7
    iget-object v3, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/o;->n(Landroid/support/v4/app/i;)V

    goto :goto_1

    :pswitch_8
    iget-object v3, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/o;->n(Landroid/support/v4/app/i;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/c;->wA:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget v1, v1, Landroid/support/v4/app/o;->xF:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->c(IZ)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/c;->mIndex:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/c;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)Landroid/support/v4/app/t;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/c;->ws:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/c;->wr:Z

    iput-object p1, p0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    return-object p0
.end method
