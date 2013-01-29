.class public Lcom/android/gallery3d/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public headerHeight:I

.field public headerSeperatorHeight:I

.field public headerSeperatorMargin:I

.field public headerTextFontSize:I

.field public headerTextHeight:I

.field public headerTextMarginLeft:I

.field public headerTextMarginTop:I

.field public maxTotalSlotGap:I

.field public minSlotGap:I

.field public padding:I

.field public paddingHori:I

.field public rowsLand:I

.field public rowsPort:I

.field public slotGap:I

.field public slotGapH:I

.field public slotGapV:I

.field public slotHeight:I

.field public slotWidth:I

.field public videoSlotGapV:I

.field public videoSlotHeight:I

.field public videoSlotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 455
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 457
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 458
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotWidth:I

    .line 459
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotHeight:I

    .line 460
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    .line 461
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapH:I

    .line 462
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotGapV:I

    .line 463
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->minSlotGap:I

    .line 464
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->maxTotalSlotGap:I

    .line 466
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 467
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 468
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    .line 470
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->padding:I

    .line 471
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->paddingHori:I

    .line 473
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerHeight:I

    .line 475
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextHeight:I

    .line 476
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginLeft:I

    .line 477
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginTop:I

    .line 478
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextFontSize:I

    .line 480
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerSeperatorHeight:I

    .line 481
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerSeperatorMargin:I

    return-void
.end method
