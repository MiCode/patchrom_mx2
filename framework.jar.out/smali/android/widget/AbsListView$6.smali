.class Landroid/widget/AbsListView$6;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$motionPosition:I

.field final synthetic val$performClick:Landroid/widget/AbsListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;ILandroid/widget/AbsListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3987
    iput-object p1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iput-object p2, p0, Landroid/widget/AbsListView$6;->val$child:Landroid/view/View;

    iput p3, p0, Landroid/widget/AbsListView$6;->val$motionPosition:I

    iput-object p4, p0, Landroid/widget/AbsListView$6;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 3990
    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v5, -0x1

    iput v5, v4, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3991
    iget-object v4, p0, Landroid/widget/AbsListView$6;->val$child:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3992
    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3994
    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_1

    .line 3995
    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v4, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 3996
    .local v0, checkRegion:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Landroid/widget/AbsListView$6;->val$motionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3997
    .local v1, id:J
    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    instance-of v4, v4, Landroid/widget/ListView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v5, p0, Landroid/widget/AbsListView$6;->val$motionPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->isHeaderOrFooter(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v5, p0, Landroid/widget/AbsListView$6;->val$motionPosition:I

    #calls: Landroid/widget/AbsListView;->isItemCheckable(I)Z
    invoke-static {v4, v5}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mInCheckRegion:Z
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mLastActionUpX:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mLastActionUpX:I
    invoke-static {v4}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_2

    .line 4003
    iget-object v4, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v5, p0, Landroid/widget/AbsListView$6;->val$motionPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v7, p0, Landroid/widget/AbsListView$6;->val$motionPosition:I

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v5, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 4014
    .end local v0           #checkRegion:Landroid/graphics/Rect;
    .end local v1           #id:J
    :cond_1
    :goto_0
    return-void

    .line 4004
    .restart local v0       #checkRegion:Landroid/graphics/Rect;
    .restart local v1       #id:J
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    iget v4, p0, Landroid/widget/AbsListView$6;->val$motionPosition:I

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->isHeaderOrFooter(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4011
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$6;->val$performClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {v3}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_0
.end method
