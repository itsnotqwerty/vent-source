.class final Lcom/vent/d/a$b;
.super Landroid/graphics/drawable/StateListDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vent/d/a$a;Lcom/vent/d/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object p1, p0, Lcom/vent/d/a$b;->key:Ljava/lang/String;

    sget-object v0, Lcom/vent/d/a;->cmB:[I

    invoke-virtual {p0, v0, p2}, Lcom/vent/d/a$b;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, v0, p3}, Lcom/vent/d/a$b;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method
