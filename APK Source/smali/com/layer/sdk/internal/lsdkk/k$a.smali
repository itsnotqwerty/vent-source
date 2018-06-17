.class public Lcom/layer/sdk/internal/lsdkk/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/k$a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkk/k$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkk/k$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/k$a;->a:Ljava/lang/String;

    return-object v0
.end method
