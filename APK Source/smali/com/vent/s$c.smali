.class final Lcom/vent/s$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ba$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final cbQ:Lcom/vent/s$d;

.field final cce:Lcom/vent/s$g;


# direct methods
.method constructor <init>(Lcom/vent/s$g;Lcom/vent/s$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iput-object p2, p0, Lcom/vent/s$c;->cbQ:Lcom/vent/s$d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const v10, 0x7f09024c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v8, 0x7f09012b

    const v9, 0x7f090127

    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v4, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    new-instance v5, Landroid/support/v7/widget/ba;

    invoke-direct {v5, v0, p1}, Landroid/support/v7/widget/ba;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v6, v5, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5}, Landroid/support/v7/widget/ba;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v7, 0x7f0c0013

    invoke-virtual {v1, v7, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, v4, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v1}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6, v10}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v8}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v9}, Landroid/view/Menu;->removeItem(I)V

    :goto_1
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-boolean v0, v0, Lcom/vent/s$g;->ccr:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0900a4

    invoke-interface {v6, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-boolean v0, v0, Lcom/vent/s$g;->ccr:Z

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const v0, 0x7f09024b

    invoke-interface {v6, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v1, v4, Lcom/vent/a/z;->body:Ljava/lang/String;

    iget-object v2, v4, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    iget-object v3, v4, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    invoke-static {v0, v6, v1, v2, v3}, Lcom/vent/d/c;->a(Ljava/lang/ref/WeakReference;Landroid/view/Menu;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iput-object p0, v5, Landroid/support/v7/widget/ba;->adv:Landroid/support/v7/widget/ba$a;

    iget-object v0, v5, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->show()V

    goto :goto_0

    :cond_4
    iget-object v1, v4, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v1, :cond_5

    iget-object v1, v4, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    sget-object v7, Lcom/vent/d/c;->cmG:Lcom/vent/a/m;

    invoke-static {v1, v7}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const v1, 0x7f09004d

    invoke-interface {v6, v1}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v10}, Landroid/view/Menu;->removeItem(I)V

    :cond_6
    const v1, 0x7f0900d5

    invoke-interface {v6, v1}, Landroid/view/Menu;->removeItem(I)V

    const v1, 0x7f0900bc

    invoke-interface {v6, v1}, Landroid/view/Menu;->removeItem(I)V

    iget-object v1, v4, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v1, :cond_7

    iget-object v1, v4, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    invoke-virtual {v1}, Lcom/vent/a/k;->EY()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_2
    if-nez v1, :cond_8

    invoke-interface {v6, v8}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v9}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    invoke-interface {v6, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/vent/d/c;->cmH:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0f00f9

    invoke-virtual {v0, v8}, Lcom/vent/a;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vent/d/e;->u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v6, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/vent/d/c;->cmH:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0f00f8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v9, v9, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v9, v9, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v9, v9, Lcom/vent/a/x;->username:Ljava/lang/String;

    aput-object v9, v2, v3

    invoke-virtual {v0, v8, v2}, Lcom/vent/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v11

    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/v7/app/d;

    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/am;

    :goto_0
    sparse-switch v11, :sswitch_data_0

    :cond_0
    :sswitch_0
    move v8, v4

    :cond_1
    :goto_1
    :sswitch_1
    return v8

    :cond_2
    move-object v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/vent/s$c;->cbQ:Lcom/vent/s$d;

    iget-object v1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    invoke-interface {v0, v1, v11}, Lcom/vent/s$d;->a(Lcom/vent/s$g;I)V

    goto :goto_1

    :sswitch_3
    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v1}, Lcom/vent/a/y;->Fc()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v10}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v1, v1, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    invoke-static {v10, v0, v1}, Lcom/vent/ActVent;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/z;)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    new-instance v1, Lcom/vent/s$c$1;

    invoke-direct {v1, p0, v11}, Lcom/vent/s$c$1;-><init>(Lcom/vent/s$c;I)V

    invoke-static {v10, v0, v1}, Lcom/vent/d/f;->a(Landroid/support/v7/app/d;Lcom/vent/a/z;Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v1, v1, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    new-instance v2, Lcom/vent/s$c$2;

    invoke-direct {v2, p0, v11}, Lcom/vent/s$c$2;-><init>(Lcom/vent/s$c;I)V

    invoke-static {v10, v0, v1, v2}, Lcom/vent/d/f;->a(Landroid/support/v7/app/d;Lcom/vent/a/k;Lcom/vent/a/z;Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v2, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v2, v2, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v10, v0, v2, v1}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Ljava/lang/Runnable;)V

    goto :goto_1

    :sswitch_7
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v1, v1, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    invoke-static {v10, v0, v1}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/s$c;->cbQ:Lcom/vent/s$d;

    iget-object v1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    invoke-interface {v0, v1, v11}, Lcom/vent/s$d;->a(Lcom/vent/s$g;I)V

    goto :goto_1

    :sswitch_8
    iget-object v0, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v1, v1, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v2, v2, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->body:Ljava/lang/String;

    const v3, 0x7fffffff

    iget-object v5, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v5, v5, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v5, v5, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    iget-object v6, v6, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v6, v6, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    const/4 v9, 0x2

    move v7, v4

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/vent/d/c;->w(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/vent/s$c;->cbQ:Lcom/vent/s$d;

    iget-object v1, p0, Lcom/vent/s$c;->cce:Lcom/vent/s$g;

    invoke-interface {v0, v1, v11}, Lcom/vent/s$d;->a(Lcom/vent/s$g;I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x7f0900a4 -> :sswitch_8
        0x7f0900bc -> :sswitch_4
        0x7f0900d5 -> :sswitch_3
        0x7f090127 -> :sswitch_6
        0x7f09012b -> :sswitch_5
        0x7f09024b -> :sswitch_2
        0x7f09024c -> :sswitch_7
    .end sparse-switch
.end method
