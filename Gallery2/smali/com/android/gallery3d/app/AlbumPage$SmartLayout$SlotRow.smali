.class Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;
.super Ljava/lang/Object;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage$SmartLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlotRow"
.end annotation


# instance fields
.field private mRowSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSlotLength:I

.field final synthetic this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    .line 1763
    return-void
.end method


# virtual methods
.method public addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    iget-object v1, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    .line 1768
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1772
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    .line 1773
    return-void
.end method

.method public getRowSlotCount()I
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRowSlots()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalSlotLength()I
    .locals 1

    .prologue
    .line 1780
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    return v0
.end method

.method public layout(I)V
    .locals 10
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    .line 1788
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1789
    .local v4, size:I
    if-gtz v4, :cond_1

    .line 1790
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static {v7, v6}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 1826
    :cond_0
    return-void

    .line 1794
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1795
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 1817
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v7

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    sub-int v1, v7, v8

    .line 1818
    .local v1, posX:I
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1819
    .local v5, slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    iget-object v2, v5, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1820
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v7

    add-int/2addr v1, v7

    .line 1821
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v2, v6, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1822
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p1

    invoke-virtual {v2, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1823
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v1, v7

    .line 1824
    goto :goto_2

    .line 1797
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #posX:I
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v5           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v3

    .line 1798
    .local v3, rowLength:I
    iget v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    sub-int v7, v3, v7

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMaxTotalSlotGap:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    if-le v7, v8, :cond_4

    .line 1799
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3800(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v7

    if-gtz v7, :cond_2

    .line 1800
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget-object v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static {v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v8

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    goto :goto_0

    .line 1803
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    iget v8, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    sub-int v8, v3, v8

    add-int/lit8 v9, v4, 0x1

    div-int/2addr v8, v9

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static {v7, v8}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$3802(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    goto/16 :goto_0

    .end local v3           #rowLength:I
    :cond_5
    move v1, v6

    .line 1817
    goto :goto_1
.end method
