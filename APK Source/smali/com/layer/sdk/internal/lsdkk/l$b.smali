.class final Lcom/layer/sdk/internal/lsdkk/l$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final bsT:Landroid/app/Activity;

.field final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/l$b;->bsT:Landroid/app/Activity;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/l$b;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkk/l$b;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkk/l$b;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
