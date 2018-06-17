.class final Landroid/support/v7/view/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field PI:Landroid/view/Menu;

.field PJ:I

.field PK:I

.field PL:I

.field PM:I

.field PN:Z

.field PO:Z

.field PP:Z

.field PQ:I

.field PR:I

.field PS:Ljava/lang/CharSequence;

.field PT:Ljava/lang/CharSequence;

.field PU:I

.field PV:C

.field PW:I

.field PX:C

.field PY:I

.field PZ:I

.field Qa:Z

.field Qb:Z

.field Qc:Z

.field Qd:I

.field Qe:I

.field Qf:Ljava/lang/String;

.field Qg:Ljava/lang/String;

.field Qh:Ljava/lang/String;

.field Qi:Landroid/support/v4/view/c;

.field Qj:Ljava/lang/CharSequence;

.field Qk:Ljava/lang/CharSequence;

.field Ql:Landroid/content/res/ColorStateList;

.field Qm:Landroid/graphics/PorterDuff$Mode;

.field final synthetic Qn:Landroid/support/v7/view/g;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/g;Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/g$b;->Ql:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/view/g$b;->Qm:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroid/support/v7/view/g$b;->PI:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/support/v7/view/g$b;->eQ()V

    return-void
.end method

.method static C(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    iget-object v0, v0, Landroid/support/v7/view/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot instantiate class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/MenuItem;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/v7/view/g$b;->Qa:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/view/g$b;->Qb:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/view/g$b;->Qc:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget v0, p0, Landroid/support/v7/view/g$b;->PZ:I

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/view/g$b;->PT:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/g$b;->PU:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Landroid/support/v7/view/g$b;->Qd:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/view/g$b;->Qd:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qh:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    iget-object v0, v0, Landroid/support/v7/view/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/view/g$a;

    iget-object v1, p0, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    iget-object v4, v1, Landroid/support/v7/view/g;->PG:Ljava/lang/Object;

    if-nez v4, :cond_3

    iget-object v4, v1, Landroid/support/v7/view/g;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/view/g;->K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Landroid/support/v7/view/g;->PG:Ljava/lang/Object;

    :cond_3
    iget-object v1, v1, Landroid/support/v7/view/g;->PG:Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v7/view/g$b;->Qh:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/support/v7/view/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_4
    iget v0, p0, Landroid/support/v7/view/g$b;->PZ:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    instance-of v0, p1, Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/j;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/j;->K(Z)V

    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qf:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qf:Ljava/lang/String;

    sget-object v1, Landroid/support/v7/view/g;->PC:[Ljava/lang/Class;

    iget-object v3, p0, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    iget-object v3, v3, Landroid/support/v7/view/g;->PE:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v7/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_2
    iget v0, p0, Landroid/support/v7/view/g$b;->Qe:I

    if-lez v0, :cond_6

    if-nez v2, :cond_c

    iget v0, p0, Landroid/support/v7/view/g$b;->Qe:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_6
    :goto_3
    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qi:Landroid/support/v4/view/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qi:Landroid/support/v4/view/c;

    invoke-static {p1, v0}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;Landroid/support/v4/view/c;)Landroid/view/MenuItem;

    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qj:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qk:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/g;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, Landroid/support/v7/view/g$b;->PV:C

    iget v1, p0, Landroid/support/v7/view/g$b;->PW:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/g;->b(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, Landroid/support/v7/view/g$b;->PX:C

    iget v1, p0, Landroid/support/v7/view/g$b;->PY:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qm:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/view/g$b;->Qm:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/g$b;->Ql:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/view/g$b;->Ql:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void

    :cond_a
    instance-of v0, p1, Landroid/support/v7/view/menu/k;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/k;

    :try_start_0
    iget-object v1, v0, Landroid/support/v7/view/menu/k;->SL:Ljava/lang/reflect/Method;

    if-nez v1, :cond_b

    iget-object v1, v0, Landroid/support/v7/view/menu/k;->Ra:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/b/a/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setExclusiveCheckable"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/view/menu/k;->SL:Ljava/lang/reflect/Method;

    :cond_b
    iget-object v1, v0, Landroid/support/v7/view/menu/k;->SL:Ljava/lang/reflect/Method;

    iget-object v0, v0, Landroid/support/v7/view/menu/k;->Ra:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MenuItemWrapper"

    const-string v4, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_c
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    move v2, v3

    goto/16 :goto_2
.end method

.method public final eQ()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/g$b;->PJ:I

    iput v0, p0, Landroid/support/v7/view/g$b;->PK:I

    iput v0, p0, Landroid/support/v7/view/g$b;->PL:I

    iput v0, p0, Landroid/support/v7/view/g$b;->PM:I

    iput-boolean v1, p0, Landroid/support/v7/view/g$b;->PN:Z

    iput-boolean v1, p0, Landroid/support/v7/view/g$b;->PO:Z

    return-void
.end method

.method public final eR()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/g$b;->PP:Z

    iget-object v0, p0, Landroid/support/v7/view/g$b;->PI:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/g$b;->PJ:I

    iget v2, p0, Landroid/support/v7/view/g$b;->PQ:I

    iget v3, p0, Landroid/support/v7/view/g$b;->PR:I

    iget-object v4, p0, Landroid/support/v7/view/g$b;->PS:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/view/g$b;->a(Landroid/view/MenuItem;)V

    return-object v0
.end method
