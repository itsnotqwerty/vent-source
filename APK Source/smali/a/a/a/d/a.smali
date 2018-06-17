.class public final La/a/a/d/a;
.super Ljava/lang/Object;


# static fields
.field public static final ctg:La/a/a/d/a;


# instance fields
.field public final cth:La/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/d/a;

    new-instance v1, La/a/a/f/c;

    invoke-direct {v1}, La/a/a/f/c;-><init>()V

    invoke-direct {v0, v1}, La/a/a/d/a;-><init>(La/a/a/a;)V

    sput-object v0, La/a/a/d/a;->ctg:La/a/a/d/a;

    return-void
.end method

.method private constructor <init>(La/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/d/a;->cth:La/a/a/a;

    return-void
.end method
