.class final Landroid/support/d/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final sZ:I

.field public final ta:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/d/a$c;->name:Ljava/lang/String;

    iput p2, p0, Landroid/support/d/a$c;->number:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/d/a$c;->sZ:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/support/d/a$c;->ta:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/d/a$c;->name:Ljava/lang/String;

    iput p2, p0, Landroid/support/d/a$c;->number:I

    iput p3, p0, Landroid/support/d/a$c;->sZ:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/d/a$c;->ta:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/d/a$c;-><init>(Ljava/lang/String;II)V

    return-void
.end method
