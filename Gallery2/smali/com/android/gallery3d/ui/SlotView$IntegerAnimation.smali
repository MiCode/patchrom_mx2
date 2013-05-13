.class Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;
.super Lcom/android/gallery3d/anim/Animation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerAnimation"
.end annotation


# instance fields
.field private mCurrent:I

.field private mEnabled:Z

.field private mFrom:I

.field private mTarget:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 928
    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 930
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    .line 931
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    .line 932
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 961
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    .line 962
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    .line 963
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 935
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    .line 936
    return-void
.end method

.method public startAnimateTo(I)V
    .locals 1
    .parameter "target"

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mEnabled:Z

    if-nez v0, :cond_1

    .line 940
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    if-eq p1, v0, :cond_0

    .line 945
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mCurrent:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mFrom:I

    .line 946
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->mTarget:I

    .line 947
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->setDuration(I)V

    .line 948
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView$IntegerAnimation;->start()V

    goto :goto_0
.end method
