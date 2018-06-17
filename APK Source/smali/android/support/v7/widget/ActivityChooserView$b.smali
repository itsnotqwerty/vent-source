.class final Landroid/support/v7/widget/ActivityChooserView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic Vw:Landroid/support/v7/widget/ActivityChooserView;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vi:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->fV()Z

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->fP()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/e;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/e;->ba(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vg:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/ActivityChooserView;->Vo:Z

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget v1, v1, Landroid/support/v7/widget/ActivityChooserView;->Vp:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->bb(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vk:Landroid/support/v4/view/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vk:Landroid/support/v4/view/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/c;->t(Z)V

    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ActivityChooserView$a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->bb(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->fV()Z

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vo:Z

    if-eqz v0, :cond_2

    if-lez p3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v2, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    iget-object v3, v2, Landroid/support/v7/widget/e;->UQ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Landroid/support/v7/widget/e;->fQ()V

    iget-object v0, v2, Landroid/support/v7/widget/e;->UR:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$a;

    iget-object v1, v2, Landroid/support/v7/widget/e;->UR:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/e$a;

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/support/v7/widget/e$a;->weight:F

    iget v4, v0, Landroid/support/v7/widget/e$a;->weight:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v1, v4

    :goto_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/support/v7/widget/e$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/widget/e$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/support/v7/widget/e$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v6, v7, v1}, Landroid/support/v7/widget/e$c;-><init>(Landroid/content/ComponentName;JF)V

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$c;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vt:Z

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView$a;->Vr:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/e;->ba(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vi:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->Vd:Landroid/support/v7/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iput-boolean v2, v0, Landroid/support/v7/widget/ActivityChooserView;->Vo:Z

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$b;->Vw:Landroid/support/v7/widget/ActivityChooserView;

    iget v1, v1, Landroid/support/v7/widget/ActivityChooserView;->Vp:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->bb(I)V

    :cond_0
    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
