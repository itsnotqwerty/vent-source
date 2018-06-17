.class public final Landroid/support/constraint/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/c$a;
    }
.end annotation


# static fields
.field private static final cX:[I

.field private static cZ:Landroid/util/SparseIntArray;


# instance fields
.field cY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/16 v3, 0x40

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/constraint/c;->cX:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintLeft_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/g$b;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/c;->cY:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;II)I
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method static a(Landroid/support/constraint/c$a;Landroid/content/res/TypedArray;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget-object v3, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, "ConstraintSet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown attribute 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget v3, p0, Landroid/support/constraint/c$a;->bP:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bP:I

    goto :goto_1

    :pswitch_2
    iget v3, p0, Landroid/support/constraint/c$a;->bQ:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bQ:I

    goto :goto_1

    :pswitch_3
    iget v3, p0, Landroid/support/constraint/c$a;->bR:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bR:I

    goto :goto_1

    :pswitch_4
    iget v3, p0, Landroid/support/constraint/c$a;->bS:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bS:I

    goto :goto_1

    :pswitch_5
    iget v3, p0, Landroid/support/constraint/c$a;->bT:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bT:I

    goto :goto_1

    :pswitch_6
    iget v3, p0, Landroid/support/constraint/c$a;->bU:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bU:I

    goto :goto_1

    :pswitch_7
    iget v3, p0, Landroid/support/constraint/c$a;->bV:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bV:I

    goto :goto_1

    :pswitch_8
    iget v3, p0, Landroid/support/constraint/c$a;->bW:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bW:I

    goto :goto_1

    :pswitch_9
    iget v3, p0, Landroid/support/constraint/c$a;->bX:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bX:I

    goto :goto_1

    :pswitch_a
    iget v3, p0, Landroid/support/constraint/c$a;->cA:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cA:I

    goto :goto_1

    :pswitch_b
    iget v3, p0, Landroid/support/constraint/c$a;->cB:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cB:I

    goto :goto_1

    :pswitch_c
    iget v3, p0, Landroid/support/constraint/c$a;->bM:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bM:I

    goto :goto_1

    :pswitch_d
    iget v3, p0, Landroid/support/constraint/c$a;->bN:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bN:I

    goto :goto_1

    :pswitch_e
    iget v3, p0, Landroid/support/constraint/c$a;->bO:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bO:F

    goto :goto_1

    :pswitch_f
    iget v3, p0, Landroid/support/constraint/c$a;->orientation:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->orientation:I

    goto/16 :goto_1

    :pswitch_10
    iget v3, p0, Landroid/support/constraint/c$a;->cb:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cb:I

    goto/16 :goto_1

    :pswitch_11
    iget v3, p0, Landroid/support/constraint/c$a;->cc:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cc:I

    goto/16 :goto_1

    :pswitch_12
    iget v3, p0, Landroid/support/constraint/c$a;->cd:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cd:I

    goto/16 :goto_1

    :pswitch_13
    iget v3, p0, Landroid/support/constraint/c$a;->ce:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->ce:I

    goto/16 :goto_1

    :pswitch_14
    iget v3, p0, Landroid/support/constraint/c$a;->bY:I

    invoke-static {p1, v2, v3}, Landroid/support/constraint/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bY:I

    goto/16 :goto_1

    :pswitch_15
    iget v3, p0, Landroid/support/constraint/c$a;->bZ:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bZ:I

    goto/16 :goto_1

    :pswitch_16
    iget v3, p0, Landroid/support/constraint/c$a;->ca:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->ca:F

    goto/16 :goto_1

    :pswitch_17
    iget v3, p0, Landroid/support/constraint/c$a;->cf:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cf:I

    goto/16 :goto_1

    :pswitch_18
    iget v3, p0, Landroid/support/constraint/c$a;->cg:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cg:I

    goto/16 :goto_1

    :pswitch_19
    iget v3, p0, Landroid/support/constraint/c$a;->ch:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->ch:I

    goto/16 :goto_1

    :pswitch_1a
    iget v3, p0, Landroid/support/constraint/c$a;->ci:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->ci:I

    goto/16 :goto_1

    :pswitch_1b
    iget v3, p0, Landroid/support/constraint/c$a;->cj:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cj:I

    goto/16 :goto_1

    :pswitch_1c
    iget v3, p0, Landroid/support/constraint/c$a;->ck:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->ck:I

    goto/16 :goto_1

    :pswitch_1d
    iget v3, p0, Landroid/support/constraint/c$a;->cl:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cl:F

    goto/16 :goto_1

    :pswitch_1e
    iget v3, p0, Landroid/support/constraint/c$a;->cm:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cm:F

    goto/16 :goto_1

    :pswitch_1f
    iget v3, p0, Landroid/support/constraint/c$a;->leftMargin:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->leftMargin:I

    goto/16 :goto_1

    :pswitch_20
    iget v3, p0, Landroid/support/constraint/c$a;->rightMargin:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->rightMargin:I

    goto/16 :goto_1

    :pswitch_21
    iget v3, p0, Landroid/support/constraint/c$a;->df:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->df:I

    goto/16 :goto_1

    :pswitch_22
    iget v3, p0, Landroid/support/constraint/c$a;->de:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->de:I

    goto/16 :goto_1

    :pswitch_23
    iget v3, p0, Landroid/support/constraint/c$a;->topMargin:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->topMargin:I

    goto/16 :goto_1

    :pswitch_24
    iget v3, p0, Landroid/support/constraint/c$a;->bottomMargin:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->bottomMargin:I

    goto/16 :goto_1

    :pswitch_25
    iget v3, p0, Landroid/support/constraint/c$a;->db:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->db:I

    goto/16 :goto_1

    :pswitch_26
    iget v3, p0, Landroid/support/constraint/c$a;->dc:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dc:I

    goto/16 :goto_1

    :pswitch_27
    iget v3, p0, Landroid/support/constraint/c$a;->visibility:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->visibility:I

    sget-object v2, Landroid/support/constraint/c;->cX:[I

    iget v3, p0, Landroid/support/constraint/c$a;->visibility:I

    aget v2, v2, v3

    iput v2, p0, Landroid/support/constraint/c$a;->visibility:I

    goto/16 :goto_1

    :pswitch_28
    iget v3, p0, Landroid/support/constraint/c$a;->alpha:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->alpha:F

    goto/16 :goto_1

    :pswitch_29
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/constraint/c$a;->dg:Z

    iget v3, p0, Landroid/support/constraint/c$a;->dh:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dh:F

    goto/16 :goto_1

    :pswitch_2a
    iget v3, p0, Landroid/support/constraint/c$a;->di:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->di:F

    goto/16 :goto_1

    :pswitch_2b
    iget v3, p0, Landroid/support/constraint/c$a;->dj:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dj:F

    goto/16 :goto_1

    :pswitch_2c
    iget v3, p0, Landroid/support/constraint/c$a;->dk:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dk:F

    goto/16 :goto_1

    :pswitch_2d
    iget v3, p0, Landroid/support/constraint/c$a;->dl:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dl:F

    goto/16 :goto_1

    :pswitch_2e
    iget v3, p0, Landroid/support/constraint/c$a;->dm:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dm:F

    goto/16 :goto_1

    :pswitch_2f
    iget v3, p0, Landroid/support/constraint/c$a;->do:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->do:F

    goto/16 :goto_1

    :pswitch_30
    iget v3, p0, Landroid/support/constraint/c$a;->dp:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dp:F

    goto/16 :goto_1

    :pswitch_31
    iget v3, p0, Landroid/support/constraint/c$a;->dq:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dq:F

    goto/16 :goto_1

    :pswitch_32
    iget v3, p0, Landroid/support/constraint/c$a;->dr:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dr:F

    goto/16 :goto_1

    :pswitch_33
    iget v3, p0, Landroid/support/constraint/c$a;->ds:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->ds:F

    goto/16 :goto_1

    :pswitch_34
    iget v3, p0, Landroid/support/constraint/c$a;->verticalWeight:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->verticalWeight:F

    goto/16 :goto_1

    :pswitch_35
    iget v3, p0, Landroid/support/constraint/c$a;->horizontalWeight:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->horizontalWeight:F

    goto/16 :goto_1

    :pswitch_36
    iget v3, p0, Landroid/support/constraint/c$a;->cr:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cr:I

    goto/16 :goto_1

    :pswitch_37
    iget v3, p0, Landroid/support/constraint/c$a;->cq:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->cq:I

    goto/16 :goto_1

    :pswitch_38
    iget v3, p0, Landroid/support/constraint/c$a;->dd:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/c$a;->dd:I

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/c$a;->cn:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3a
    const-string v3, "ConstraintSet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unused attribute 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/c;->cZ:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_24
        :pswitch_8
        :pswitch_7
        :pswitch_39
        :pswitch_a
        :pswitch_b
        :pswitch_22
        :pswitch_13
        :pswitch_12
        :pswitch_1a
        :pswitch_1c
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_18
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_1d
        :pswitch_26
        :pswitch_27
        :pswitch_25
        :pswitch_1f
        :pswitch_1
        :pswitch_2
        :pswitch_f
        :pswitch_20
        :pswitch_3
        :pswitch_4
        :pswitch_21
        :pswitch_10
        :pswitch_11
        :pswitch_23
        :pswitch_6
        :pswitch_5
        :pswitch_1e
        :pswitch_38
        :pswitch_35
        :pswitch_34
        :pswitch_37
        :pswitch_36
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method final b(Landroid/support/constraint/ConstraintLayout;)V
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v4

    new-instance v5, Ljava/util/HashSet;

    iget-object v0, p0, Landroid/support/constraint/c;->cY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_5

    invoke-virtual {p1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v7, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/c;->cY:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/c;->cY:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/c$a;

    iget v1, v0, Landroid/support/constraint/c$a;->dC:I

    if-eq v1, v7, :cond_1

    iget v1, v0, Landroid/support/constraint/c$a;->dC:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/c$a;->a(Landroid/support/constraint/ConstraintLayout$a;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Landroid/support/constraint/c$a;->visibility:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v1, v6, :cond_4

    iget v1, v0, Landroid/support/constraint/c$a;->alpha:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    iget v1, v0, Landroid/support/constraint/c$a;->di:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setRotation(F)V

    iget v1, v0, Landroid/support/constraint/c$a;->dj:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setRotationX(F)V

    iget v1, v0, Landroid/support/constraint/c$a;->dk:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setRotationY(F)V

    iget v1, v0, Landroid/support/constraint/c$a;->dl:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, v0, Landroid/support/constraint/c$a;->dm:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    iget v1, v0, Landroid/support/constraint/c$a;->do:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Landroid/support/constraint/c$a;->do:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    :cond_2
    iget v1, v0, Landroid/support/constraint/c$a;->dp:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Landroid/support/constraint/c$a;->dp:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_3
    iget v1, v0, Landroid/support/constraint/c$a;->dq:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, v0, Landroid/support/constraint/c$a;->dr:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v1, v6, :cond_4

    iget v1, v0, Landroid/support/constraint/c$a;->ds:F

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v1, v0, Landroid/support/constraint/c$a;->dg:Z

    if-eqz v1, :cond_4

    iget v0, v0, Landroid/support/constraint/c$a;->dh:F

    invoke-virtual {v2, v0}, Landroid/view/View;->setElevation(F)V

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :pswitch_0
    move-object v1, v2

    check-cast v1, Landroid/support/constraint/a;

    invoke-virtual {v1, v6}, Landroid/support/constraint/a;->setId(I)V

    iget-object v6, v0, Landroid/support/constraint/c$a;->dD:[I

    invoke-virtual {v1, v6}, Landroid/support/constraint/a;->setReferencedIds([I)V

    iget v6, v0, Landroid/support/constraint/c$a;->dB:I

    invoke-virtual {v1, v6}, Landroid/support/constraint/a;->setType(I)V

    invoke-static {}, Landroid/support/constraint/ConstraintLayout;->aj()Landroid/support/constraint/ConstraintLayout$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/c$a;->a(Landroid/support/constraint/ConstraintLayout$a;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/support/constraint/c;->cY:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/c$a;

    iget v3, v1, Landroid/support/constraint/c$a;->dC:I

    if-eq v3, v7, :cond_7

    iget v3, v1, Landroid/support/constraint/c$a;->dC:I

    packed-switch v3, :pswitch_data_1

    :cond_7
    :goto_3
    iget-boolean v3, v1, Landroid/support/constraint/c$a;->da:Z

    if-eqz v3, :cond_6

    new-instance v3, Landroid/support/constraint/e;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/constraint/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/support/constraint/e;->setId(I)V

    invoke-static {}, Landroid/support/constraint/ConstraintLayout;->aj()Landroid/support/constraint/ConstraintLayout$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/c$a;->a(Landroid/support/constraint/ConstraintLayout$a;)V

    invoke-virtual {p1, v3, v0}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :pswitch_1
    new-instance v3, Landroid/support/constraint/a;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/constraint/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/a;->setId(I)V

    iget-object v4, v1, Landroid/support/constraint/c$a;->dD:[I

    invoke-virtual {v3, v4}, Landroid/support/constraint/a;->setReferencedIds([I)V

    iget v4, v1, Landroid/support/constraint/c$a;->dB:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/a;->setType(I)V

    invoke-static {}, Landroid/support/constraint/ConstraintLayout;->aj()Landroid/support/constraint/ConstraintLayout$a;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/constraint/c$a;->a(Landroid/support/constraint/ConstraintLayout$a;)V

    invoke-virtual {p1, v3, v4}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
