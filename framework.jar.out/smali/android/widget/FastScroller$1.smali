.class Landroid/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 143
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v4, v4, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mIsAttached:Z

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-virtual {v4}, Landroid/widget/FastScroller;->beginDrag()V

    .line 146
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v4, v4, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getVerticalBarPaddingTop()I

    move-result v2

    .line 147
    .local v2, topOffset:I
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v4, v4, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getVerticalBarPaddingBottom()I

    move-result v0

    .line 148
    .local v0, bottomOffset:I
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v4, v4, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 150
    .local v3, viewHeight:I
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v4, v4, Landroid/widget/FastScroller;->mInitialTouchY:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v5, v5, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v4, v5

    add-int/lit8 v1, v4, 0xa

    .line 151
    .local v1, newThumbY:I
    if-ge v1, v2, :cond_2

    .line 152
    move v1, v2

    .line 156
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iput v1, v4, Landroid/widget/FastScroller;->mThumbY:I

    .line 157
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v5, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v5, v5, Landroid/widget/FastScroller;->mThumbY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v6, v6, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v6, v3, v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 160
    .end local v0           #bottomOffset:I
    .end local v1           #newThumbY:I
    .end local v2           #topOffset:I
    .end local v3           #viewHeight:I
    :cond_1
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/FastScroller;->mPendingDrag:Z

    .line 161
    return-void

    .line 153
    .restart local v0       #bottomOffset:I
    .restart local v1       #newThumbY:I
    .restart local v2       #topOffset:I
    .restart local v3       #viewHeight:I
    :cond_2
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v4, v4, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v1

    sub-int v5, v3, v0

    if-le v4, v5, :cond_0

    .line 154
    iget-object v4, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget v4, v4, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v4, v3, v4

    sub-int v1, v4, v0

    goto :goto_0
.end method
