.class Landroid/widget/AbsListView$4;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2413
    iput-object p1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iput p2, p0, Landroid/widget/AbsListView$4;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .parameter "item"
    .parameter "event"

    .prologue
    const v10, 0x1020001

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/high16 v8, 0x3f80

    const/4 v5, 0x1

    .line 2417
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    if-ne v3, v9, :cond_0

    move v3, v4

    .line 2509
    :goto_0
    return v3

    .line 2420
    :cond_0
    const/4 v1, 0x0

    .line 2421
    .local v1, child:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    move v3, v5

    .line 2509
    goto :goto_0

    .line 2423
    :sswitch_0
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2424
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/AbsListView$OnItemDragListener;->onActionItemDragStart()V

    :cond_2
    move v3, v5

    .line 2425
    goto :goto_0

    :sswitch_1
    move v3, v5

    .line 2428
    goto :goto_0

    :sswitch_2
    move v3, v5

    .line 2431
    goto :goto_0

    :sswitch_3
    move v3, v5

    .line 2434
    goto :goto_0

    .line 2436
    :sswitch_4
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v6, p0, Landroid/widget/AbsListView$4;->val$position:I

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/AbsListView$OnItemDragSwapListener;

    if-eqz v3, :cond_3

    .line 2438
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$OnItemDragSwapListener;

    iget-object v4, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget v6, p0, Landroid/widget/AbsListView$4;->val$position:I

    invoke-interface {v3, v4, v6}, Landroid/widget/AbsListView$OnItemDragSwapListener;->onActionItemSwap(II)V

    move v3, v5

    .line 2439
    goto :goto_0

    :cond_3
    move v3, v4

    .line 2441
    goto :goto_0

    .line 2444
    :sswitch_5
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget-object v7, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2445
    if-eqz v1, :cond_4

    .line 2446
    instance-of v3, v1, Landroid/widget/AbsListView$DragShadowItem;

    if-eqz v3, :cond_7

    move-object v3, v1

    .line 2447
    check-cast v3, Landroid/widget/AbsListView$DragShadowItem;

    invoke-interface {v3}, Landroid/widget/AbsListView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 2448
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_4

    .line 2449
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2456
    .end local v2           #v:Landroid/view/View;
    :cond_4
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2457
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2466
    :cond_5
    :goto_3
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iput v9, v3, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 2468
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2469
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/AbsListView$OnItemDragListener;->onActionItemDragEnd()V

    .line 2471
    :cond_6
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$300(Landroid/widget/AbsListView;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2472
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$400(Landroid/widget/AbsListView;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 2473
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    #setter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3, v4}, Landroid/widget/AbsListView;->access$502(Landroid/widget/AbsListView;Landroid/view/Surface;)Landroid/view/Surface;

    goto/16 :goto_1

    .line 2452
    :cond_7
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2458
    :cond_8
    if-eqz v1, :cond_5

    .line 2459
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2460
    .local v0, checkbox:Landroid/view/View;
    if-eqz v0, :cond_9

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_9

    .line 2461
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkbox:Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2463
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_3

    .line 2478
    :sswitch_6
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    iget-object v7, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2479
    if-eqz v1, :cond_b

    .line 2480
    instance-of v3, v1, Landroid/widget/AbsListView$DragShadowItem;

    if-eqz v3, :cond_e

    move-object v3, v1

    .line 2481
    check-cast v3, Landroid/widget/AbsListView$DragShadowItem;

    invoke-interface {v3}, Landroid/widget/AbsListView$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 2482
    .restart local v2       #v:Landroid/view/View;
    if-eqz v2, :cond_a

    .line 2483
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2489
    .end local v2           #v:Landroid/view/View;
    :cond_a
    :goto_4
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2490
    .restart local v0       #checkbox:Landroid/view/View;
    if-eqz v0, :cond_b

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_b

    .line 2491
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkbox:Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2494
    :cond_b
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2497
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_c

    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_c

    .line 2498
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 2499
    :cond_c
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iput v9, v3, Landroid/widget/AbsListView;->mDragAndDropPosition:I

    .line 2500
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2501
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/AbsListView$OnItemDragListener;->onActionItemDragEnd()V

    .line 2503
    :cond_d
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2504
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 2505
    iget-object v3, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    #setter for: Landroid/view/View;->mDragSurface:Landroid/view/Surface;
    invoke-static {v3, v4}, Landroid/widget/AbsListView;->access$802(Landroid/widget/AbsListView;Landroid/view/Surface;)Landroid/view/Surface;

    goto/16 :goto_1

    .line 2486
    :cond_e
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 2421
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
