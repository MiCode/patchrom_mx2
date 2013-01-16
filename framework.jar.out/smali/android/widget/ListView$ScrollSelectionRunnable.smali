.class final Landroid/widget/ListView$ScrollSelectionRunnable;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollSelectionRunnable"
.end annotation


# static fields
.field private static final SCROLL_DURATION:I = 0x19

.field private static final SCROLL_SPEED:I = 0x23


# instance fields
.field private mStart:Z

.field private mUpSelect:Z

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;)V
    .locals 1
    .parameter

    .prologue
    .line 4340
    iput-object p1, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 4343
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 4380
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    .line 4381
    iget-object v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4382
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 4376
    iget-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 4355
    const/16 v1, 0x23

    .line 4357
    .local v1, speed:I
    iget-boolean v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    if-eqz v2, :cond_1

    .line 4358
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    .line 4359
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const/4 v3, 0x1

    #calls: Landroid/widget/ListView;->findCandidateScrollSelection(Z)I
    invoke-static {v2, v3}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;Z)I

    move-result v0

    .line 4360
    .local v0, candidatePosition:I
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastUpSelectPosition:I
    invoke-static {v2}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 4361
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastUpSelectPosition:I
    invoke-static {v3}, Landroid/widget/ListView;->access$300(Landroid/widget/ListView;)I

    move-result v3

    #calls: Landroid/widget/ListView;->upSelect(II)V
    invoke-static {v2, v3, v0}, Landroid/widget/ListView;->access$400(Landroid/widget/ListView;II)V

    .line 4372
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const-wide/16 v3, 0x19

    invoke-virtual {v2, p0, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4373
    return-void

    .line 4364
    .end local v0           #candidatePosition:I
    :cond_1
    mul-int/lit8 v1, v1, -0x1

    .line 4365
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/ListView;->trackMotionScroll(II)Z

    .line 4366
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    const/4 v3, 0x0

    #calls: Landroid/widget/ListView;->findCandidateScrollSelection(Z)I
    invoke-static {v2, v3}, Landroid/widget/ListView;->access$200(Landroid/widget/ListView;Z)I

    move-result v0

    .line 4367
    .restart local v0       #candidatePosition:I
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastDownSelectPosition:I
    invoke-static {v2}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 4368
    iget-object v2, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    iget-object v3, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    #getter for: Landroid/widget/ListView;->mLastDownSelectPosition:I
    invoke-static {v3}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)I

    move-result v3

    #calls: Landroid/widget/ListView;->downSelect(II)V
    invoke-static {v2, v3, v0}, Landroid/widget/ListView;->access$600(Landroid/widget/ListView;II)V

    goto :goto_0
.end method

.method public startScrollSelecte(Z)V
    .locals 1
    .parameter "up"

    .prologue
    .line 4348
    iput-boolean p1, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 4349
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->mStart:Z

    .line 4350
    iget-object v0, p0, Landroid/widget/ListView$ScrollSelectionRunnable;->this$0:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 4351
    return-void
.end method
