.class final Landroid/support/v7/c/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final Pp:Landroid/content/res/ColorStateList;

.field final Pq:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/c/a/b$a;->Pp:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroid/support/v7/c/a/b$a;->Pq:Landroid/content/res/Configuration;

    return-void
.end method
