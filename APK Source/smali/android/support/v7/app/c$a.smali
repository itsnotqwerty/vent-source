.class public Landroid/support/v7/app/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final P:Landroid/support/v7/app/AlertController$a;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/c;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/app/AlertController$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/c;->d(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p2, p0, Landroid/support/v7/app/c$a;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Landroid/support/v7/app/c;
    .locals 15

    new-instance v13, Landroid/support/v7/app/c;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/support/v7/app/c$a;->mTheme:I

    invoke-direct {v13, v0, v1}, Landroid/support/v7/app/c;-><init>(Landroid/content/Context;I)V

    iget-object v14, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v13, Landroid/support/v7/app/c;->My:Landroid/support/v7/app/AlertController;

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LD:Landroid/view/View;

    if-eqz v1, :cond_10

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LD:Landroid/view/View;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->LD:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Lg:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Lg:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->Lg:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->ix:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->ix:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LT:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LU:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, -0x1

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->LT:Ljava/lang/CharSequence;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->LV:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->LU:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LW:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LX:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, -0x2

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->LW:Ljava/lang/CharSequence;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->LY:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->LX:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LZ:Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Ma:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, -0x3

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->LZ:Ljava/lang/CharSequence;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->Mb:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->Ma:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    if-nez v1, :cond_8

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LE:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_c

    :cond_8
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->JR:Landroid/view/LayoutInflater;

    iget v2, v0, Landroid/support/v7/app/AlertController;->LI:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/app/AlertController$RecycleListView;

    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->Mi:Z

    if-eqz v1, :cond_16

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    if-nez v1, :cond_15

    new-instance v1, Landroid/support/v7/app/AlertController$a$1;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    iget v4, v0, Landroid/support/v7/app/AlertController;->LJ:I

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    move-object v2, v14

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/AlertController$a$1;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    :goto_1
    iput-object v1, v0, Landroid/support/v7/app/AlertController;->LE:Landroid/widget/ListAdapter;

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->LF:I

    iput v1, v0, Landroid/support/v7/app/AlertController;->LF:I

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1a

    new-instance v1, Landroid/support/v7/app/AlertController$a$3;

    invoke-direct {v1, v14, v0}, Landroid/support/v7/app/AlertController$a$3;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_9
    :goto_2
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Mo:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_a

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Mo:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_a
    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->Mj:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    :cond_b
    :goto_3
    iput-object v6, v0, Landroid/support/v7/app/AlertController;->Lh:Landroid/widget/ListView;

    :cond_c
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->mView:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->Ln:Z

    if-eqz v1, :cond_1c

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->mView:Landroid/view/View;

    iget v2, v14, Landroid/support/v7/app/AlertController$a;->Lj:I

    iget v3, v14, Landroid/support/v7/app/AlertController$a;->Lk:I

    iget v4, v14, Landroid/support/v7/app/AlertController$a;->Ll:I

    iget v5, v14, Landroid/support/v7/app/AlertController$a;->Lm:I

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/AlertController;->Li:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController;->Ln:Z

    iput v2, v0, Landroid/support/v7/app/AlertController;->Lj:I

    iput v3, v0, Landroid/support/v7/app/AlertController;->Lk:I

    iput v4, v0, Landroid/support/v7/app/AlertController;->Ll:I

    iput v5, v0, Landroid/support/v7/app/AlertController;->Lm:I

    :cond_d
    :goto_4
    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController$a;->wM:Z

    invoke-virtual {v13, v0}, Landroid/support/v7/app/c;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-boolean v0, v0, Landroid/support/v7/app/AlertController$a;->wM:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/support/v7/app/c;->setCanceledOnTouchOutside(Z)V

    :cond_e
    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->Mc:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v13, v0}, Landroid/support/v7/app/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->Md:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v13, v0}, Landroid/support/v7/app/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->Me:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->Me:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v0}, Landroid/support/v7/app/c;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_f
    return-object v13

    :cond_10
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Ch:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Ch:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->oa:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->oa:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->oa:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/app/AlertController;->LB:I

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    if-eqz v2, :cond_12

    if-eqz v1, :cond_14

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    :goto_5
    iget v1, v14, Landroid/support/v7/app/AlertController$a;->LB:I

    if-eqz v1, :cond_13

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->LB:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    :cond_13
    iget v1, v14, Landroid/support/v7/app/AlertController$a;->LS:I

    if-eqz v1, :cond_0

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->LS:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, v0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v1, v0, Landroid/support/v7/app/AlertController;->ph:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_15
    new-instance v2, Landroid/support/v7/app/AlertController$a$2;

    iget-object v4, v14, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    iget-object v5, v14, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    move-object v3, v14

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/app/AlertController$a$2;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/content/Context;Landroid/database/Cursor;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    move-object v1, v2

    goto/16 :goto_1

    :cond_16
    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->Mj:Z

    if-eqz v1, :cond_17

    iget v9, v0, Landroid/support/v7/app/AlertController;->LK:I

    :goto_6
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    if-eqz v1, :cond_18

    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    iget-object v8, v14, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    iget-object v10, v14, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->Ml:Ljava/lang/String;

    aput-object v2, v11, v1

    const/4 v1, 0x1

    new-array v12, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v12, v1

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v7

    goto/16 :goto_1

    :cond_17
    iget v9, v0, Landroid/support/v7/app/AlertController;->LL:I

    goto :goto_6

    :cond_18
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LE:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_19

    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->LE:Landroid/widget/ListAdapter;

    goto/16 :goto_1

    :cond_19
    new-instance v1, Landroid/support/v7/app/AlertController$c;

    iget-object v2, v14, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    iget-object v3, v14, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v9, v3}, Landroid/support/v7/app/AlertController$c;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1a
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->Mk:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_9

    new-instance v1, Landroid/support/v7/app/AlertController$a$4;

    invoke-direct {v1, v14, v6, v0}, Landroid/support/v7/app/AlertController$a$4;-><init>(Landroid/support/v7/app/AlertController$a;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    :cond_1b
    iget-boolean v1, v14, Landroid/support/v7/app/AlertController$a;->Mi:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_3

    :cond_1c
    iget-object v1, v14, Landroid/support/v7/app/AlertController$a;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/AlertController;->Li:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController;->Ln:Z

    goto/16 :goto_4

    :cond_1d
    iget v1, v14, Landroid/support/v7/app/AlertController$a;->Li:I

    if-eqz v1, :cond_d

    iget v1, v14, Landroid/support/v7/app/AlertController$a;->Li:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    iput v1, v0, Landroid/support/v7/app/AlertController;->Li:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController;->Ln:Z

    goto/16 :goto_4
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v0, v0, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LE:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-boolean p1, v0, Landroid/support/v7/app/AlertController$a;->wM:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Ml:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LD:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p1, v0, Landroid/support/v7/app/AlertController$a;->LB:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->oa:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Landroid/support/v7/app/c$a;
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, v1, Landroid/support/v7/app/AlertController$a;->LB:I

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/support/v7/app/c$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-boolean p1, v0, Landroid/support/v7/app/AlertController$a;->Mn:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->Lg:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Lg:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Mk:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mh:[Z

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Mi:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p4, v0, Landroid/support/v7/app/AlertController$a;->Mk:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mm:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Ml:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Mi:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Mk:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mh:[Z

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Mi:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->LW:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->LY:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LW:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->LY:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LX:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->LZ:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mb:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LZ:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->Mb:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Ma:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Mc:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Md:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Mo:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Me:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->LT:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->LV:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LT:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p2, v0, Landroid/support/v7/app/AlertController$a;->LV:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LU:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-boolean p1, v0, Landroid/support/v7/app/AlertController$a;->Mp:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p2, v0, Landroid/support/v7/app/AlertController$a;->LF:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Mj:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Jc:Landroid/database/Cursor;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p4, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p2, v0, Landroid/support/v7/app/AlertController$a;->LF:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Ml:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Mj:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->LE:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p2, v0, Landroid/support/v7/app/AlertController$a;->LF:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Mj:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Mf:[Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p3, v0, Landroid/support/v7/app/AlertController$a;->Mg:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p2, v0, Landroid/support/v7/app/AlertController$a;->LF:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Mj:Z

    return-object p0
.end method

.method public setTitle(I)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iget-object v1, v1, Landroid/support/v7/app/AlertController$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->Ch:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->Ch:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Landroid/support/v7/app/c$a;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/AlertController$a;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p1, v0, Landroid/support/v7/app/AlertController$a;->Li:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Ln:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/support/v7/app/c$a;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput v1, v0, Landroid/support/v7/app/AlertController$a;->Li:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Ln:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/support/v7/app/c$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput-object p1, v0, Landroid/support/v7/app/AlertController$a;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/app/AlertController$a;->Li:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/AlertController$a;->Ln:Z

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p2, v0, Landroid/support/v7/app/AlertController$a;->Lj:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p3, v0, Landroid/support/v7/app/AlertController$a;->Lk:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p4, v0, Landroid/support/v7/app/AlertController$a;->Ll:I

    iget-object v0, p0, Landroid/support/v7/app/c$a;->P:Landroid/support/v7/app/AlertController$a;

    iput p5, v0, Landroid/support/v7/app/AlertController$a;->Lm:I

    return-object p0
.end method

.method public show()Landroid/support/v7/app/c;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    return-object v0
.end method
