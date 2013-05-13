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
    .line 1858
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    .line 1860
    return-void
.end method


# virtual methods
.method public addSlot(Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    iget v1, p1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    .line 1865
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1869
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    .line 1870
    return-void
.end method

.method public getRowSlotCount()I
    .locals 1

    .prologue
    .line 1873
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
    .line 1881
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalSlotLength()I
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    return v0
.end method

.method public layout(I)I
    .locals 33
    .parameter "offset"

    .prologue
    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1886
    .local v19, size:I
    if-gtz v19, :cond_1

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static/range {v29 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4002(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 1888
    const/16 v16, 0x0

    .line 2014
    :cond_0
    :goto_0
    return v16

    .line 1891
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v30, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static/range {v30 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v30

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static/range {v29 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4002(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    .line 1915
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mIsVideo:Z
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4100(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mPaddingHori:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v30, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static/range {v30 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v30

    sub-int v14, v29, v30

    .line 1917
    .local v14, posX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1918
    .local v20, slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1919
    .local v15, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    add-int v14, v14, v29

    .line 1920
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v32, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I
    invoke-static/range {v32 .. v32}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v32

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1921
    move/from16 v0, p1

    invoke-virtual {v15, v14, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1922
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    move/from16 v29, v0

    add-int v14, v14, v29

    .line 1923
    goto :goto_2

    .line 1894
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v14           #posX:I
    .end local v15           #rect:Landroid/graphics/Rect;
    .end local v20           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v17

    .line 1895
    .local v17, rowLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    move/from16 v29, v0

    sub-int v29, v17, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v30, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mMaxTotalSlotGap:I
    invoke-static/range {v30 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_4

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4000(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    if-gtz v29, :cond_2

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v30, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static/range {v30 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v30

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static/range {v29 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4002(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    goto/16 :goto_1

    .line 1900
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    add-int/lit8 v31, v19, 0x1

    div-int v30, v30, v31

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mLastSlotGap:I
    invoke-static/range {v29 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4002(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;I)I

    goto/16 :goto_1

    .line 1924
    .end local v17           #rowLength:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v14       #posX:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v16

    goto/16 :goto_0

    .line 1926
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v14           #posX:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mTotalSlotLength:I

    move/from16 v25, v0

    .line 1927
    .local v25, totalSlotLength:I
    add-int/lit8 v29, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v30, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static/range {v30 .. v30}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v30

    mul-int v23, v29, v30

    .line 1928
    .local v23, totalGap:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mWidth:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    sub-int v12, v29, v23

    .line 1930
    .local v12, lengthOfSlotsScaled:I
    const/16 v28, 0x0

    .line 1931
    .local v28, wideSlotCnt:I
    const/16 v26, 0x0

    .line 1933
    .local v26, totalWideSlotLength:I
    move/from16 v0, v25

    if-ge v0, v12, :cond_8

    .line 1934
    if-lez v19, :cond_8

    .line 1935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    add-int/lit8 v30, v19, -0x1

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1936
    .local v6, lastSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    iget v7, v6, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    .line 1937
    .local v7, lastSlotWidth:I
    iget-boolean v5, v6, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mIsWide:Z

    .line 1938
    .local v5, isWide:Z
    if-lez v7, :cond_8

    .line 1939
    :goto_3
    move/from16 v0, v25

    if-ge v0, v12, :cond_8

    .line 1940
    add-int v25, v25, v7

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    sub-int v12, v12, v29

    .line 1942
    if-eqz v5, :cond_7

    .line 1943
    add-int/lit8 v28, v28, 0x1

    .line 1944
    add-int v26, v26, v7

    .line 1946
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1951
    .end local v5           #isWide:Z
    .end local v6           #lastSlot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .end local v7           #lastSlotWidth:I
    :cond_8
    const/high16 v18, 0x3f80

    .line 1952
    .local v18, scale:F
    const/high16 v27, 0x3f80

    .line 1953
    .local v27, wideScale:F
    move/from16 v0, v25

    if-le v0, v12, :cond_c

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1955
    .restart local v20       #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mIsWide:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 1956
    add-int/lit8 v28, v28, 0x1

    .line 1957
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    move/from16 v29, v0

    add-int v26, v26, v29

    goto :goto_4

    .line 1960
    .end local v20           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_a
    move/from16 v0, v28

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1961
    const/16 v28, 0x0

    .line 1963
    :cond_b
    if-lez v28, :cond_e

    .line 1964
    sub-int v24, v25, v26

    .line 1965
    .local v24, totalNoneWideSlotLength:I
    sub-int v8, v25, v12

    .line 1966
    .local v8, lengthDiff:I
    int-to-float v0, v8

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    add-int v31, v25, v26

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    mul-float v29, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1967
    .local v9, lengthDiffForNoneWide:I
    sub-int v10, v24, v9

    .line 1968
    .local v10, lengthForNoneWide:I
    sub-int v11, v12, v10

    .line 1969
    .local v11, lengthForWide:I
    int-to-float v0, v10

    move/from16 v29, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v18, v29, v30

    .line 1970
    int-to-float v0, v11

    move/from16 v29, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v27, v29, v30

    .line 1975
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #lengthDiff:I
    .end local v9           #lengthDiffForNoneWide:I
    .end local v10           #lengthForNoneWide:I
    .end local v11           #lengthForWide:I
    .end local v24           #totalNoneWideSlotLength:I
    :cond_c
    :goto_5
    const/4 v14, 0x0

    .line 1976
    .restart local v14       #posX:I
    if-lez v28, :cond_11

    .line 1977
    const/16 v16, 0x0

    .line 1978
    .local v16, rowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1979
    .restart local v20       #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1980
    .restart local v15       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    move/from16 v22, v0

    .line 1981
    .local v22, slotWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v21

    .line 1982
    .local v21, slotHeight:I
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mIsWide:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 1983
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v27

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 1984
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v27

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 1989
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 1990
    move/from16 v16, v21

    .line 1992
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    add-int v14, v14, v29

    .line 1993
    add-int v29, v14, v22

    add-int v30, p1, v21

    move/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v15, v14, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1994
    add-int v14, v14, v22

    .line 1995
    goto :goto_6

    .line 1972
    .end local v14           #posX:I
    .end local v15           #rect:Landroid/graphics/Rect;
    .end local v16           #rowHeight:I
    .end local v20           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .end local v21           #slotHeight:I
    .end local v22           #slotWidth:I
    :cond_e
    int-to-float v0, v12

    move/from16 v29, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v18, v29, v30

    goto :goto_5

    .line 1986
    .restart local v14       #posX:I
    .restart local v15       #rect:Landroid/graphics/Rect;
    .restart local v16       #rowHeight:I
    .restart local v20       #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .restart local v21       #slotHeight:I
    .restart local v22       #slotWidth:I
    :cond_f
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v18

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 1987
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v18

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v21

    goto :goto_7

    .line 1996
    .end local v15           #rect:Landroid/graphics/Rect;
    .end local v20           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .end local v21           #slotHeight:I
    .end local v22           #slotWidth:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 1997
    .restart local v20       #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 1998
    .restart local v15       #rect:Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v29

    sub-int v29, v16, v29

    div-int/lit8 v13, v29, 0x2

    .line 1999
    .local v13, offsetY:I
    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v29, v29, v13

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 2000
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v13

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 2001
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRowHeight:I

    goto :goto_8

    .line 2005
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v13           #offsetY:I
    .end local v15           #rect:Landroid/graphics/Rect;
    .end local v16           #rowHeight:I
    .end local v20           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotHeight:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4600(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v18

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 2006
    .restart local v21       #slotHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->mRowSlots:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;

    .line 2007
    .restart local v20       #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRect:Landroid/graphics/Rect;

    .line 2008
    .restart local v15       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v18

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 2009
    .restart local v22       #slotWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SlotRow;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    move-object/from16 v29, v0

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mSlotGapH:I
    invoke-static/range {v29 .. v29}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$4200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v29

    add-int v14, v14, v29

    .line 2010
    add-int v29, v14, v22

    add-int v30, p1, v21

    move/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v15, v14, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2011
    add-int v14, v14, v22

    .line 2012
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;->mRowHeight:I

    goto :goto_9

    .end local v15           #rect:Landroid/graphics/Rect;
    .end local v20           #slot:Lcom/android/gallery3d/app/AlbumPage$AlbumSlot;
    .end local v22           #slotWidth:I
    :cond_12
    move/from16 v16, v21

    .line 2014
    goto/16 :goto_0
.end method
