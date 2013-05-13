.class Landroid/widget/AbsListView$CheckForKeyLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3204
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3204
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3206
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    .line 3207
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v4, v5

    .line 3208
    .local v1, index:I
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3210
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 3211
    const/4 v0, 0x0

    .line 3212
    .local v0, handled:Z
    const/4 v2, 0x1

    .line 3213
    .local v2, perforLongPress:Z
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 3215
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/AbsListView$DragItemFilter;

    if-eqz v4, :cond_0

    .line 3216
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;
    invoke-static {v4}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnItemDragListener;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$DragItemFilter;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AdapterView;->mSelectedPosition:I

    int-to-long v6, v6

    invoke-interface {v4, v3, v5, v6, v7}, Landroid/widget/AbsListView$DragItemFilter;->isItemDragable(Landroid/view/View;IJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3218
    const/4 v2, 0x0

    .line 3222
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3223
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-wide v6, v6, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 3225
    :cond_1
    if-eqz v0, :cond_2

    .line 3226
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3227
    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3234
    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #perforLongPress:Z
    .end local v3           #v:Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 3230
    .restart local v1       #index:I
    .restart local v3       #v:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3231
    if-eqz v3, :cond_2

    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
