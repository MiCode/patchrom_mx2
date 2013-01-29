.class public Lcom/android/gallery3d/app/Config$AlbumPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;


# instance fields
.field public labelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

.field public slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/Config;->access$002(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 116
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$Spec;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900cf

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d0

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900c7

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotWidth:I

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900c8

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotHeight:I

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d2

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapV:I

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d1

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotGapH:I

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900cd

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->videoSlotGapV:I

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d3

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->minSlotGap:I

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d4

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->maxTotalSlotGap:I

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d5

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->padding:I

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d6

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->paddingHori:I

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-static {}, Lcom/android/gallery3d/app/Config;->access$000()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    invoke-static {}, Lcom/android/gallery3d/app/Config;->access$000()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d8

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerHeight:I

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900d9

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextHeight:I

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900da

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginLeft:I

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900db

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextMarginTop:I

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900dc

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerTextFontSize:I

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900dd

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerSeperatorHeight:I

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->slotViewSpec:Lcom/android/gallery3d/ui/SlotView$Spec;

    const v1, 0x7f0900de

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/SlotView$Spec;->headerSeperatorMargin:I

    .line 144
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f0900c9

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f0900ca

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->titleOffset:I

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f0900cb

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->titleFontSize:I

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/Config$AlbumPage;->labelSpec:Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    const v1, 0x7f0900cc

    #calls: Lcom/android/gallery3d/app/Config;->getDimensionPixelSize(I)I
    invoke-static {v1}, Lcom/android/gallery3d/app/Config;->access$100(I)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->infoFontSize:I

    .line 149
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$AlbumPage;
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    const-class v1, Lcom/android/gallery3d/app/Config$AlbumPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/gallery3d/app/Config$AlbumPage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$AlbumPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;

    .line 110
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$AlbumPage;->sInstance:Lcom/android/gallery3d/app/Config$AlbumPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
