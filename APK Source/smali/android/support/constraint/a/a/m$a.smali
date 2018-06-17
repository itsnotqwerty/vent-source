.class final Landroid/support/constraint/a/a/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field fx:Landroid/support/constraint/a/a/c;

.field fy:I

.field hD:Landroid/support/constraint/a/a/c;

.field hZ:I

.field ia:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/m$a;->fx:Landroid/support/constraint/a/a/c;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/m$a;->fy:I

    iget v0, p1, Landroid/support/constraint/a/a/c;->fA:I

    iput v0, p0, Landroid/support/constraint/a/a/m$a;->hZ:I

    iget v0, p1, Landroid/support/constraint/a/a/c;->fC:I

    iput v0, p0, Landroid/support/constraint/a/a/m$a;->ia:I

    return-void
.end method
