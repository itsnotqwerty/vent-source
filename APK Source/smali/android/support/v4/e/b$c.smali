.class final Landroid/support/v4/e/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final DF:I

.field final pt:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e/b$c;->pt:Landroid/graphics/Typeface;

    iput p2, p0, Landroid/support/v4/e/b$c;->DF:I

    return-void
.end method
