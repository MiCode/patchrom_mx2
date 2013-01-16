.class Lcom/meizu/widget/CustomPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/CustomPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/widget/CustomPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSaveCurrentItems:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/meizu/widget/CustomPicker$SavedState$1;

    invoke-direct {v0}, Lcom/meizu/widget/CustomPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/CustomPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/meizu/widget/CustomPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/meizu/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private varargs constructor <init>(Landroid/os/Parcelable;[I)V
    .locals 1
    .parameter "superState"
    .parameter "currentItems"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 315
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/meizu/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    .line 316
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;[ILcom/meizu/widget/CustomPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 309
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcelable;[I)V

    return-void
.end method


# virtual methods
.method public getCurrentItems()[I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 330
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker$SavedState;->mSaveCurrentItems:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 331
    return-void
.end method
