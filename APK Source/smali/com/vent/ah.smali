.class public Lcom/vent/ah;
.super Landroid/support/v4/app/i;


# instance fields
.field final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vent/ah;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method b(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/vent/ah;->getActivity()Landroid/support/v4/app/j;

    sget v0, Lcom/vent/a;->bTD:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/a;->bTD:I

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    sget v0, Lcom/vent/a;->bTD:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/a;->bTD:I

    return-void
.end method
