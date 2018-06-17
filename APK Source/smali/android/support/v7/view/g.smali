.class public final Landroid/support/v7/view/g;
.super Landroid/view/MenuInflater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/g$b;,
        Landroid/support/v7/view/g$a;
    }
.end annotation


# static fields
.field static final PC:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final PD:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final PE:[Ljava/lang/Object;

.field final PF:[Ljava/lang/Object;

.field PG:Ljava/lang/Object;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/view/g;->PC:[Ljava/lang/Class;

    sput-object v0, Landroid/support/v7/view/g;->PD:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/view/g;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v7/view/g;->PE:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/view/g;->PE:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/view/g;->PF:[Ljava/lang/Object;

    return-void
.end method

.method static K(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Landroid/support/v7/view/g$b;

    invoke-direct {v5, p0, p3}, Landroid/support/v7/view/g$b;-><init>(Landroid/support/v7/view/g;Landroid/view/Menu;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    move v3, v0

    :goto_1
    if-nez v1, :cond_12

    packed-switch v3, :pswitch_data_0

    :cond_1
    move v0, v1

    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting menu, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :pswitch_0
    if-nez v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "group"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v5, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    iget-object v0, v0, Landroid/support/v7/view/g;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/support/v7/a/a$j;->MenuGroup:[I

    invoke-virtual {v0, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Landroid/support/v7/a/a$j;->MenuGroup_android_id:I

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v5, Landroid/support/v7/view/g$b;->PJ:I

    sget v3, Landroid/support/v7/a/a$j;->MenuGroup_android_menuCategory:I

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Landroid/support/v7/view/g$b;->PK:I

    sget v3, Landroid/support/v7/a/a$j;->MenuGroup_android_orderInCategory:I

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Landroid/support/v7/view/g$b;->PL:I

    sget v3, Landroid/support/v7/a/a$j;->MenuGroup_android_checkableBehavior:I

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Landroid/support/v7/view/g$b;->PM:I

    sget v3, Landroid/support/v7/a/a$j;->MenuGroup_android_visible:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v5, Landroid/support/v7/view/g$b;->PN:Z

    sget v3, Landroid/support/v7/a/a$j;->MenuGroup_android_enabled:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v5, Landroid/support/v7/view/g$b;->PO:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "item"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v5, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    iget-object v0, v0, Landroid/support/v7/view/g;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/support/v7/a/a$j;->MenuItem:[I

    invoke-virtual {v0, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_id:I

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v5, Landroid/support/v7/view/g$b;->PQ:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_menuCategory:I

    iget v6, v5, Landroid/support/v7/view/g$b;->PK:I

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v6, Landroid/support/v7/a/a$j;->MenuItem_android_orderInCategory:I

    iget v7, v5, Landroid/support/v7/view/g$b;->PL:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/high16 v7, -0x10000

    and-int/2addr v0, v7

    const v7, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v0, v6

    iput v0, v5, Landroid/support/v7/view/g$b;->PR:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_title:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->PS:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_titleCondensed:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->PT:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_icon:I

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v5, Landroid/support/v7/view/g$b;->PU:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/g$b;->C(Ljava/lang/String;)C

    move-result v0

    iput-char v0, v5, Landroid/support/v7/view/g$b;->PV:C

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_alphabeticModifiers:I

    const/16 v6, 0x1000

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v5, Landroid/support/v7/view/g$b;->PW:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_numericShortcut:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/g$b;->C(Ljava/lang/String;)C

    move-result v0

    iput-char v0, v5, Landroid/support/v7/view/g$b;->PX:C

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_numericModifiers:I

    const/16 v6, 0x1000

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v5, Landroid/support/v7/view/g$b;->PY:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_checkable:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_checkable:I

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput v0, v5, Landroid/support/v7/view/g$b;->PZ:I

    :goto_4
    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_checked:I

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v5, Landroid/support/v7/view/g$b;->Qa:Z

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_visible:I

    iget-boolean v6, v5, Landroid/support/v7/view/g$b;->PN:Z

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v5, Landroid/support/v7/view/g$b;->Qb:Z

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_enabled:I

    iget-boolean v6, v5, Landroid/support/v7/view/g$b;->PO:Z

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v5, Landroid/support/v7/view/g$b;->Qc:Z

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_showAsAction:I

    const/4 v6, -0x1

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v5, Landroid/support/v7/view/g$b;->Qd:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_android_onClick:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qh:Ljava/lang/String;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_actionLayout:I

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v5, Landroid/support/v7/view/g$b;->Qe:I

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_actionViewClass:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qf:Ljava/lang/String;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_actionProviderClass:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qg:Ljava/lang/String;

    iget-object v0, v5, Landroid/support/v7/view/g$b;->Qg:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    iget v6, v5, Landroid/support/v7/view/g$b;->Qe:I

    if-nez v6, :cond_8

    iget-object v6, v5, Landroid/support/v7/view/g$b;->Qf:Ljava/lang/String;

    if-nez v6, :cond_8

    iget-object v0, v5, Landroid/support/v7/view/g$b;->Qg:Ljava/lang/String;

    sget-object v6, Landroid/support/v7/view/g;->PD:[Ljava/lang/Class;

    iget-object v7, v5, Landroid/support/v7/view/g$b;->Qn:Landroid/support/v7/view/g;

    iget-object v7, v7, Landroid/support/v7/view/g;->PF:[Ljava/lang/Object;

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v7/view/g$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/c;

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qi:Landroid/support/v4/view/c;

    :goto_6
    sget v0, Landroid/support/v7/a/a$j;->MenuItem_contentDescription:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qj:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_tooltipText:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qk:Ljava/lang/CharSequence;

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_iconTintMode:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_iconTintMode:I

    const/4 v6, -0x1

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v6, v5, Landroid/support/v7/view/g$b;->Qm:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v6}, Landroid/support/v7/widget/am;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qm:Landroid/graphics/PorterDuff$Mode;

    :goto_7
    sget v0, Landroid/support/v7/a/a$j;->MenuItem_iconTint:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Landroid/support/v7/a/a$j;->MenuItem_iconTint:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Ql:Landroid/content/res/ColorStateList;

    :goto_8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/support/v7/view/g$b;->PP:Z

    move v0, v1

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_6
    iget v0, v5, Landroid/support/v7/view/g$b;->PM:I

    iput v0, v5, Landroid/support/v7/view/g$b;->PZ:I

    goto/16 :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    const-string v0, "SupportMenuInflater"

    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qi:Landroid/support/v4/view/c;

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Qm:Landroid/graphics/PorterDuff$Mode;

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v7/view/g$b;->Ql:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_c
    const-string v0, "menu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Landroid/support/v7/view/g$b;->eR()Landroid/view/SubMenu;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    move v0, v1

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x1

    move v0, v1

    move-object v2, v3

    goto/16 :goto_2

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v0, v1

    move v4, v3

    goto/16 :goto_2

    :cond_e
    const-string v3, "group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v5}, Landroid/support/v7/view/g$b;->eQ()V

    move v0, v1

    goto/16 :goto_2

    :cond_f
    const-string v3, "item"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v0, v5, Landroid/support/v7/view/g$b;->PP:Z

    if-nez v0, :cond_1

    iget-object v0, v5, Landroid/support/v7/view/g$b;->Qi:Landroid/support/v4/view/c;

    if-eqz v0, :cond_10

    iget-object v0, v5, Landroid/support/v7/view/g$b;->Qi:Landroid/support/v4/view/c;

    invoke-virtual {v0}, Landroid/support/v4/view/c;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5}, Landroid/support/v7/view/g$b;->eR()Landroid/view/SubMenu;

    move v0, v1

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v7/view/g$b;->PP:Z

    iget-object v0, v5, Landroid/support/v7/view/g$b;->PI:Landroid/view/Menu;

    iget v3, v5, Landroid/support/v7/view/g$b;->PJ:I

    iget v6, v5, Landroid/support/v7/view/g$b;->PQ:I

    iget v7, v5, Landroid/support/v7/view/g$b;->PR:I

    iget-object v8, v5, Landroid/support/v7/view/g$b;->PS:Ljava/lang/CharSequence;

    invoke-interface {v0, v3, v6, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/support/v7/view/g$b;->a(Landroid/view/MenuItem;)V

    move v0, v1

    goto/16 :goto_2

    :cond_11
    const-string v3, "menu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .locals 4

    instance-of v0, p2, Landroid/support/v4/b/a/a;

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/view/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Landroid/support/v7/view/g;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "Error inflating menu XML"

    invoke-direct {v2, v3, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
