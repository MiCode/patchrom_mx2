.class public Lcom/android/gallery3d/app/Config$AlbumSetPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSetPage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;


# instance fields
.field public labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field public slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/Config;->access$002(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 54
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 55
    sget v0, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    if-le v0, v3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-static {}, Lcom/android/gallery3d/app/Config;->access$000()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-static {}, Lcom/android/gallery3d/app/Config;->access$000()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0901b5

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0901b6

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0901d2

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->padding:I

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0901d3

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->paddingHori:I

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0901d4

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    .line 69
    :goto_0
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 70
    sget v0, Lcom/android/gallery3d/data/MediaSet;->MAX_COVER_COUNT:I

    if-le v0, v3, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901bf

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901c0

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901c1

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->infoFontSize:I

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901c2

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->topMargin:I

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901c3

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 97
    :goto_1
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-static {}, Lcom/android/gallery3d/app/Config;->access$000()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-static {}, Lcom/android/gallery3d/app/Config;->access$000()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0901b4

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGap:I

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901b8

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901b9

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901ba

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->infoOffset:I

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901bb

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901bc

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->infoFontSize:I

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901bd

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0901be

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    goto :goto_1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumSetPage;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-class v1, Lcom/android/gallery3d/app/Config$AlbumSetPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumSetPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumSetPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
