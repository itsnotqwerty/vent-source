.class public final Landroid/support/v4/e/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final Bu:I

.field public final Bv:Z

.field public final DD:Landroid/net/Uri;

.field public final DE:I

.field final Dm:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/g/l;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/e/b$b;->DD:Landroid/net/Uri;

    iput p2, p0, Landroid/support/v4/e/b$b;->DE:I

    iput p3, p0, Landroid/support/v4/e/b$b;->Bu:I

    iput-boolean p4, p0, Landroid/support/v4/e/b$b;->Bv:Z

    iput p5, p0, Landroid/support/v4/e/b$b;->Dm:I

    return-void
.end method
