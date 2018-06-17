.class final Lcom/vent/n$b;
.super Lcom/vent/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/l",
        "<",
        "Lcom/vent/a/s;",
        ">.a;"
    }
.end annotation


# instance fields
.field final cbi:Landroid/widget/TextView;

.field final cbj:Landroid/widget/TextView;

.field final cbk:Landroid/widget/TextView;

.field final cbl:Landroid/widget/LinearLayout;

.field final cbm:Landroid/widget/ImageView;

.field final cbn:Landroid/widget/TextView;

.field final cbo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vent/CachedImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic cbp:Lcom/vent/n;


# direct methods
.method constructor <init>(Lcom/vent/n;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/vent/n$b;->cbp:Lcom/vent/n;

    invoke-direct {p0, p1, p2}, Lcom/vent/l$a;-><init>(Lcom/vent/l;Landroid/view/View;)V

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a9

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/n$b;->cbi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/n$b;->cbi:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0901d8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/n$b;->cbj:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/n$b;->cbj:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/n$b;->cbj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/n$b;->cbj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const v0, 0x7f0901d5

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const v0, 0x7f0902d8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    const v0, 0x7f090148

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v0, 0x7f090149

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/n$b;->cbo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vent/n$b;->CO()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/vent/n$b;->cbp:Lcom/vent/n;

    iget-object v0, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_4

    iget-object v0, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/n$b;->cbp:Lcom/vent/n;

    iget-object v0, v0, Lcom/vent/n;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    iget-object v1, p0, Lcom/vent/n$b;->cbp:Lcom/vent/n;

    iget-object v1, v1, Lcom/vent/n;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/i;

    iget-object v5, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/vent/ax;->c(Landroid/app/Activity;Ljava/lang/String;)V

    iget-boolean v5, v4, Lcom/vent/a/s;->read:Z

    if-nez v5, :cond_2

    iput-boolean v9, v4, Lcom/vent/a/s;->read:Z

    iget-object v5, p0, Lcom/vent/n$b;->cbp:Lcom/vent/n;

    iget-object v6, p0, Lcom/vent/n$b;->cbp:Lcom/vent/n;

    invoke-virtual {v6, v2}, Lcom/vent/n;->ex(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/vent/n;->notifyItemChanged(I)V

    if-eqz v0, :cond_1

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/d;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    iget-object v2, v4, Lcom/vent/a/s;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v2}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/m;)V

    :cond_2
    iget-object v2, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "InteractedWithVent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "CommentedOnVent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "MentionedInComment"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "MentionedInVent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "FavouriteComment"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    new-instance v2, Lcom/vent/a/z;

    invoke-direct {v2}, Lcom/vent/a/z;-><init>()V

    iget-object v3, v4, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v3, v3, Lcom/vent/a/t;->ckG:Lcom/vent/a/m;

    iput-object v3, v2, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v1, v9, v2}, Lcom/vent/ActVentView;->a(Landroid/app/Activity;Landroid/support/v4/app/i;ZLcom/vent/a/z;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/vent/n$b;->cbp:Lcom/vent/n;

    iget-object v0, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/s;

    move-object v4, v0

    goto/16 :goto_0

    :cond_6
    iget-object v1, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v2, "NewListener"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-static {v0, v1}, Lcom/vent/ActUserListListeners;->a(Landroid/app/Activity;Lcom/vent/a/x;)V

    goto :goto_1

    :cond_7
    iget-object v1, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v2, "AcceptedFollowRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-static {v0, v1}, Lcom/vent/ActUserListListenings;->a(Landroid/app/Activity;Lcom/vent/a/x;)V

    goto :goto_1

    :cond_8
    iget-object v1, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v2, "NewFollowRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/vent/ActUserListListenRequests;->l(Landroid/app/Activity;)V

    goto :goto_1

    :cond_9
    iget-object v1, v4, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v2, "NewGift"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    if-eqz v1, :cond_c

    iget-object v1, v4, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v1, v1, Lcom/vent/a/t;->ckJ:Lcom/vent/a/j;

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    iget-boolean v4, v2, Lcom/vent/a/j;->ckh:Z

    iget-object v1, v2, Lcom/vent/a/j;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "<br><br>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    iget-object v5, v2, Lcom/vent/a/j;->cjQ:Lcom/vent/a/m;

    invoke-static {v3, v5}, Lcom/vent/d/c;->b(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v5

    if-eqz v5, :cond_b

    sget-object v6, Lcom/vent/bb;->ciD:Ljava/util/Set;

    iget-object v7, v5, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/vent/bb;->ciA:J

    invoke-static {v0, v9, v8}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V

    :cond_b
    if-eqz v0, :cond_4

    if-nez v4, :cond_e

    const v4, 0x7f0f026e

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/vent/a/j;->ckg:Ljava/lang/String;

    aput-object v2, v6, v8

    if-nez v5, :cond_d

    move-object v2, v3

    :goto_3
    aput-object v2, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/app/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-static {v4}, Lcom/vent/d/e;->t(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/support/v7/app/c$a;

    invoke-direct {v2, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/app/c$a;->setView(Landroid/view/View;)Landroid/support/v7/app/c$a;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v1

    const v2, 0x7f0f0275

    new-instance v3, Lcom/vent/n$b$1;

    invoke-direct {v3, p0, v5, v0}, Lcom/vent/n$b$1;-><init>(Lcom/vent/n$b;Lcom/vent/a/h;Landroid/support/v7/app/d;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/vent/d/c;->a(Landroid/app/Dialog;I)V

    goto/16 :goto_1

    :cond_c
    move-object v2, v3

    goto/16 :goto_2

    :cond_d
    iget-object v2, v5, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    goto :goto_3

    :cond_e
    const v4, 0x7f0f026f

    new-array v6, v10, [Ljava/lang/Object;

    if-nez v5, :cond_f

    move-object v2, v3

    :goto_5
    aput-object v2, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/app/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_4

    :cond_f
    iget-object v2, v5, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    goto :goto_5
.end method
