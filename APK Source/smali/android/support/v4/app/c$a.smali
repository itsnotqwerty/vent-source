.class final Landroid/support/v4/app/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field wC:I

.field wD:Landroid/support/v4/app/i;

.field wE:I

.field wF:I

.field wG:I

.field wH:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroid/support/v4/app/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/app/c$a;->wC:I

    iput-object p2, p0, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    return-void
.end method
