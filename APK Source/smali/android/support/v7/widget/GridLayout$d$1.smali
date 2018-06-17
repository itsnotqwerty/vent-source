.class final Landroid/support/v7/widget/GridLayout$d$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field aaO:[Landroid/support/v7/widget/GridLayout$b;

.field aaP:I

.field aaQ:[[Landroid/support/v7/widget/GridLayout$b;

.field aaR:[I

.field final synthetic aaS:[Landroid/support/v7/widget/GridLayout$b;

.field final synthetic aaT:Landroid/support/v7/widget/GridLayout$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/GridLayout$d$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/support/v7/widget/GridLayout$d;[Landroid/support/v7/widget/GridLayout$b;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaT:Landroid/support/v7/widget/GridLayout$d;

    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaS:[Landroid/support/v7/widget/GridLayout$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaS:[Landroid/support/v7/widget/GridLayout$b;

    array-length v0, v0

    new-array v0, v0, [Landroid/support/v7/widget/GridLayout$b;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaO:[Landroid/support/v7/widget/GridLayout$b;

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaO:[Landroid/support/v7/widget/GridLayout$b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaP:I

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaT:Landroid/support/v7/widget/GridLayout$d;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaS:[Landroid/support/v7/widget/GridLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$d;->a([Landroid/support/v7/widget/GridLayout$b;)[[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaQ:[[Landroid/support/v7/widget/GridLayout$b;

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaT:Landroid/support/v7/widget/GridLayout$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaR:[I

    return-void
.end method


# virtual methods
.method final bt(I)V
    .locals 7

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaR:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaR:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaQ:[[Landroid/support/v7/widget/GridLayout$b;

    aget-object v1, v0, p1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v4, v4, Landroid/support/v7/widget/GridLayout$f;->max:I

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayout$d$1;->bt(I)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaO:[Landroid/support/v7/widget/GridLayout$b;

    iget v5, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaP:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaP:I

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d$1;->aaR:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Landroid/support/v7/widget/GridLayout$d$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
