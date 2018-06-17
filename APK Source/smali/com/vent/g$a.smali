.class final Lcom/vent/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ba$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bZZ:Lcom/vent/g$b;

.field final synthetic cab:Lcom/vent/g;

.field final cac:Lcom/vent/g$f;


# direct methods
.method constructor <init>(Lcom/vent/g;Lcom/vent/g$f;Lcom/vent/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iput-object p3, p0, Lcom/vent/g$a;->bZZ:Lcom/vent/g$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    const v12, 0x7f09024c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v11, 0x7f090127

    const v10, 0x7f090125

    iget-object v0, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v4, v0, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    new-instance v5, Landroid/support/v7/widget/ba;

    invoke-direct {v5, v0, p1}, Landroid/support/v7/widget/ba;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v6, v5, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5}, Landroid/support/v7/widget/ba;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v7, 0x7f0c0003

    invoke-virtual {v1, v7, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, v4, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    invoke-static {v1}, Lcom/vent/bb;->a(Lcom/vent/a/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6, v12}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v10}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v11}, Landroid/view/Menu;->removeItem(I)V

    :goto_1
    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v1, v4, Lcom/vent/a/d;->body:Ljava/lang/String;

    iget-object v2, v4, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    iget-object v3, v4, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    invoke-static {v0, v6, v1, v2, v3}, Lcom/vent/d/c;->a(Ljava/lang/ref/WeakReference;Landroid/view/Menu;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const v0, 0x7f0900a4

    invoke-interface {v6, v0}, Landroid/view/Menu;->removeItem(I)V

    iput-object p0, v5, Landroid/support/v7/widget/ba;->adv:Landroid/support/v7/widget/ba$a;

    iget-object v0, v5, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/n;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v1}, Lcom/vent/bb;->c(Lcom/vent/a/x;)Z

    move-result v7

    iget-object v1, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    invoke-virtual {v1}, Lcom/vent/a/k;->EY()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    iget-object v8, v4, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    sget-object v9, Lcom/vent/d/c;->cmG:Lcom/vent/a/m;

    invoke-static {v8, v9}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f09004d

    invoke-interface {v6, v8}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v12}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    const v8, 0x7f0900d5

    invoke-interface {v6, v8}, Landroid/view/Menu;->removeItem(I)V

    if-nez v7, :cond_4

    const v7, 0x7f0900bc

    invoke-interface {v6, v7}, Landroid/view/Menu;->removeItem(I)V

    :cond_4
    if-nez v1, :cond_6

    invoke-interface {v6, v10}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {v6, v11}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v6, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/vent/d/c;->cmH:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0f00f7

    invoke-virtual {v0, v9}, Lcom/vent/a;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vent/d/e;->u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v6, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/vent/d/c;->cmH:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0f00f8

    new-array v2, v2, [Ljava/lang/Object;

    if-nez v1, :cond_8

    const-string v1, "?"

    :goto_4
    aput-object v1, v2, v3

    invoke-virtual {v0, v9, v2}, Lcom/vent/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->u(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v1, v1, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/x;

    goto :goto_3

    :cond_8
    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    goto :goto_4
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/v7/app/d;

    sparse-switch v2, :sswitch_data_0

    iget-object v0, p0, Lcom/vent/g$a;->bZZ:Lcom/vent/g$b;

    iget-object v1, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    invoke-interface {v0, v1, v2}, Lcom/vent/g$b;->a(Lcom/vent/g$f;I)V

    move v8, v4

    :cond_0
    :goto_0
    :sswitch_0
    return v8

    :sswitch_1
    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v1, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    invoke-virtual {v0, v1}, Lcom/vent/g;->a(Lcom/vent/g$f;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/vent/g$a;->bZZ:Lcom/vent/g$b;

    iget-object v1, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    invoke-interface {v0, v1, v2}, Lcom/vent/g$b;->a(Lcom/vent/g$f;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v1, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    iget-object v0, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v3, v0, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    new-instance v4, Lcom/vent/g$a$1;

    invoke-direct {v4, p0, v2}, Lcom/vent/g$a$1;-><init>(Lcom/vent/g$a;I)V

    const v0, 0x7f090125

    if-ne v2, v0, :cond_1

    const v0, 0x7f0f0012

    :goto_1
    invoke-static {v10, v1, v3, v4, v0}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/m;Lcom/vent/a/d;Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0010

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v0, v0, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v2, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v3, v3, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v3, v3, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-static {v10, v2, v0, v1}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Ljava/lang/Runnable;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v1, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v1, v1, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iget-object v1, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v1, v1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    invoke-static {v10, v0, v1}, Lcom/vent/d/f;->c(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/g$a;->bZZ:Lcom/vent/g$b;

    iget-object v1, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    invoke-interface {v0, v1, v2}, Lcom/vent/g$b;->a(Lcom/vent/g$f;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/vent/g$a;->cab:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v2, v2, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v2, v2, Lcom/vent/a/d;->body:Ljava/lang/String;

    const v3, 0x7fffffff

    iget-object v5, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v5, v5, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v5, v5, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/vent/g$a;->cac:Lcom/vent/g$f;

    iget-object v6, v6, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v6, v6, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    const/4 v9, 0x2

    move v7, v4

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/vent/d/c;->w(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7f0900a4 -> :sswitch_6
        0x7f0900bc -> :sswitch_3
        0x7f0900d5 -> :sswitch_2
        0x7f090125 -> :sswitch_3
        0x7f090127 -> :sswitch_4
        0x7f09024b -> :sswitch_1
        0x7f09024c -> :sswitch_5
    .end sparse-switch
.end method
